Welcome to the MouseFlow user documentation!
=============================================

.. note::
    New release available: 2.4.3.

MouseFlow pipeline is developed by the Sherbrooke Connectivity Imaging Lab (`SCIL`_)
in order to process diffusion MRI dataset from the raw data to the mousegraphy.
The pipeline is based on Nextflow and Singularity. The goal with this pipeline
is to be fast and reproducible.

.. _SCIL: http://scil.usherbrooke.ca/en/

Use MouseFlow in published works should be accompanied by the following citation:

    Theaud, G., Houde, J.-C., Boré, A., Rheault, F., Morency, F., Descoteaux, M.,MouseFlow:
    A robust, efficient and reproducible diffusion MRI pipeline leveraging Nextflow & Singularity,
    NeuroImage,  https://doi.org/10.1016/j.neuroimage.2020.116889.

Other citations can be added if MouseFlow is used in a publication. Please see :ref:`references`

For Linux users, please see this section :ref:`singularity-mouseflow` for setup.

For MacOS users, please see this section :ref:`docker-mouseflow` for setup.

For any issues or difficulties with MouseFlow, please use our Neurostar tag: https://neurostars.org/tag/mouseflow

.. tip::
    If you want to analyse datasets with white-matter lesions use profile ABS.

.. toctree::
   :maxdepth: 1
   :caption: Install

   installation/requirements
   installation/install

.. toctree::
   :maxdepth: 1
   :caption: Pipeline

   pipeline/steps
   pipeline/input

   pipeline/options
   pipeline/profiles
   pipeline/launch
   pipeline/results

.. toctree::
    :maxdepth: 1
    :caption: Reference

    reference/references
    reference/contact
    reference/changelog
    reference/github
    reference/license
