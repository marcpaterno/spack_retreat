---
title: A Plan for Standard Builds of LArSoft
subtitle: Draft version 1.1
date: 2024-08-08
---

## Definition of a Standard Build

The move away from UPS to spack is intended to make it easier for non-SciSoft personnel to make their own builds of software stacks.
However, the SciSoft team still needs to be able to build and test the software stacks that depend upon LArSoft, so that testing of LArSoft can be done.
The SciSoft team will also need to be able to build the software stack for the new DUNE framework.
The builds of LArSoft (and of art) that will be produced by the SciSoft team are what we are calling *standard builds*.

We distinguish two types of standard builds:

1. A standard build of a *package*, which is built in a single variant, which includes the union of the set of features needed for the building of the experiment-specific software that uses LArSoft.

2. A standard build of a *release*, which is comprised of standard builds of packages.
The SciSoft team will create a spack environment for each standard build of a release.

## Plans for Standard Builds

This document describes the plans for the "steady state"; during the transition process from UPS to spack necessary adjustments to the process will probably be needed.

1. For each new release of art, and of LArSoft, the SciSoft team will create a small number of standard builds.
These builds will use a specific source code version for each of the packages in the software stack.
Each of the packages will be built in both *debug* and *profile* modes.
Each will be built using a small number of supported compilers (and specific versions of those compilers).

2. A spack environment will be created corresponding to each standard build.
Users of the standard builds will be able to use `spack env activate` to activate the standard environment, and then build their software against that standard environment.
Users who are also developing all, or part, of LArSoft itself will also be able to set up the standard environment, and to build part of all of LArSoft in addition to their own experiment's software stack.

3. Experiments that are part of the LArSoft collaboration are encouraged to use one of the *most recent* standard builds as a base for their own development builds.
One of the main reasons for creating the standard builds is to test new releases of LArSoft against the experiment codes.
If the experiment development releases do not use the standard builds then this testing becomes infeasible for the SciSoft team, and the effort spent creating the standard builds will be wasted.

4. Experiments that are part of the LArSoft collaboration are encouraged to use *one of* the standard builds as a base for their own production builds.
This may not be the most recent standard build, since the pace of releases for production is determined by other factors than the pace of the releases of LArSoft.

5. Experiments are always capable of building alternative builds of LArSoft.
The SciSoft team will be available for consulting on such builds on a best-effort bases.
Pull requests to recipes for 3rd party packages and to the art and LArSoft packages from experiments will be welcomed.
The procedure for handling such pull requests will be described in a separate document.

