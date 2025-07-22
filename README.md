# Menstrual Cycle Brain Dynamics

[![DOI](https://zenodo.org/badge/DOI/10.1038/s41593-XXX-XXXX-X.svg)](https://doi.org/10.1038/s41593-XXX-XXXX-X)
[![Nature Neuroscience](https://img.shields.io/badge/journal-Nature%20Neuroscience-blue.svg)](https://www.nature.com/neuro)

Code and workflows for:  
**"Hormonal milieu influences whole-brain structural dynamics across the menstrual cycle as revealed by dense sampling in multiple individuals"**  
Authors: Carina Heller, Daniel Güllmar, Lejla Colic, Laura Pritschet, Martin Gell, Nooshin Javaheripour, Feliberto de la Cruz, Philine Rojczyk, Carina J. Koeppel, Bart Larsen, Habib Ganjgahi, Frederik J. Lange, Ann-Christine Buck, Tim L. Jesgarzewsky, Robert Dahnke, Michael Kiehntopf, Emily G. Jacobs3,, Zora Kikinis, Martin Walter, Ilona Croy, Christian Gaser 
Published in: *Nature Neuroscience* (2024)

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
├── scripts/ # All analysis scripts (MATLAB/Octave)
│ ├── cg_svd.m # SVD/PCA analysis and visualization
│ ├── cat_stat_svd.m # SVD wrapper for surface data
│ ├── get_svd_mesh.m # SVD analysis for mesh (surface) files
│ ├── spm_factorial_design.m # Example batch scripts for SPM/CAT
│ └── ...
├── data/ # (Empty) Instructions for data access
├── results/ # Example outputs (visualizations, CSVs)
└── README.md # This file

## Data Access
Data for this project consists of longitudinal, dense-sampling MRI (T1-weighted) of female subjects (with/without endometriosis) and controls, organized by subject and time point.
Data is not publicly shared due to privacy; please contact the corresponding author for information on data access or collaboration.

cat_stat_svd.m
High-level SVD analysis for surface (mesh) data, applying cat_stat_svd to all subjects in a group.

get_svd_mesh.m
Batch SVD for longitudinal/surface data (mesh-based thickness).

SPM/CAT12 batch scripts
Example batch jobs for factorial designs, VBM, and covariate modeling, as in the Nature Neuroscience study.