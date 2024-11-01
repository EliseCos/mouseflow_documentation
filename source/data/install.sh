#!/bin/bash

echo "Downloading MouseFlow..."
nextflow pull scilus/mouseflow
echo "Done: MouseFlow downloaded."
echo "Downloading MouseFlow Singularity..."
wget -q --show-progress https://scil.usherbrooke.ca/containers/scilus_1.6.0.sif
echo "Done: MouseFlow Singularity downloaded."
