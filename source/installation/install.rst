Fast Installation
=================

Easy install method
-------------------

Enter this command in your terminal (it downloads the container and MouseFlow code in the current directory - Make sure nextflow is already installed before running this command):
::

    curl -s https://mouseflow-documentation.readthedocs.io/en/2.4.3/install.sh | bash


Detailed Installation
=====================

MouseFlow pipeline
-------------------

Release
#######

Download MouseFlow pipeline:

::

    $> nextflow pull scilus/mouseflow

For developers
##############

Clone MouseFlow pipeline repository:

::

    # Clone with HTTPS
    $> git clone https://github.com/scilus/mouseflow.git

    # Clone with SSH
    $> git clone git@github.com:scilus/mouseflow.git

As a developer you will have to run mouseflow using this command:

::

  nextflow run mouseflow/main.nf --help

.. _singularity-mouseflow:

Singularity for MouseFlow
--------------------------

Download the last release of the Singularity container for MouseFlow:

::

    $> wget https://scil.usherbrooke.ca/containers/scilus_1.6.0.sif

Or if you have sudo privileges

::

    $> sudo singularity build scilus_1.6.0.sif docker://scilus/scilus:1.6.0

.. _docker-mouseflow:

Docker for MouseFlow
---------------------

First, change the number of CPUs and RAM (recommended: 8 CPUs and 16Gb of RAM) in
Docker (Preferences -> Advanced) and click on Apply & Restart.

Download the last release of the Docker container for MouseFlow:

::

    $> docker pull scilus/scilus:1.6.0

Please see :ref:`profiles` section to use `macos` profile.
