function get_svd_mesh

mainfolder = '/Volumes/UltraMax/Endometriose_Heller_Jena';
folders = {'28andMe_typical_cycle_sub-01','CH2_typical_cycle','CH_contraceptives','ER_endometriose','LC_typical_cycle','TJ_male'};

% We have to exclude one file with movement artefacts from ER_endometriose
exclude = {[],[],[],[8],[21],[]};

% Apply SVD for each data set
for i = 1:numel(folders)
  file  = spm_select('FPListRec',fullfile(mainfolder,folders{i}),'^s8.mesh.*gii');
  name = folders{i};
  cat_stat_svd(file,[],['s8_' name '.gii'],[],exclude{i});
end

% Show surface mapping
P1  = spm_select('FPList','./','^eigen.*.gii');
for i = 1:size(P1,1)
  name = deblank(P1(i,:));
  cat_surf_results('disp',name);
  cat_surf_results('clim',[-0.02 0.02]);
  cat_surf_results('background',1);
  cat_surf_results('surface',2);
  cat_surf_results('texture',3);
  cat_surf_results('border',1);
  fpart = struct('outdir','./','prefix','','suffix','');
  cat_surf_results('print',fpart);

  % Clip eigenimages and save outputs in different folder
  cat_surf_results('clip',[-0.005 0.005]);
  cat_surf_results('atlas',1);
  fpart = struct('outdir','with_clipping','prefix','','suffix','');
  cat_surf_results('print',fpart);
end
