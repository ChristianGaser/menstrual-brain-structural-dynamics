# Menstrual Cycle Brain Dynamics

[![DOI](https://zenodo.org/badge/DOI/10.1038/s41593-025-02066-2.svg)](https://doi.org/10.1038/s41593-025-02066-2)
[![Nature Neuroscience](https://img.shields.io/badge/journal-Nature%20Neuroscience-blue.svg)](https://www.nature.com/neuro)
[![Open Neuro](https://img.shields.io/badge/journal-Open%20Neuro-blue.svg)](https://openneuro.org/datasets/ds006491/versions/1.0.1)

Code and workflows for:  
**"Hormonal milieu influences whole-brain structural dynamics across the menstrual cycle using dense sampling in multiple individuals"**  
Authors: Carina Heller, Daniel Güllmar, Lejla Colic, Laura Pritschet, Martin Gell, Nooshin Javaheripour, Feliberto de la Cruz, Philine Rojczyk, Carina J. Koeppel, Bart Larsen, Habib Ganjgahi, Frederik J. Lange, Ann-Christine Buck, Tim L. Jesgarzewsky, Robert Dahnke, Michael Kiehntopf, Emily G. Jacobs, Zora Kikinis, Martin Walter, Ilona Croy, Christian Gaser 

Published in: *Nature Neuroscience* (2025)

---

## Overview

This repository contains all essential code and analysis scripts to reproduce the main structural MRI analyses from our paper.  
The focus is on data-driven exploration of brain-wide structural dynamics using dense-sampled T1w MRI data across the menstrual cycle, with a special focus on endometriosis and hormonal fluctuations.

Analyses include:
- Whole-brain surface and VBM-based SVD/PCA
- Covariate modeling (e.g., hormonal levels)
- Statistical design with SPM12/CAT12
- Advanced visualization of eigenbrains and surface effects

## Repository Structure
- **analysis_glm/** — batch scripts for general linear modeling of cortical thickness and VBM data.
- **analysis_svd_mesh/** — utilities to compute singular value decomposition (SVD) on surface (mesh) data.
- **analysis_svd_vbm/** — scripts to run SVD on voxel-based morphometry images. Includes *brainmask_GMverytight.nii*.
- **cat_stat_svd.m** — core routine that performs SVD/PCA on a set of images.
- **cat_surf_results.m** — viewer for surface-based statistical maps.
- **cat_vol_img2mip.m** — create RGB maximum-intensity-projection ("glass brain") figures from volume data.
- **README.md** — documentation and usage notes.

## Dependencies
SPM12 and CAT12 installation is necessary to use this code.

## Data Access
Data for this project consists of longitudinal, dense-sampling MRI (T1-weighted) of female subjects (with/without endometriosis) and controls, organized by subject and time point.
Data is available at [OpenNeuro](https://openneuro.org/datasets/ds006491/versions/1.0.1).

## Function Overview
- **cat_stat_svd.m**: performs singular value decomposition (principal component analysis) on a set of NIfTI or GIfTI images. Supports covariates, exclusion of scans, and scanner batch correction.
- **cat_surf_results.m**: interactive tool to display surface-based statistical maps with various overlays and atlas annotations.
- **cat_vol_img2mip.m**: generates "glass brain" maximum-intensity projections for up to three volumes using RGB overlays.
- **get_svd_mesh.m** and **get_svd_mesh_all4.m**: example pipelines that apply `cat_stat_svd` to longitudinal surface/mesh data.
- **get_svd_vbm_s4d.m** and **get_svd_vbm_s4d_all4.m**: similar pipelines for VBM data filtered with a 4D smoothing approach.
- **analysis_glm/** scripts: SPM/CAT12 batch files defining factorial designs and contrasts used in the publication.

