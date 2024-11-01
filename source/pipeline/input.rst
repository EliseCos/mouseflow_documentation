Input structure
===============

One type of input are available in MouseFlow: an in-house structure.

Root parameter
--------------

The input root parameter is called using ``--input`` 
and requires the following file structure:

::

    [root]
    ├── S1
    │   ├── S1_dwi.nii.gz
    │   ├── S1.bval
    │   └── S1.bvec
    └── S2
    │   ├── S2_dwi.nii.gz
    │   ├── S2.bval
    │   └── S2.bvec

The `root` folder must contains subjects folders (e.g. `S1`, `S2`,...). Each subject folder contains the required images:

    * ``dwi.nii.gz`` are the diffusion weighted images.
    * ``bval`` is the b-value file in the FSL format.
    * ``bvec`` is the b-vector file in the FSL format.


.. _Documentation: https://fsl.fmrib.ox.ac.uk/fsl/fslwiki/topup#topup_-_A_tool_for_estimating_and_correcting_susceptibility_induced_distortions
