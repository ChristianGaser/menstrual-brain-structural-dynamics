function get_svd_vbm_s4d

mainfolder = '/Volumes/UltraMax/Endometriose_Heller_Jena';
folders = {'28andMe_typical_cycle_sub-01','CH2_typical_cycle','CH_contraceptives','ER_endometriose','LC_typical_cycle','TJ_male'};

% We have to exclude one file with movement artefacts from ER_endometriose
exclude = {[],[],[],[8],[],[]};
mask = 'brainmask_GMverytight.nii';

for i = 1:numel(folders)
  file  = spm_select('FPListRec',fullfile(mainfolder,folders{i}),'^s6s4d_wp1r');
  if isempty(file)
    file  = spm_select('FPListRec',fullfile(mainfolder,folders{i}),'^s6s4d_mwp1r');
  end
  name = folders{i};
  cat_stat_svd(file,mask,['s4d_verytight_' name '.nii'],[],exclude{i});
end

% Show surface mapping
P1  = spm_select('FPList','./','eigen.*.s4d_verytight.*.nii');
for i = 1:size(P1,1)
  clearvars -global H OV y x
  name = deblank(P1(i,:));
  cat_surf_results('disp',name);
  cat_surf_results('clim',[-0.05 0.05]);
  cat_surf_results('background',1);
  cat_surf_results('surface',2);
  cat_surf_results('texture',3);
  cat_surf_results('border',1);
  cat_surf_results('colorbar');
  cat_surf_results('clip',[-0.005 0.005]);
  fpart = struct('outdir','with_clipping_axial','prefix','','suffix','');
  cat_surf_results('ov',struct('atlas','cat12_neuromorphometrics','slices_str','-55:5:15','xy',[3 5],'transform','axial'))

  cat_surf_results('print',fpart);

  fpart = struct('outdir','with_clipping_sagittal','prefix','','suffix','');
  cat_surf_results('ov',struct('atlas','cat12_neuromorphometrics','slices_str','-10','xy',[1 1],'transform','sagittal'))
  cat_surf_results('print',fpart);

  fpart = struct('outdir','with_clipping_coronal','prefix','','suffix','');
  cat_surf_results('ov',struct('atlas','cat12_neuromorphometrics','slices_str','-20','xy',[1 1],'transform','coronal'))
  cat_surf_results('print',fpart);

end

% Show slice overlay
P1  = spm_select('FPList','./','eigen.*.s4d_verytight.*.nii')
for i = 1:size(P1,1)
  name = deblank(P1(i,:));
  OV.name = name;
  OV.reference_image = char(cat_get_defaults('extopts.shootingT1'));
  OV.reference_range = [0.2 1.0];                        
  OV.opacity = Inf;                                      
  OV.cmap    = jet;       
  OV.range = [-0.05 0.05];
  OV.clip = [-0.005 0.005];
  OV.slices_str = char('-55:5:15');
  OV.transform = char('axial');
  OV.atlas = 'none';
  OV.labels.format = '%3.1f';
  OV.overview = [];
  OV.save = 'png';
  OV.name_subfolder = 1;
  OV.FS = 0.08;
  OV.xy = [3 5];
  OV.cbar = [];
  OV.bkg_col = [1 1 1];
  OV.atlas = 'cat12_neuromorphometrics';
  
  cat_vol_slice_overlay(OV)
end
