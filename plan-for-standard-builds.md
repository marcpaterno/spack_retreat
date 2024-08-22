---
title: "A Plan for Standard Builds of LArSoft"
subtitle: Draft version 3
date: "2024-08-12"
geometry: "left=1.0in,right=1.0in,top=1.5in,bottom=1.0in"
output:
  word_document: default
  pdf_document:
---

## Introduction

For more than 30 years the Fermilab scientific software stack has been packaged and distributed using UPS and related tools.
Fermilab specific scripts and procedures were developed to build several hundred third-party software packages (i.e., software created by neither Fermilab scientific software developers nor by the experiments) into UPS-compatible forms.
Because UPS is a Fermilab-specific tool, it has been difficult for non-Fermilab personnel to develop the expertise needed to contribute to building this software stack.
As a result, the time taken to update versions of software, and to add new packages, is longer than it would be if the software stack were built and distributed using more widely-used tools.

In order to make it easier for non-Fermilab personnel to contribute to our shared scientific software stack, and because of the diminishing availability of personnel to maintain support of the specialized infrastructure needed, we have decided to move to using spack as the primary tool for building and distributing the software stack.
Because spack is supported by a larger community than is UPS, we will gain the advantage of being able to use the work of others in the community who have already created the necessary recipes for building much of the software we need.
In addition, it will be easier for members of Fermilab experiments to add new recipes for third-party software that they need to use, and to contribute those additions back to the rest of the community.

In this document we describe a plan for how to make use of the software built, packaged, and distributed using spack and related tools.
The goals of this plan are several:

1. It will allow the SciSoft team to build, package, and distribute to the experiments the software the teams develops or contributes to, including the *art* framework, LArSoft, and the new framework being developed for DUNE.
2. It will provide the experiments greater flexibility in building software not provided in the suite of products delivered by the SciSoft team.
It will also provide a clear path for sharing effort between experiments.
3. It will provide more flexibility to allow experiments to support building their software stack on platforms or operating systems not directly supported by Fermilab, for example, at supercomputing facilities.

A central feature of the new plan is what we call a *standard build*, described in the next section.

## Definition of a Standard Build

The move away from UPS to spack is intended to make it easier for non-SciSoft personnel to make their own builds of software stacks.
However, the SciSoft team still needs to be able to build and test the software stacks that depend upon LArSoft, so that testing of LArSoft can be done.
See below for how the SciSoft team will rely on experiment CI systems to do this.
The SciSoft team will also need to be able to build the software stack for the new DUNE framework.
The builds of LArSoft (and of *art*) that will be produced by the SciSoft team are what we are calling *standard builds*.

We distinguish two types of standard builds:

1. A standard build of a *package*, which is built in a single variant, which includes the union of the set of features needed for the building of the experiment-specific software that uses LArSoft.

2. A standard build of a *suite*, which is comprised of consistent standard builds of packages.
The SciSoft team will create a spack environment for each standard build of a suite.
All standard builds of packages that are part of such a suite will be pushed to an appropriate binary build cache and also installed in CVMFS.
The SciSoft team will make available environment definition files for each standard build of a suite through CVMFS or https://scisoft.fnal.gov or both.

This document does not describe *how* the SciSoft team will go about creating standard builds.
It describes the intended *use* of standard builds.

## Plans for Standard Builds

This document describes the plans for the "steady state"; during the transition process from UPS to spack necessary adjustments to the process will probably be needed.

1. For each new release of the *art* suite, and of LArSoft, the SciSoft team will create a small number of standard builds.
These builds will use a specific source code version for each of the packages in the software stack.
Each of the packages will be built in both *debug* and *profile* modes.
Each will be built using a small number of supported compilers (and specific versions of those compilers).
For *debug* builds of the LArSoft suite, we will continue past practice of compiling a select set of interesting packages from the underlying software stack in *debug* mode, with other packages compiled in an appropriate optimization mode.

2. A spack environment will be created corresponding to each standard build.
Users of the standard builds will be able to use `spack env activate` to activate the standard environment, and then build their software against that standard environment.
Users who are also developing all, or part, of LArSoft itself will also be able to set up the standard environment, and to build part or all of LArSoft in addition to their own experiment's software stack.

3. Experiments that are part of the LArSoft collaboration are encouraged to use one of the *most recent* standard builds as a base for their own development builds.
One of the main reasons for creating the standard builds is to test new releases of the LArSoft suite against the experiment codes.
If the experiment development builds do not use the standard builds then this testing becomes infeasible for the SciSoft team, and the effort spent creating the standard builds will be wasted.
New releases candidates will be created when one of the LArSoft experiments requests a new LArSoft release.
The code of the experiment making a release request must be consistent with the current LArSoft release.

4. Experiments that are part of the LArSoft collaboration are encouraged to use *one of* the standard builds as a base for their own production builds.
This may not be the most recent standard build, since the pace of releases for production is determined by other factors than the pace of the releases of the LArSoft suite.

5. Experiments are always capable of building alternative builds of LArSoft.
The SciSoft team will be available for consulting on such builds on a best-effort bases.
Pull requests to recipes for 3rd party packages and to the *art* and LArSoft packages from experiments will be welcomed.
The procedure for handling such pull requests will be described in a separate document.

## Relation to use of LArSoft CI and experiment CI used to verify LArSoft releases

1. The SciSoft team will use the LArSoft CI system to build the development head of each LArSoft repository whenever necessary.
Pull requests (to a LArSoft repository) from the experiments are the main trigger for such CI builds.
Pull requests will not be accepted if they do not pass this CI testing.
Note that this is necessary, but not sufficient, for accepting a pull request.
The SciSoft team will develop a proposed set of requirements to be met by each PR.
The requirements will be documented and maintained  by the SciSoft team.

2. If the CI for LArSoft is passed, then the CI for each LArSoft experiment is run.
If any of the experiment CI systems fail, and if the experiment's CI was passed before the PR was included, the PR will be rejected.
It is the responsibility of whatever experiment submitted or requested the PR to fix the failure.

3. It is the responsibility of each experiment to maintain their CI system by keeping the branches of the repositories they use for development up-to-date with the development head of LArSoft.
If an experiment does not keep their CI up-to-date with the most recent release of LArSoft then their CI system will be (perhaps temporarily) removed from the workflow of the CI system used to verify new PRs in LArSoft.
It can be re-enabled in the workflow as soon as the experiment updates their code to work with the most recent release of LArSoft.

Note that commits to the experiment's repositories, and not only changes to LArSoft, might break the experiment's CI.

4. A PR that fixes a bug in an old release of LArSoft reported by an experiment will only be merged into the bug fix branch of that release if the CI system for the experiment passes, and if the PR breaks no existing CI that had been passing before the PR.
Each experiment is expected to keep a branch of their own repositories to be used for CI testing of any bug fix versions of LArSoft that the experiment requests.

## Notes on experiment use of standard builds

* Each standard build will be created using a specific version of Spack, along with relevant external recipe repositories and required external system packages.

* In order to reduce unnecessary rebuilding of the software stack, experiments are encouraged to use either the appropriate Spack installation from CVMFS, or to use SciSoft-provided scripts and/or procedures to produce an appropriately versioned and configured Spack installation.
