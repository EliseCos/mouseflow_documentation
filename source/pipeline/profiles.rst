.. _profiles:

Profiles
========

To select one or multiple profiles, please use the ``-profile`` option. For example:

::

    $> nextflow run mouseflow -r 0.0.0 --input input_folder -profile macos,fully_reproducible -with-singularity singularity_name.sif -resume

Profiles available
------------------

``macos``
    When this profile is used, MouseFlow will modify a parameter (scratch) for MacOS users.

``use_gpu``
    When this profile is used, MouseFlow will use eddy_cuda for Eddy process.
    If local tracking is also enabled, Mouseflow will use the gpu implementation of scil_compute_local_tracking.py.
    This feature is available with NVidia GPUs only. Without this profile, MouseFlow will run eddy_openmp.

``fully_reproducible``
    When this profile is used, all the parameters will be set to have 100% reproducible results.
    This profile consist to set multi-thread parameters to be fully reproducible [Theaud20].

``cbrain``
    When this profile is used, Nextflow will copy all the output files in publishDir and not use symlinks.

``bundling``
    When this profile is used, it will activate custom tracking parameters to improve recobundle results.

``connectomics``
    When this profile is used, it will activate custom tracking parameters to improve connectomics analysis.
