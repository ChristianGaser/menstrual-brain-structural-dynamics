%-----------------------------------------------------------------------
% Job saved on 19-Dec-2024 16:48:48 by cfg_util (rev $Rev: 7345 $)
% spm SPM - SPM12 (7771)
% cfg_basicio BasicIO - Unknown
%-----------------------------------------------------------------------

cov = spm_load('/Volumes/UltraMax/Endometriose_Heller_Jena/tables/ER_LC_28_OC_E2_P4_E2P4Ratio.txt');
names = {'normE2','normP4','normE2P4Ratio'};

for i = 1:3
matlabbatch{1}.spm.tools.cat.factorial_design.dir = {['/Volumes/UltraMax/Endometriose_Heller_Jena/analysis_vbm/' names{i}]};
matlabbatch{1}.spm.tools.cat.factorial_design.des.fd.fact.name = 'subjects';
matlabbatch{1}.spm.tools.cat.factorial_design.des.fd.fact.levels = 4;
matlabbatch{1}.spm.tools.cat.factorial_design.des.fd.fact.dept = 0;
matlabbatch{1}.spm.tools.cat.factorial_design.des.fd.fact.variance = 1;
matlabbatch{1}.spm.tools.cat.factorial_design.des.fd.fact.gmsca = 0;
matlabbatch{1}.spm.tools.cat.factorial_design.des.fd.fact.ancova = 0;
matlabbatch{1}.spm.tools.cat.factorial_design.des.fd.icell(1).levels = 1;
%%
matlabbatch{1}.spm.tools.cat.factorial_design.des.fd.icell(1).scans = {
                                                                       '/Volumes/UltraMax/Endometriose_Heller_Jena/ER_endometriose/t1w/mri/s6s4d_wp1r20230612_065400_t1w.nii,1'
                                                                       '/Volumes/UltraMax/Endometriose_Heller_Jena/ER_endometriose/t1w/mri/s6s4d_wp1r20230613_070500_t1w.nii,1'
                                                                       '/Volumes/UltraMax/Endometriose_Heller_Jena/ER_endometriose/t1w/mri/s6s4d_wp1r20230614_071000_t1w.nii,1'
                                                                       '/Volumes/UltraMax/Endometriose_Heller_Jena/ER_endometriose/t1w/mri/s6s4d_wp1r20230615_065700_t1w.nii,1'
                                                                       '/Volumes/UltraMax/Endometriose_Heller_Jena/ER_endometriose/t1w/mri/s6s4d_wp1r20230616_070200_t1w.nii,1'
                                                                       '/Volumes/UltraMax/Endometriose_Heller_Jena/ER_endometriose/t1w/mri/s6s4d_wp1r20230619_071000_t1w.nii,1'
                                                                       '/Volumes/UltraMax/Endometriose_Heller_Jena/ER_endometriose/t1w/mri/s6s4d_wp1r20230620_070400_t1w.nii,1'
                                                                       '/Volumes/UltraMax/Endometriose_Heller_Jena/ER_endometriose/t1w/mri/s6s4d_wp1r20230622_070100_t1w.nii,1'
                                                                       '/Volumes/UltraMax/Endometriose_Heller_Jena/ER_endometriose/t1w/mri/s6s4d_wp1r20230623_065700_t1w.nii,1'
                                                                       '/Volumes/UltraMax/Endometriose_Heller_Jena/ER_endometriose/t1w/mri/s6s4d_wp1r20230626_070600_t1w.nii,1'
                                                                       '/Volumes/UltraMax/Endometriose_Heller_Jena/ER_endometriose/t1w/mri/s6s4d_wp1r20230628_070900_t1w.nii,1'
                                                                       '/Volumes/UltraMax/Endometriose_Heller_Jena/ER_endometriose/t1w/mri/s6s4d_wp1r20230629_070000_t1w.nii,1'
                                                                       '/Volumes/UltraMax/Endometriose_Heller_Jena/ER_endometriose/t1w/mri/s6s4d_wp1r20230630_070100_t1w.nii,1'
                                                                       '/Volumes/UltraMax/Endometriose_Heller_Jena/ER_endometriose/t1w/mri/s6s4d_wp1r20230701_070500_t1w.nii,1'
                                                                       '/Volumes/UltraMax/Endometriose_Heller_Jena/ER_endometriose/t1w/mri/s6s4d_wp1r20230703_070500_t1w.nii,1'
                                                                       '/Volumes/UltraMax/Endometriose_Heller_Jena/ER_endometriose/t1w/mri/s6s4d_wp1r20230704_070400_t1w.nii,1'
                                                                       '/Volumes/UltraMax/Endometriose_Heller_Jena/ER_endometriose/t1w/mri/s6s4d_wp1r20230705_070000_t1w.nii,1'
                                                                       '/Volumes/UltraMax/Endometriose_Heller_Jena/ER_endometriose/t1w/mri/s6s4d_wp1r20230706_070200_t1w.nii,1'
                                                                       '/Volumes/UltraMax/Endometriose_Heller_Jena/ER_endometriose/t1w/mri/s6s4d_wp1r20230707_070500_t1w.nii,1'
                                                                       '/Volumes/UltraMax/Endometriose_Heller_Jena/ER_endometriose/t1w/mri/s6s4d_wp1r20230710_070300_t1w.nii,1'
                                                                       '/Volumes/UltraMax/Endometriose_Heller_Jena/ER_endometriose/t1w/mri/s6s4d_wp1r20230711_070200_t1w.nii,1'
                                                                       '/Volumes/UltraMax/Endometriose_Heller_Jena/ER_endometriose/t1w/mri/s6s4d_wp1r20230712_070200_t1w.nii,1'
                                                                       '/Volumes/UltraMax/Endometriose_Heller_Jena/ER_endometriose/t1w/mri/s6s4d_wp1r20230713_070700_t1w.nii,1'
                                                                       '/Volumes/UltraMax/Endometriose_Heller_Jena/ER_endometriose/t1w/mri/s6s4d_wp1r20230714_070400_t1w.nii,1'
                                                                       };
%%
matlabbatch{1}.spm.tools.cat.factorial_design.des.fd.icell(2).levels = 2;
%%
matlabbatch{1}.spm.tools.cat.factorial_design.des.fd.icell(2).scans = {
                                                                       '/Volumes/UltraMax/Endometriose_Heller_Jena/LC_typical_cycle/t1w/mri/s6s4d_wp1r20230109_073900_t1w.nii,1'
                                                                       '/Volumes/UltraMax/Endometriose_Heller_Jena/LC_typical_cycle/t1w/mri/s6s4d_wp1r20230110_075100_t1w.nii,1'
                                                                       '/Volumes/UltraMax/Endometriose_Heller_Jena/LC_typical_cycle/t1w/mri/s6s4d_wp1r20230111_073300_t1w.nii,1'
                                                                       '/Volumes/UltraMax/Endometriose_Heller_Jena/LC_typical_cycle/t1w/mri/s6s4d_wp1r20230112_074600_t1w.nii,1'
                                                                       '/Volumes/UltraMax/Endometriose_Heller_Jena/LC_typical_cycle/t1w/mri/s6s4d_wp1r20230113_074400_t1w.nii,1'
                                                                       '/Volumes/UltraMax/Endometriose_Heller_Jena/LC_typical_cycle/t1w/mri/s6s4d_wp1r20230116_074400_t1w.nii,1'
                                                                       '/Volumes/UltraMax/Endometriose_Heller_Jena/LC_typical_cycle/t1w/mri/s6s4d_wp1r20230117_075300_t1w.nii,1'
                                                                       '/Volumes/UltraMax/Endometriose_Heller_Jena/LC_typical_cycle/t1w/mri/s6s4d_wp1r20230118_073600_t1w.nii,1'
                                                                       '/Volumes/UltraMax/Endometriose_Heller_Jena/LC_typical_cycle/t1w/mri/s6s4d_wp1r20230119_074500_t1w.nii,1'
                                                                       '/Volumes/UltraMax/Endometriose_Heller_Jena/LC_typical_cycle/t1w/mri/s6s4d_wp1r20230120_074700_t1w.nii,1'
                                                                       '/Volumes/UltraMax/Endometriose_Heller_Jena/LC_typical_cycle/t1w/mri/s6s4d_wp1r20230123_075000_t1w.nii,1'
                                                                       '/Volumes/UltraMax/Endometriose_Heller_Jena/LC_typical_cycle/t1w/mri/s6s4d_wp1r20230124_075100_t1w.nii,1'
                                                                       '/Volumes/UltraMax/Endometriose_Heller_Jena/LC_typical_cycle/t1w/mri/s6s4d_wp1r20230125_074400_t1w.nii,1'
                                                                       '/Volumes/UltraMax/Endometriose_Heller_Jena/LC_typical_cycle/t1w/mri/s6s4d_wp1r20230126_075100_t1w.nii,1'
                                                                       '/Volumes/UltraMax/Endometriose_Heller_Jena/LC_typical_cycle/t1w/mri/s6s4d_wp1r20230127_074000_t1w.nii,1'
                                                                       '/Volumes/UltraMax/Endometriose_Heller_Jena/LC_typical_cycle/t1w/mri/s6s4d_wp1r20230201_074400_t1w.nii,1'
                                                                       '/Volumes/UltraMax/Endometriose_Heller_Jena/LC_typical_cycle/t1w/mri/s6s4d_wp1r20230202_074100_t1w.nii,1'
                                                                       '/Volumes/UltraMax/Endometriose_Heller_Jena/LC_typical_cycle/t1w/mri/s6s4d_wp1r20230203_074700_t1w.nii,1'
                                                                       '/Volumes/UltraMax/Endometriose_Heller_Jena/LC_typical_cycle/t1w/mri/s6s4d_wp1r20230206_073600_t1w.nii,1'
                                                                       '/Volumes/UltraMax/Endometriose_Heller_Jena/LC_typical_cycle/t1w/mri/s6s4d_wp1r20230207_073900_t1w.nii,1'
                                                                       '/Volumes/UltraMax/Endometriose_Heller_Jena/LC_typical_cycle/t1w/mri/s6s4d_wp1r20230208_074800_t1w.nii,1'
                                                                       '/Volumes/UltraMax/Endometriose_Heller_Jena/LC_typical_cycle/t1w/mri/s6s4d_wp1r20230209_074600_t1w.nii,1'
                                                                       '/Volumes/UltraMax/Endometriose_Heller_Jena/LC_typical_cycle/t1w/mri/s6s4d_wp1r20230210_074700_t1w.nii,1'
                                                                       '/Volumes/UltraMax/Endometriose_Heller_Jena/LC_typical_cycle/t1w/mri/s6s4d_wp1r20230211_073500_t1w.nii,1'
                                                                       '/Volumes/UltraMax/Endometriose_Heller_Jena/LC_typical_cycle/t1w/mri/s6s4d_wp1r20230212_073400_t1w.nii,1'
                                                                       };
%%
matlabbatch{1}.spm.tools.cat.factorial_design.des.fd.icell(3).levels = 3;
%%
matlabbatch{1}.spm.tools.cat.factorial_design.des.fd.icell(3).scans = {
                                                                       '/Volumes/UltraMax/Endometriose_Heller_Jena/28andMe_typical_cycle_sub-01/ses-01/anat/s6s4d_wp1rsub-01_ses-01_T1w.nii,1'
                                                                       '/Volumes/UltraMax/Endometriose_Heller_Jena/28andMe_typical_cycle_sub-01/ses-02/anat/s6s4d_wp1rsub-01_ses-02_T1w.nii,1'
                                                                       '/Volumes/UltraMax/Endometriose_Heller_Jena/28andMe_typical_cycle_sub-01/ses-03/anat/s6s4d_wp1rsub-01_ses-03_T1w.nii,1'
                                                                       '/Volumes/UltraMax/Endometriose_Heller_Jena/28andMe_typical_cycle_sub-01/ses-04/anat/s6s4d_wp1rsub-01_ses-04_T1w.nii,1'
                                                                       '/Volumes/UltraMax/Endometriose_Heller_Jena/28andMe_typical_cycle_sub-01/ses-05/anat/s6s4d_wp1rsub-01_ses-05_T1w.nii,1'
                                                                       '/Volumes/UltraMax/Endometriose_Heller_Jena/28andMe_typical_cycle_sub-01/ses-06/anat/s6s4d_wp1rsub-01_ses-06_T1w.nii,1'
                                                                       '/Volumes/UltraMax/Endometriose_Heller_Jena/28andMe_typical_cycle_sub-01/ses-07/anat/s6s4d_wp1rsub-01_ses-07_T1w.nii,1'
                                                                       '/Volumes/UltraMax/Endometriose_Heller_Jena/28andMe_typical_cycle_sub-01/ses-08/anat/s6s4d_wp1rsub-01_ses-08_T1w.nii,1'
                                                                       '/Volumes/UltraMax/Endometriose_Heller_Jena/28andMe_typical_cycle_sub-01/ses-09/anat/s6s4d_wp1rsub-01_ses-09_T1w.nii,1'
                                                                       '/Volumes/UltraMax/Endometriose_Heller_Jena/28andMe_typical_cycle_sub-01/ses-10/anat/s6s4d_wp1rsub-01_ses-10_T1w.nii,1'
                                                                       '/Volumes/UltraMax/Endometriose_Heller_Jena/28andMe_typical_cycle_sub-01/ses-11/anat/s6s4d_wp1rsub-01_ses-11_T1w.nii,1'
                                                                       '/Volumes/UltraMax/Endometriose_Heller_Jena/28andMe_typical_cycle_sub-01/ses-12/anat/s6s4d_wp1rsub-01_ses-12_T1w.nii,1'
                                                                       '/Volumes/UltraMax/Endometriose_Heller_Jena/28andMe_typical_cycle_sub-01/ses-13/anat/s6s4d_wp1rsub-01_ses-13_T1w.nii,1'
                                                                       '/Volumes/UltraMax/Endometriose_Heller_Jena/28andMe_typical_cycle_sub-01/ses-14/anat/s6s4d_wp1rsub-01_ses-14_T1w.nii,1'
                                                                       '/Volumes/UltraMax/Endometriose_Heller_Jena/28andMe_typical_cycle_sub-01/ses-15/anat/s6s4d_wp1rsub-01_ses-15_T1w.nii,1'
                                                                       '/Volumes/UltraMax/Endometriose_Heller_Jena/28andMe_typical_cycle_sub-01/ses-16/anat/s6s4d_wp1rsub-01_ses-16_T1w.nii,1'
                                                                       '/Volumes/UltraMax/Endometriose_Heller_Jena/28andMe_typical_cycle_sub-01/ses-17/anat/s6s4d_wp1rsub-01_ses-17_T1w.nii,1'
                                                                       '/Volumes/UltraMax/Endometriose_Heller_Jena/28andMe_typical_cycle_sub-01/ses-18/anat/s6s4d_wp1rsub-01_ses-18_T1w.nii,1'
                                                                       '/Volumes/UltraMax/Endometriose_Heller_Jena/28andMe_typical_cycle_sub-01/ses-19/anat/s6s4d_wp1rsub-01_ses-19_T1w.nii,1'
                                                                       '/Volumes/UltraMax/Endometriose_Heller_Jena/28andMe_typical_cycle_sub-01/ses-20/anat/s6s4d_wp1rsub-01_ses-20_T1w.nii,1'
                                                                       '/Volumes/UltraMax/Endometriose_Heller_Jena/28andMe_typical_cycle_sub-01/ses-21/anat/s6s4d_wp1rsub-01_ses-21_T1w.nii,1'
                                                                       '/Volumes/UltraMax/Endometriose_Heller_Jena/28andMe_typical_cycle_sub-01/ses-22/anat/s6s4d_wp1rsub-01_ses-22_T1w.nii,1'
                                                                       '/Volumes/UltraMax/Endometriose_Heller_Jena/28andMe_typical_cycle_sub-01/ses-23/anat/s6s4d_wp1rsub-01_ses-23_T1w.nii,1'
                                                                       '/Volumes/UltraMax/Endometriose_Heller_Jena/28andMe_typical_cycle_sub-01/ses-24/anat/s6s4d_wp1rsub-01_ses-24_T1w.nii,1'
                                                                       '/Volumes/UltraMax/Endometriose_Heller_Jena/28andMe_typical_cycle_sub-01/ses-25/anat/s6s4d_wp1rsub-01_ses-25_T1w.nii,1'
                                                                       '/Volumes/UltraMax/Endometriose_Heller_Jena/28andMe_typical_cycle_sub-01/ses-26/anat/s6s4d_wp1rsub-01_ses-26_T1w.nii,1'
                                                                       '/Volumes/UltraMax/Endometriose_Heller_Jena/28andMe_typical_cycle_sub-01/ses-27/anat/s6s4d_wp1rsub-01_ses-27_T1w.nii,1'
                                                                       '/Volumes/UltraMax/Endometriose_Heller_Jena/28andMe_typical_cycle_sub-01/ses-28/anat/s6s4d_wp1rsub-01_ses-28_T1w.nii,1'
                                                                       '/Volumes/UltraMax/Endometriose_Heller_Jena/28andMe_typical_cycle_sub-01/ses-29/anat/s6s4d_wp1rsub-01_ses-29_T1w.nii,1'
                                                                       '/Volumes/UltraMax/Endometriose_Heller_Jena/28andMe_typical_cycle_sub-01/ses-30/anat/s6s4d_wp1rsub-01_ses-30_T1w.nii,1'
                                                                       };
%%
matlabbatch{1}.spm.tools.cat.factorial_design.des.fd.icell(4).levels = 4;
%%
matlabbatch{1}.spm.tools.cat.factorial_design.des.fd.icell(4).scans = {
                                                                       '/Volumes/UltraMax/Endometriose_Heller_Jena/CH_contraceptives/20230504-073000/mri/s6s4d_wp1rt1w.nii,1'
                                                                       '/Volumes/UltraMax/Endometriose_Heller_Jena/CH_contraceptives/20230505-073400/mri/s6s4d_wp1rt1w.nii,1'
                                                                       '/Volumes/UltraMax/Endometriose_Heller_Jena/CH_contraceptives/20230508-073200/mri/s6s4d_wp1rt1w.nii,1'
                                                                       '/Volumes/UltraMax/Endometriose_Heller_Jena/CH_contraceptives/20230509-073100/mri/s6s4d_wp1rt1w.nii,1'
                                                                       '/Volumes/UltraMax/Endometriose_Heller_Jena/CH_contraceptives/20230510-074800/mri/s6s4d_wp1rt1w.nii,1'
                                                                       '/Volumes/UltraMax/Endometriose_Heller_Jena/CH_contraceptives/20230511-073100/mri/s6s4d_wp1rt1w.nii,1'
                                                                       '/Volumes/UltraMax/Endometriose_Heller_Jena/CH_contraceptives/20230512-073500/mri/s6s4d_wp1rt1w.nii,1'
                                                                       '/Volumes/UltraMax/Endometriose_Heller_Jena/CH_contraceptives/20230516-073700/mri/s6s4d_wp1rt1w.nii,1'
                                                                       '/Volumes/UltraMax/Endometriose_Heller_Jena/CH_contraceptives/20230517-073200/mri/s6s4d_wp1rt1w.nii,1'
                                                                       '/Volumes/UltraMax/Endometriose_Heller_Jena/CH_contraceptives/20230518-072700/mri/s6s4d_wp1rt1w.nii,1'
                                                                       '/Volumes/UltraMax/Endometriose_Heller_Jena/CH_contraceptives/20230519-073500/mri/s6s4d_wp1rt1w.nii,1'
                                                                       '/Volumes/UltraMax/Endometriose_Heller_Jena/CH_contraceptives/20230520-074100/mri/s6s4d_wp1rt1w.nii,1'
                                                                       '/Volumes/UltraMax/Endometriose_Heller_Jena/CH_contraceptives/20230522-073100/mri/s6s4d_wp1rt1w.nii,1'
                                                                       '/Volumes/UltraMax/Endometriose_Heller_Jena/CH_contraceptives/20230523-073700/mri/s6s4d_wp1rt1w.nii,1'
                                                                       '/Volumes/UltraMax/Endometriose_Heller_Jena/CH_contraceptives/20230524-073100/mri/s6s4d_wp1rt1w.nii,1'
                                                                       '/Volumes/UltraMax/Endometriose_Heller_Jena/CH_contraceptives/20230525-074100/mri/s6s4d_wp1rt1w.nii,1'
                                                                       '/Volumes/UltraMax/Endometriose_Heller_Jena/CH_contraceptives/20230526-073300/mri/s6s4d_wp1rt1w.nii,1'
                                                                       '/Volumes/UltraMax/Endometriose_Heller_Jena/CH_contraceptives/20230529-073500/mri/s6s4d_wp1rt1w.nii,1'
                                                                       '/Volumes/UltraMax/Endometriose_Heller_Jena/CH_contraceptives/20230530-073300/mri/s6s4d_wp1rt1w.nii,1'
                                                                       '/Volumes/UltraMax/Endometriose_Heller_Jena/CH_contraceptives/20230531-073300/mri/s6s4d_wp1rt1w.nii,1'
                                                                       '/Volumes/UltraMax/Endometriose_Heller_Jena/CH_contraceptives/20230601-073400/mri/s6s4d_wp1rt1w.nii,1'
                                                                       '/Volumes/UltraMax/Endometriose_Heller_Jena/CH_contraceptives/20230602-074200/mri/s6s4d_wp1rt1w.nii,1'
                                                                       '/Volumes/UltraMax/Endometriose_Heller_Jena/CH_contraceptives/20230605-073300/mri/s6s4d_wp1rt1w.nii,1'
                                                                       '/Volumes/UltraMax/Endometriose_Heller_Jena/CH_contraceptives/20230606-073500/mri/s6s4d_wp1rt1w.nii,1'
                                                                       '/Volumes/UltraMax/Endometriose_Heller_Jena/CH_contraceptives/20230607-073100/mri/s6s4d_wp1rt1w.nii,1'
                                                                       };
%%
matlabbatch{1}.spm.tools.cat.factorial_design.des.fd.contrasts = 0;
matlabbatch{1}.spm.tools.cat.factorial_design.des.fd.voxel_cov.files = {''};
matlabbatch{1}.spm.tools.cat.factorial_design.des.fd.voxel_cov.iCFI = 1;
matlabbatch{1}.spm.tools.cat.factorial_design.des.fd.voxel_cov.iCC = 1;
matlabbatch{1}.spm.tools.cat.factorial_design.des.fd.voxel_cov.globals.g_omit = 1;
matlabbatch{1}.spm.tools.cat.factorial_design.des.fd.voxel_cov.consess = {};
matlabbatch{1}.spm.tools.cat.factorial_design.cov.c = cov(:,i);
%%
matlabbatch{1}.spm.tools.cat.factorial_design.cov.cname = names{i};
matlabbatch{1}.spm.tools.cat.factorial_design.cov.iCFI = 2;
matlabbatch{1}.spm.tools.cat.factorial_design.cov.iCC = 1;
matlabbatch{1}.spm.tools.cat.factorial_design.multi_cov = struct('files', {}, 'iCFI', {}, 'iCC', {});
matlabbatch{1}.spm.tools.cat.factorial_design.masking.tm.tma.athresh = 0.1;
matlabbatch{1}.spm.tools.cat.factorial_design.masking.im = 1;
matlabbatch{1}.spm.tools.cat.factorial_design.masking.em = {'/Volumes/UltraMax/Endometriose_Heller_Jena/analysis/brainmask_GMverytight.nii,1'};
matlabbatch{1}.spm.tools.cat.factorial_design.globals.g_omit = 1;
matlabbatch{1}.spm.tools.cat.factorial_design.check_SPM.check_SPM_zscore.do_check_zscore.use_unsmoothed_data = 1;
matlabbatch{1}.spm.tools.cat.factorial_design.check_SPM.check_SPM_zscore.do_check_zscore.adjust_data = 1;
matlabbatch{1}.spm.tools.cat.factorial_design.check_SPM.check_SPM_ortho = 1;

spm_jobman('run',matlabbatch)
end
