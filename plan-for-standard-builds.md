---
title: A Plan for Standard Builds of LArSoft
subtitle: Draft version 1.2
date: 2024-08-08
---

## Definition of a Standard Build

The move away from UPS to spack is intended to make it easier for non-SciSoft personnel to make their own builds of software stacks.
However, the SciSoft team still needs to be able to build and test the software stacks that depend upon LArSoft, so that testing of LArSoft can be done.
The SciSoft team will also need to be able to build the software stack for the new DUNE framework.
The builds of LArSoft (and of art) that will be produced by the SciSoft team are what we are calling *standard builds*.

We distinguish two types of standard builds:

1. A standard build of a *package*, which is built in a single variant, which includes the union of the set of features needed for the building of the experiment-specific software that uses LArSoft.

2. A standard build of a *suite*, which is comprised of consistent standard builds of packages.
The SciSoft team will create a spack environment for each standard build of a suite.
All standard builds of packages that are part of such a suite will be pushed to an appropriate binary build cache and also installed in CVMFS.
It is an open question whether we should also distribute the files needed to define a spack environment through the build caches or CVMFS.

This document does not describe *how* the SciSoft team will go about creating standard builds.
It describes the intended *use* of standard builds.

## Plans for Standard Builds

This document describes the plans for the "steady state"; during the transition process from UPS to spack necessary adjustments to the process will probably be needed.

1. For each new release of the art suite, and of LArSoft, the SciSoft team will create a small number of standard builds.
These builds will use a specific source code version for each of the packages in the software stack.
Each of the packages will be built in both *debug* and *profile* modes.
Each will be built using a small number of supported compilers (and specific versions of those compilers).

2. A spack environment will be created corresponding to each standard build.
Users of the standard builds will be able to use `spack env activate` to activate the standard environment, and then build their software against that standard environment.
Users who are also developing all, or part, of LArSoft itself will also be able to set up the standard environment, and to build part of all of LArSoft in addition to their own experiment's software stack.

3. Experiments that are part of the LArSoft collaboration are encouraged to use one of the *most recent* standard builds as a base for their own development builds.
One of the main reasons for creating the standard builds is to test new releases of the LArSoft suite against the experiment codes.
If the experiment development builds do not use the standard builds then this testing becomes infeasible for the SciSoft team, and the effort spent creating the standard builds will be wasted.

4. Experiments that are part of the LArSoft collaboration are encouraged to use *one of* the standard builds as a base for their own production builds.
This may not be the most recent standard build, since the pace of releases for production is determined by other factors than the pace of the releases of the LArSoft suite.

5. Experiments are always capable of building alternative builds of LArSoft.
The SciSoft team will be available for consulting on such builds on a best-effort bases.
Pull requests to recipes for 3rd party packages and to the art and LArSoft packages from experiments will be welcomed.
The procedure for handling such pull requests will be described in a separate document.

## Relation to use of LArSoft CI and experiment CI used to verify LArSoft releases


1. The SciSoft team will use the LArSoft CI system to build the development head of each LArSoft repository whenever necessary.
Pull requests (to a LArSoft repository) from the experiments are the main trigger for such CI builds.
Pull requests will not be accepted if they do not pass this CI testing.
Note that this is necessary, but not sufficient, for accepting a pull request.

2. If the CI for LArSoft is passed, then the CI for each LArSoft experiment is run.
If any of the experiment CI systems fail, the PR will be rejected.
Is the responsibility of whoever submitted the PR to fix the failure.

3. It is the responsibility of each experiment to maintain their CI system by keeping the branches of the repositories they use for development up-to-date with the most recent release of LArSoft.
If an experiment does not keep their CI up-to-date with the most recent release of LArSoft then their CI system will be (perhaps temporarilty) removed from the workflow of the CI system used to verify new PRs in LArSoft.
It can be re-enabled in the workflow as soon as the experiment updates their code to work with the most recent release of LArSoft.


