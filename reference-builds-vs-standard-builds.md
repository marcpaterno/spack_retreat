---
author: Marc Paterno
title: "Reference builds vs. standard builds"
date: "2024-06-20"
---

## What kinds of builds shall we make?

We (the Spack Migration Team) want the SciSoft team to provide for the lab community (the experiments and the other lab divisions that make use of our software) the most useful builds consistent with the level of effort that the team can support.
For this to work, we need to determine how to make builds that are as broadly applicable as possible.

This document mostly addresses the number of builds that would be created for each update of the LArSoft software stack.
It is also possible to reduce work required to create builds by:

1. decreasing the frequency of updates of the underlying software, and
2. decreasing the frequency of LArSoft releases (perhaps monthly instead of weekly releases).

(1) has the effect of making new builds less likely to encounter trouble due to changing 3rd party codes.
(2) spreads the amount of work that needs to be done over a longer time period, while slightly increasing the amount of work in each build because of the presumably larger number of changes made to the LArSoft code in the longer time period.

## Two kinds of builds

We can distinguish between different kinds of builds based on the use to which they apply.

It seems useful to distinguish between two different purposes:

1. builds made only to allow the SciSoft team to test the software, and
2. builds made to allow the lab community to use the software.

In this document, we will use the term *reference build* for (1), and *standard build* for (2).
The SciSoft team is no longer able to support the number of builds of LArSoft that have been created in the past.
A significant question is whether the SciSoft team has sufficient resources to create a set of standard builds that would be sufficiently widely useful that it would be a savings of effort for the lab to create them.
If it is not possible to do so, then creating references builds represents that the least effort solution, since testing of the software developed by the team is a necessity.


## Defining the standard builds

More than one standard build will be necessary because we are attempting to support both offline use and online/DAQ use.
CSAID is tasked with meeting both of these needs.
If we do not have a solution that meets both, then each of the divisions will have to solve similar (but not identical) problems on their own.
That would not seem to be the best use of CSAID resources.

Most likely we will want all possible combinations of several options:

1. The compiler, its version, and the language standard.
   This is the approximately the equivalent of the *e* and *c* qualifiers in the UPS-based world.
2. The operating system, its version, and the architecture.
3. The optimization level: *debug* and *profile*.
4. The version of the source code for each package.

In this model, the standard build that the SciSoft team will supply will pick a single version of source code for each package.
This is the approximate equivalent of the *s* qualifiers in the UPS-based world.
All the standard builds of a specific version of LArSoft, for example, will be built with a single version of the source code for each package upon which it depends, including third-party products such as ROOT and GEANT4.

## How many standard builds are needed to support the lab community?

The highest-level "package" delivered by the SciSoft team is LArSoft.
The muon experiments do not use LArSoft.
They use the *critic suite* and a few other 3rd party packages which are built by the SciSoft team.
These packages can be included in a standard build if it is possible to choose the version of each consistent with what is needed for LArSoft.
The building of products that do not fit into this scheme would be the responsibiility of the expertiments.
The software delivered for use by NOvA is a subset of the LArSoft stack.

To determine whether creating standard builds is feasible we need to know how many would be necessary.
Here is my current calculation: we have

1. 1 supported operating system (initially AL9.4).
   This would need to be the version running in containers on grid nodes.
   Note that any experiment or project that would like to use a different point release would need to make an additional build, because the spack system marks a build as being for a specific point release of the operating system.

2. 3 supported compilers and language versions
   a. the compiler and language version supported for online monitoring and DAQ purposes
   b. the newest GCC version and supported language version
   c. the newest clang version and supported language version

   Note that we could decrease our workload by dropping support for the clang compiler.
   While it has been useful to support two independent C++ compilers --- this helps ensure we are not producing compiler-specific code --- if it is too expensive to do so, dropping support of clang is an option.

   It is also not clear how much of LArSoft is needed for online or DAQ use.
   It may be very difficult to build new versions of the machine learning libraries with an older compiler.
   We need to be more specific about which packages need to be built in which versions.
   We also need to be more specific about how consistent groups of packages will be made available to experiments.
   The options seem to be *spack environments*,  *bundle packages*, or *container images* in combination with Spack.
   It would be best to settle upon one solution to be used by CSAID.

3. 2 supported optimization levels
   a. debug
   b. profile

   Note that while is it possible that we could only generate the profile build, this is widely unpopular because many developers strongly prefer to use a debug build during development.
   Delivering only a debug build seems like a non-starter, because experiment releases to be build against our standard build need the performance of the profile build.

4. 1 supported source code version
   This assumes that we are not making standard builds for multiple versions of LArSoft.

This yields a total of 1 * 3 * 2 * 1 = 6 standard builds for each "build cycle".

This number of builds is the same if many projects and experiments are using them, or if only one or two are using them.
However, the test of LArSoft is done by CI systems for DUNE, ICARUS, MicroBooNE and SBND.
Our previous experience is that each experiment in the list adds a significant amount of effort to the build process.
Most of the effort is spent when tests are failing; when the tests pass, it is only additional machine cycles that are consumed.


