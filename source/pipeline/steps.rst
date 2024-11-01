Processing steps
================

MouseFlow pipeline consist of 9 different steps :

.. image:: ../data/mouseflow_graph.png
   :scale: 40 %
   :align: right

Input
-----
    * Diffusion weighted image (DWI)
    * b-values
    * b-vectors

DWI processes
-------------
    * Denoising (Mrtrix3)
    * Eddy (FSL)
    * Brain extraction (FSL)
    * N4 bias correction (ANTs)
    * Resample (Dipy)
    * DTI metrics (Dipy)
    * fODF metrics (Dipy)

Mousegraphy
------------
    * Particule Filter Mousegraphy
    * Local tracking (Optional)


The particle filter tractography is performed by default. Three types of seeding are available: WM-GM interface, WM mask or FA.
