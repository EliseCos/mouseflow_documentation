How to launch MouseFlow
========================

Local computer
--------------

To run the pipeline, use the following command:

::

    # With Singularity
    $> nextflow run mouseflow --input input_folder -with-singularity scilus_2.0.2.sif --atlas.directory -resume

    # With Docker
    $> nextflow run mouseflow --input input_folder -with-docker scilus/scilus:1.6.0 --atlas.directory -resume

    # If you have an NVIDIA GPU installed
    $> nextflow run mouseflow --input input_folder -with-singularity scilus_2.0.2.sif --atlas.directory -profile use_gpu -resume


If you want to skip steps already processed by an anterior run, you can add `-resume` option in the command line.

High Performance Computer (HPC)
-------------------------------

The following example is based on the SLURM executor:

If you want to run mouseflow, please use the same commands presented for the
local computer. The following lines must be saved in ``.sh`` file (e.g. ``cmd.sh``)
to be executed with ``sbatch``.

::

    #!/bin/sh

    #SBATCH --nodes=1
    #SBATCH --cpus-per-task=32
    #SBATCH --mem=0
    #SBATCH --time=48:00:00

    nextflow run mouseflow --input input_folder --atlas.directory -with-singularity singularity_name.sif -resume

To launch mouseflow on a node with a GPU, you must use the profile use_gpu in your command.
The following example use one node with gpu. The following lines
must be saved in ``.sh`` file (e.g. ``cmd.sh``) to be executed with ``sbatch``.

::

    #!/bin/sh

    #SBATCH --nodes=1
    #SBATCH --gpus-per-node=v100:1
    #SBATCH --cpus-per-task=32
    #SBATCH --mem=0
    #SBATCH --time=48:00:00

    export NXF_CLUSTER_SEED=$(shuf -i 0-16777216 -n 1)

    nextflow run mouseflow --input input_folder -with-singularity singularity_name.sif --atlas.directory -resume -profile use_gpu

To launch the pipeline on the HPC:

::

    $> sbatch cmd.sh
