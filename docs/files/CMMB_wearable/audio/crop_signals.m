addpath(genpath('~/Documents/MATLAB/sap-voicebox'));

exp = 'Experiment1';

% folds = {'-5dBSIR','0dBSIR','5dBSIR','10dBSIR'};
folds = {'-5dBSNR','0dBSNR','5dBSNR'};
arrays = {'cap','chest','earpiece','glasses'};
files = {'1_passthrough',...
    '2_Proposed',...
    '4_MPDR',...
    '5_Oracle'};

for ifold=1:length(folds)
    for iarray=1:length(arrays)
        for ifiles=1:length(files)
            PATH = fullfile(exp,...
                folds{ifold},arrays{iarray},...
                files{ifiles});
            [x,fs] = v_readwav(strcat(PATH,'.wav'),'g');
            if size(x,1)>140000
                v_writewav(x(1:139000,:),fs,strcat(PATH,'.wav'),'g');
            end
        end
    end
end

