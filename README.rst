.. image:: https://img.shields.io/badge/dmtn--063-lsst.io-brightgreen.svg
   :target: https://dmtn-063.lsst.io
.. image:: https://travis-ci.org/lsst-dm/dmtn-063.svg
   :target: https://travis-ci.org/lsst-dm/dmtn-063
..
  Uncomment this section and modify the DOI strings to include a Zenodo DOI badge in the README
  .. image:: https://zenodo.org/badge/doi/10.5281/zenodo.#####.svg
     :target: http://dx.doi.org/10.5281/zenodo.#####

##################################################
Testing the LSST DM Stack on Deep Lens Survey Data
##################################################

DMTN-063
========

We use version 13.0.9 of the LSST DM stack to reduce optical *R* band data taken with the KPNO 4-meter telescope for the Deep Lens Survey (DLS).
Because this data set achieves an LSST like depth and has been studied and characterized exhaustively over the past decade, it provides an ideal setting to evaluate the performance of the LSST DM stack. In this report we examine registration, WCS fitting, and image co-addition of DLS data with the LSST DM stack.
Aside from using a customized Instrument Signature Removal package, we are successful in using the DM stack to process imaging data of a 40 x 40 square arcminute subset of the DLS data, ultimately creating a coadd image. We find the astrometric solutions on individual chips have typical errors <15 miliarcseconds, demonstrating the effectiveness of the ``Jointcal`` package. Indeed, our findings in this regard on the DLS data are consistent with similar investigations on HSC and CFHT data.

A closer look at the astrometry data set shows it contains larger errors in Right Ascension than Declination.
Further examination indicates these errors are likely due to a guider problem with the telescope, and not the result of proper motions of stars, or a problem with the DM stack itself.

Finally, we produce a coadd using the reduced data.
Our coadd is approximately 40 square arcminutes-much larger than the coadds typically created with the stack. Creating a large image stretched our machines to their limits, and we believe a dearth of system resources lead to coadd creation Task not finishing.
In spite of this, the coadd produced by the stack is of comparable quality to its counterpart produced by the DLS team in previous analysis in terms of depth, and ability to remove artifacts which do not correspond to true astrophysical objects. However issues were encountered with SafeClip.

**Links:**

- Publication URL: https://dmtn-063.lsst.io
- Alternative editions: https://dmtn-063.lsst.io/v
- GitHub repository: https://github.com/lsst-dm/dmtn-063
- Build system: https://travis-ci.org/lsst-dm/dmtn-063


Build this technical note
=========================

You can clone this repository and build the technote locally with Latex.
You must have `lsst-texmf`_ installed.

.. code-block:: bash

   git clone https://github.com/lsst-dm/dmtn-063
   cd dmtn-063
   make


Editing this technical note
===========================

You can edit the ``DMTN-063.tex`` file, which is a latex document.

Remember that images and other types of assets should be stored in the ``_static/`` directory of this repository.
See ``_static/README.rst`` for more information.

The published technote at https://dmtn-063.lsst.io will be automatically rebuilt whenever you push your changes to the ``master`` branch on `GitHub <https://github.com/lsst-dm/dmtn-063>`_.

****

Copyright 2017 University of California

This work is licensed under the Creative Commons Attribution 4.0 International License. To view a copy of this license, visit http://creativecommons.org/licenses/by/4.0/.

.. _this repo: ./DMTN-063.tex
.. _lsst-texmf: https://lsst-texmf.lsst.io
