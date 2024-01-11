exp = 'Experiment1';

% arrays = {'cap','chest','glasses','earpiece'};
arrays = {'cap+','chest+','glasses+'};

noise = 'varySIR';

if strcmp(noise, 'varySIR')

folds = {'22','17','12'};

elseif strcmp(noise, 'varySNR')
    folds = {'16','11','6'};
end
files = {'1_passthrough',...
    '2_Proposed',...
    '4_MPDR',...
    '5_Oracle'};

Matcol = {'#D95319', '#77AC30', '#EDB120', '#0072BD'};
for iarray=1:length(arrays)
    for ifold=1:length(folds)
        for ifiles=1:length(files)
            PATH = fullfile(exp,...
                arrays{iarray},noise,...
                folds{ifold},files{ifiles});
            x = audioread(strcat(PATH,'.wav'));
            
            figure('Position', [400 400 700 150]);
            tl = tiledlayout(2,1,'TileSpacing','Compact','Padding','Compact');
            nexttile
            plot(x(:,1), 'Color', Matcol{iarray});
            t=text(0,max(x(:,1))-0.1,'L');
            t.FontSize = 16;
            
            set(gca,'visible','off')
            nexttile
            plot(x(:,2), 'Color', Matcol{iarray});
            t=text(0,max(x(:,2))-0.1,'R');
            t.FontSize = 16;
            set(gca,'visible','off')
            
            exportgraphics(tl,strcat(PATH,'.png'))
            close all
        end
    end
end

