% experiment_config.m

% This script sets all the configuration parameters required to run the
% selected test bench. You will need to understand the concept of function
% handles. See https://uk.mathworks.com/help/matlab/function-handles.html

%% initial setup of the required paths (probably can be left as-is)
%
% By default experiments are designed to be run on one of the SAP group
% servers. The variables path_to_data_rw and path_to_databases simplify this
% process. If you need to run an experiment on your local machine but later
% intend to run it on a server you should
% 1. open the file '~setup_local_paths.m'
% 2. edit it to specify the required local paths
% 3. save the file as 'setup_local_paths.m'
% !!! --- DO NOT COMMIT 'setup_local_paths.m' to svn --- !!!
%
% Alternatively, if you ONLY need to run locally and don't care about
% repeatability you may change the paths below to point directly to your
% desired folders

% exp_id is an automatically generated variable based on the current
% working directory and the time that 'run_script.m' was exexcuted. This
% makes relating data back to the experiment that created it easy and
% avoids overwriting data from previous runs

% define the root directories for different types of data generated in this experiment
final_data_root = fullfile(path_to_data_rw,'Illinois_test_bench','final_data',WEARABLE,exp_id); % enhanced audio will be saved here
saved_data_root = fullfile(path_to_data_rw,'Illinois_test_bench','saved_data',WEARABLE,exp_id); % supplementary/intermediate results will be saved here
temp_data_root = fullfile(path_to_data_rw,'Illinois_test_bench','temp_data',WEARABLE,exp_id);   % temporary files will be saved here - can be set empty if you really don't care about them - normally empty but may be useful for debugging
metrics_root = fullfile(path_to_data_rw,'Illinois_test_bench','metrics',WEARABLE,exp_id);       % metrics calculated from the enhanced audio will be saved here

%%  select the test scenarios
% The test benches expect data to have been generated using the
% 'scenario_generator'. Therefore, only the path to the root of the required
% set of scenarios is required.

scenario_data_root = fullfile(path_to_data_rw,'Illinois_test_bench','scenarios',...
    WEARABLE,'20201222_ed_02_20210204_114156_illinois_interferer_dialogue');

% within scenario_data_root there should be a file called
% per_trial_input_conditions.csv which will be read in as a table
% where the first row specifies the variable names and each subsequent row
% represents an independent trial
%
% there can be many variables which are metadata or which may be used by a
% particular test bench as oracle/side information. run_script.m does not
% need to know about these
%
% the standard syntax for a test bench requires the path to the noisy
% microphone signals:
mixed_fieldname = 'mixed';

% and the path to the array rotation (can be empty static head is assumed)
array_rotation_fieldname = 'array_rot';

% and the path to the listener characteristics file (can be empty)
listener_characteristics_fieldname = '';

%% define the metrics to be calculated
% specify cell array of strings
% special cases:
%  make -1 to skip the metrics
%  make empty to compute all known metrics
% N.B. it is also possible to compute metrics later by providing the
% required information directly to the function compute_metrics_v2

%required_metrics=-1;
required_metrics={'mbstoi','pesq','stoi','fwsegsnr'};

% variable within per_trial_input_conditions.csv which specifies the
% reference signal for intrusive metrics
%desired_fieldname = 'target_early';
desired_fieldname = 'target';
%desired_fieldname = 'desired'; %using our generator we don't get an early target




%%  select the test bench to use
% Different test benches provide different processing structures and
% therefore have different configuration options. However, their input and
% output arguments are the same. If an existing test bench does not meet
% your needs you should write a new one. Saving it in the same folder as
% run_script.m is the simplest way to
test_bench_fcn = @tb_20170420_ahm_01_binaural_bf_comparison;
%
% parameters which can or must be specified from now on may change
% depending on choice of test bench above

%% test bench configuration
% shared processing options
bf_params.fs = 20000;
circ_az = deg2rad([0:15:(360-15)].');

% loop over beamformers to test
for ibf = 1:5 % 5
    switch ibf
        case 1
            % passthrough stays the same: signals as heard in the ears
            tb_config(ibf).bf_fcn = @bf_20190122_ahm_01_passthrough;
            tb_config(ibf).bf_params = bf_params;
            tb_config(ibf).tags.bf_name = {'passthrough'};
        case 2
            % proposed only uses the 4 microphones!
%             tb_config(ibf).bf_fcn = @mvdr_20190128_01_binaural_steered_oracle_circiso_sensor_pw;
            tb_config(ibf).bf_fcn = @mvdr_20210204_ed_01_GHOST_proposed;
            tb_config(ibf).bf_params = bf_params;
            tb_config(ibf).bf_params.circ_az = circ_az;
            tb_config(ibf).bf_params.max_planewave_to_circiso_pow_ratio = inf;
            tb_config(ibf).tags.bf_name = {'Proposed'};
            
        case 3
            % isotropic uses the 4 microphones only!
%             tb_config(ibf).bf_fcn = @mvdr_20181207_01_binaural_steered_oracle_circiso;
            tb_config(ibf).bf_fcn = @mvdr_20210204_ed_01_GHOST_isotropic;
            tb_config(ibf).bf_params = bf_params;
            tb_config(ibf).bf_params.circ_az = circ_az;
            %             tb_config(ibf).bf_params.max_planewave_to_circiso_pow_ratio = inf;
            tb_config(ibf).tags.bf_name = {'Isotropic Noise'};
            
        case 4
            % MPDR uses the 4 microphones only!
%             tb_config(ibf).bf_fcn = @mpdr_20190425_01_binaural_steered_oracle_scm_online;
            tb_config(ibf).bf_fcn = @mpdr_20210204_ed_01_GHOST_MPDR;                        
            tb_config(ibf).bf_params = bf_params;
            tb_config(ibf).bf_params.circ_az = circ_az;
            %             tb_config(ibf).bf_params.max_planewave_to_circiso_pow_ratio = inf;
            tb_config(ibf).tags.bf_name = {'MPDR'};
            
        case 5
            % oracle uses only 4 microphones!
%             tb_config(ibf).bf_fcn = @mvdr_20190124_01_binaural_steered_oracle_online_ncm;
            tb_config(ibf).bf_fcn = @mvdr_20210204_ed_01_GHOST_oracle;            
            tb_config(ibf).bf_params = bf_params;
            tb_config(ibf).bf_params.circ_az = circ_az;
            %             tb_config(ibf).bf_params.max_planewave_to_circiso_pow_ratio = inf;
            tb_config(ibf).tags.bf_name = {'Oracle'};
            %         case 6
            %             tb_config(ibf).bf_fcn = @mvdr_20200305_01_fastmin_binaural_etc;
            %             tb_config(ibf).bf_params = bf_params;
            %             tb_config(ibf).bf_params.circ_az = circ_az;
            %             tb_config(ibf).bf_params.max_planewave_to_circiso_pow_ratio = inf;
            %             tb_config(ibf).tags.bf_name = {'bin_fastmin_circiso_etc'};
    end
end

%% explicit declaration of required oracle data
% we use a cell array of defined strings to indicate which data from the
% table is required on a per trial basis
required_oracle_data_from_table = {...
    'target_angle_inc_deg'...             % original doa inclination
    ,'target_angle_az_deg'...              % original doa azimuth
    ,'scaled_speech' ...
    };
%for relativee paths in table to be useful, also need the root
oracle_data.scenario_data_root = scenario_data_root;

% oracle data relating to microphone elobes_mic_array definition

switch WEARABLE
    % CAP
    case 'accessory_cap_ALL_in_ear_1241068'
        oracle_data.ema_fcn = @()Sampled_20210106_Illinois_accessory_cap_in_ear_1241068();
        
        % CHEST/SHOULDER
    case 'body_mannequin_Chest_Shoulder_in_ear_1259410'
        oracle_data.ema_fcn = @()Sampled_20210106_Illinois_body_mannequin_Chest_in_ear_1241068();
        
        % GLASSES
    case 'body_mannequin_Glasses_in_ear_1256910'
        oracle_data.ema_fcn = @()Sampled_20210118_Illinois_body_mannequin_Glasses_in_ear_1256910();
        
        % EARPIECE
    case 'body_mannequin_Earpiece_in_ear_'
        oracle_data.ema_fcn = @()Sampled_20210118_Illinois_body_mannequin_Earpiece_in_ear();
    otherwise
        error('no sampled array')
end

% fprintf(oracle_data.ema_fcn)
% oracle_data.ema_fcn = @()Sampled_20201222_Illinois_earpiece_mannequin_earpiece();
% oracle_data.ema_fcn = @()Sampled_20210106_Illinois_accessory_heaphones_all;