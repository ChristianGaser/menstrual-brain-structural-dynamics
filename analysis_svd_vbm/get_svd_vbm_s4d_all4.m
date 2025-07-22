function get_svd_vbm_s4d

% exclude Endometriose #8
% with smoothing splines 4d filter smoothing

n_data = 4; % combine all 4 data sets

% Display parameters
clim = [-0.1 0.1];
clip = [-0.01 0.01];

calc_svd = 1;
show_surf = 1;
show_slice = 1;
data_name = 'ER_LC_28_OC';

mainfolder = '/Volumes/UltraMax/Endometriose_Heller_Jena';
folders = {'ER_endometriose','LC_typical_cycle','28andMe_typical_cycle_sub-01','CH_contraceptives'};

% We have to exclude one file with movement artefacts from ER_endometriose
exclude = 8;
mask = 'brainmask_GMverytight.nii';

if calc_svd
  all_files = [];
  scanner = [];
  for i = 1:n_data
    file  = spm_select('FPListRec',fullfile(mainfolder,folders{i}),'^s6s4d_wp1r');
    if isempty(file)
      file  = spm_select('FPListRec',fullfile(mainfolder,folders{i}),'^s6s4d_mwp1r');
    end
    scanner = [scanner; i*ones(size(file,1),1)];
    fprintf('Sample size %d: %d\n',i,size(file,1));
    all_files = char(all_files,file);
  end
  cat_stat_svd(all_files(2:end,:),mask,['s4d_verytight_' data_name '.nii'],[],exclude,scanner);

end

% Show surface mapping
if show_surf
  P1  = spm_select('FPList','./',['eigen.*.s4d_verytight_' data_name '.nii']);
  for i = 1:size(P1,1)
    clearvars -global H OV y x
    name = deblank(P1(i,:));
    cat_surf_results('disp',name);
    cat_surf_results('clim',clim);
    cat_surf_results('background',1);
    cat_surf_results('surface',2);
    cat_surf_results('texture',3);
    cat_surf_results('border',1);
    cat_surf_results('colorbar');
    cat_surf_results('clip',clip);
  
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
end

% Show slice overlay
if show_slice
  P1  = spm_select('FPList','./',['eigen.*.s4d_verytight_' data_name '.nii']);
  for i = 1:min(size(P1,1),3)
    name = deblank(P1(i,:));
    OV.name = name;
    OV.reference_image = char(cat_get_defaults('extopts.shootingT1'));
    OV.reference_range = [0.2 1.0];                        
    OV.opacity = Inf;                                      
    OV.cmap    = jet;       
    OV.range = clim;
    OV.clip = clip;
    OV.slices_str = char('-55:5:15');
    OV.transform = char('axial');
    OV.atlas = 'none';
    OV.min_extent = 100;
    OV.min_overlap = 1;
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
end
