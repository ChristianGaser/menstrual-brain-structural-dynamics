function get_svd_mesh_all4

n_data = 4; % combine all 4 data sets

% Display parameters
clim = [-0.1 0.1];
clip = [-0.01 0.01];

calc_svd = 1;
show_surf = 1;
data_name = 'ER_LC_28_OC';

mainfolder = '/Volumes/UltraMax/Endometriose_Heller_Jena';
folders = {'ER_endometriose','LC_typical_cycle','28andMe_typical_cycle_sub-01','CH_contraceptives'};

% We have to exclude one file with movement artefacts from ER_endometriose
exclude = 8;

% Combine all data and apply SVD
if calc_svd
  all_files = [];
  scanner = [];
  for i = 1:n_data
    file  = spm_select('FPListRec',fullfile(mainfolder,folders{i}),'^s8.mesh.*gii');
    scanner = [scanner; i*ones(size(file,1),1)];
    fprintf('Sample size %d: %d\n',i,size(file,1));
    all_files = char(all_files,file);
  end

  cat_stat_svd(all_files(2:end,:),[],['s8_' data_name '.gii'],[],exclude,scanner);

end

% Show surface mapping
if show_surf
  P1  = spm_select('FPList','./',['^eigen.*.' data_name '.gii']);
  for i = 1:min(size(P1,1),3)
    clearvars -global H OV y x
    name = deblank(P1(i,:));
    cat_surf_results('disp',name);
    cat_surf_results('clim',clim);
    cat_surf_results('background',1);
    cat_surf_results('surface',2);
    cat_surf_results('texture',3);
    cat_surf_results('border',1);
    fpart = struct('outdir','./','prefix','','suffix','');
    %cat_surf_results('print',fpart);
  
    % Clip eigenimages and save outputs in different folder
    cat_surf_results('clip',clip);
    cat_surf_results('atlas',1,50,1);
    fpart = struct('outdir','with_clipping','prefix','','suffix','');
    cat_surf_results('print',fpart);
  end
end