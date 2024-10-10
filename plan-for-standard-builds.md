---
title: "A Plan for Standard Builds of LArSoft"
subtitle: Draft version 3.3.1
date: "2024-10-03"
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

In order to make it easier for non-Fermilab personnel to contribute to our shared scientific software stack, and because of the diminishing availability of personnel to maintain support of the specialized infrastructure needed, we have decided to move to using Spack as the primary tool for building and distributing the software stack.
Because Spack is supported by a larger community than is UPS, we will gain the advantage of being able to use the work of others in the community who have already created the necessary recipes for building much of the software we need.
In addition, it will be easier for members of Fermilab experiments to add new recipes for third-party software that they need to use, and to contribute those additions back to the rest of the community.
Finally, Spack is better placed than UPS to handle the needs of current and upcoming experiments, as UPS is very rigid and has high maintenance overhead with respect to dependency chains, and has other limitations with such as relocatability and release distribution.

In this document we describe a plan for how to make use of the software built, packaged, and distributed using Spack and related tools.
The goals of this plan are several:

1. To allow the SciSoft team to build, package, and distribute to the experiments the software the team develops or contributes to, including the *art* framework, LArSoft, and the new framework being developed for DUNE.
2. To provide the experiments greater flexibility in building software not provided in the suite of products delivered by the SciSoft team, while also providing a clear path for sharing effort between experiments.
3. To provide more flexibility for experiments to support building their software stack on platforms or operating systems not directly supported by Fermilab, for example, at supercomputing facilities.

A central feature of the new plan is what we call a *standard build*, described in the next section.

## Definition of a Standard Build

The move away from UPS to Spack is intended to make it easier for non-SciSoft personnel to make their own builds of software stacks.
At the same time, the SciSoft team must retain the ability to build and test LArSoft, which requires building and testing the software stacks that depend upon LArSoft.
Separately, the SciSoft team will also need to be able to build and test the software stack for the new DUNE framework. The framework for allowing these distinct efforts to proceed relies on the idea of *standard builds*. 
All builds of LArSoft (and of *art*) that will be produced by the SciSoft team will be these standard build.

We distinguish two types of standard builds:

1. A standard build of a *package* (usally consisting of all the software in a single repository, e.g., for LArSoft), which is built in a single variant, and includes the full set of features needed to build any one of the experiment-specific software stacks that use LArSoft.
For example, if one experiment requires ROOT with support for Apache Arrow, and another requires support for Graphviz, then the standard build of ROOT would include both the Apache Arrow and the graphviz options in the standard build.
It will be up to the collaborating LArSoft experiments to determine the set of features to be included in the standard build of each package.


2. A standard build of a *suite*, which is comprised of consistent standard builds of all the packages in the suite.
The SciSoft team will create a Spack environment for each standard build of a suite.
All standard builds of packages that are part of a suite will be pushed to an appropriate binary build cache[^1] and also installed in CVMFS.
The SciSoft team will make available environment definition files for each standard build of a suite through CVMFS, or `https://scisoft.fnal.gov`, or both.

[^1]: A *binary build cache*, often shortened to *build cache*, is a location in which pre-built libraries, etc., are kept in the form of tarballs.
A `spack install` command command can download and untar the already-built package, rather than downloading source code and building the package.



## The Plan for Standard Builds and Releases

Here we describe the "steady state" plan for releases, the standard builds that will be created for each release, and guidance on how the experiments should use them. Some adjustments to the process might be needed during the transition from UPS to Spack.

1. New releases will be created when one of the LArSoft experiments or the SciSoft team submits a sucessful pull request (PR) on one or more of the LArSoft repositories, or when one of the underlying dependencies is updated, which may occur at the discretion either of the experiments or the SciSoft team, depending on whether there is a physics impact. 
The code of the experiment making a release request must be consistent with the current LArSoft release.

PRs from experiments to recipes for 3rd party packages, and to the *art* and LArSoft packages will be welcomed.
The procedure for handling such PRs will be described in a separate document.

2. For each new release of the *art* or LArSoft suites, the SciSoft team will create a number of standard builds.
Each of these builds will use a specific, single source code version for each of the packages in the software stack.
First-party software will be built in both *debug* and *profile* modes.
Third-party packages for which *debug* builds are useful will also be built in both *debug* and *profile* mode. Others will be built in *release* mode only (i.e., in the native build mode for the package).
Each package will be built using a small number of supported compilers (and specific versions of those compilers).
The LArSoft collaboration and the SciSoft team will together decide on compilers to be supported.

3. A Spack environment will be created corresponding to each standard build.
Users of the standard builds will be able to use `spack env activate` (or the alias, `spacktivate`) to activate the standard environment, and then build their software against that standard environment.
Users who are developing all or part of LArSoft itself will be able to set up the standard environment, then build the relevant parts of LArSoft in addition to their own experiment's software stack.

4. Experiments that are part of the LArSoft collaboration should use standard builds, preferrably one of the *most recent*, as the base for their own development builds. Doing so makes it possible to test new releases of LArSoft against the experiment code. If an experiment builds does not use a standard build of LArSoft, then testing by the SciSoft team becomes infeasible, which risks wasting effort creating standard builds that do not work.

5. Experiments that are part of the LArSoft collaboration are encouraged to use *one of* the standard builds as a base for their own production builds.
This need not be the most recent standard build, since the pace of releases for production is determined by other factors than the pace of the releases of the LArSoft suite.

6. Experiments may choose to build alternative builds of LArSoft.
The SciSoft team will be available for consulting on such builds on a best-effort basis.



## The use of the LArSoft and Experiemt CI systems to verify LArSoft Releases

Changes to LArSoft code are made via PRs to the relevant repositories. PRs that pass a review and testing process are merged into the main body of code, where they can be tagged and used in a release. The review process uses the CI system to trigger builds and two phases of tests that are built into each of the LArSoft and experiment code repositories. (In the following, we refer to the build and tests collectively "CI tests".) As in the past, the SciSoft team will rely  on the results from these CI tests to determine whether the pull request behaves in the expected way. Only when test results are understood can PRs be accepted. Details of the CI testing process, the conditions that must be met for a PR to be accepted, and the responsibilities on various parties in maintaining the tests are described below.

1. The SciSoft team will use the LArSoft CI system to build and test the development head of each LArSoft repository as needed, such as when triggered by a PR to a LArSoft repository from any source (the experiments or SciSoft).  
Each PR or collection of associated PRs to one or more LArSoft repositories must pass all CI tests for all LArSoft repositories. In addition, PRs must meet a set of additional requirements before they can be accepted. Those additional requirements will be proposed, documented and maintained separately by the SciSoft team. It is the responsibility of the submitter of the PR to fix test failures, or to arrange to have them fixed.


2. Once the CI tests for LArSoft are passed, the CI tests for each experiment that uses LArSoft are run.
As in the case of the LArSoft CI tests, all CI tests for all experiments must succeed for a PR to be accepted. 
It is the responsibility of whatever experiment submitted or requested the PR to fix CI test failures or make arrangements to have them fixed.

Note that commits to an experiment's repositories, and not only changes to LArSoft, might break that experiment's CI tests.

3. It is the responsibility of each experiment to maintain their CI system by keeping the branches of the repositories they use for development up-to-date with the development head of LArSoft.
If an experiment does not keep their CI tests up-to-date with the most recent release of LArSoft, or that branch otherwise becomes incompatible with the most recent release, then their CI tests will be (perhaps temporarily) removed from the workflow of the CI system used to verify new PRs in LArSoft.
It will be re-enabled in the workflow as soon as the experiment updates their code to work with the most recent release of LArSoft.

4. Bug fix PRs for old releases of LArSoft can be accepted for declared production releases of LArSoft only. A PR that fixes a bug in a production release of LArSoft will be merged into the bug-fix branch for that release only if the CI tests for the production release of LArSoft and the experiment passes, or the PR breaks no CI tests that passed immediately before the PR. 
Each experiment is expected to keep a branch in their own repositories for CI testing of bug fixes for each of the LArSoft production releases they use. 

## Other Notes on the Use of Spack

* Each standard build will be created using a specific version of Spack, along with relevant external recipe repositories and required external system packages.

* In order to reduce unnecessary rebuilding of the software stack, experiments are encouraged to use either the appropriate Spack installation from CVMFS, or to use SciSoft-provided scripts and/or procedures to produce an appropriately versioned, patched (where necessary), and configured Spack installation.
