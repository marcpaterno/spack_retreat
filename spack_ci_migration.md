---
title: Spack CI Migration
author:
  - Spack Migration Team
date: 2026-06-05
geometry:
  - top=1in
  - bottom=0.75in
  - left=0.75in
  - right=0.75in
---

## Overview

This document describes the steps needed to enable the CI usage required by LArSoft pull request and release procedures and by the active LArSoft experiments[^1].

This support is needed to complete the migration of the LArSoft experiments from the use of UPS (and building on CentOS 7) to the use of Spack (and building on Alma Linux 9).
This document does not cover possible needs of other experiments or project.
It is possible the other experiments or projects are in need of CI support from the SCD, but that is not part of the Spack migration effort.

[^1]: The active LArSoft experiments are DUNE, MicroBooNE, SBND, and ICARUS.

## Scope

We are not at this time considering migration from the use of Jenkins to the use of Github Actions.
For the short term, the Spack-related CI usage described in this document will be used in addition to the UPS-related CI.
After a suitable overlap period, the UPS-related CI should be retired and the building of releases for CentOS 7 (and using UPS) should be stopped.
This document does not discuss the length of the overlap period.

For the initial roll-out, we do not plan on supporting a *build matrix* (multiple operating systems, compilers, architectures, or sets of compiler settings) for each pull request.
Such support can be added later, as needed.

This document does not discuss the CI needs of other experiments or projects.
Additional experiments or projects that wish for SCD support for CI usage should arrange for support from the SCD as appropriate.

## Steps to complete the migration

This plan requires expertise in the current Jenkins-based CI system beyond that of the Spack Migration Team.
Vito Di Bennedetto is the person who we believe to have the necessary expertise.
In the list below, we indicate which steps we believe require Vito's assistance.

The following list is time-ordered.
Item 3 can be worked on at the same time as items 1 and 2.
Items 4 and 5 must be done in order, and after item 3.

1. We must decide whether new Jenkins projects, or updates of the current Jenkins job configuration scripts, will better support future use.
   The Spack Migration Team will need the assistance of Vito to make this decision.
   In this step, together with Vito, the team will make a time estimate for the rest of this work.

2. A spack recipe for the *generic_ci* packages (from the continuous integration project on Redmine) must be created.
   See <https://cdcvs.fnal.gov/redmine/projects/ci/repository/generic/revisions/develop/show>.
   The project should be migrated to Github and owned by the appropriate Github organization and the appropriate Fermilab group.
   The team will require the assistance of Vito for this task.

3. The team will update MPD to support building subsets of the MPD project.

4. The team will verify "by hand" (that is, not under the control of CI scripts) that we know the series of steps to do the build and testing that the CI system should do.

5. Update or write the scripts that the Spack-based CI system will run, to do the steps decided upon in (4).
   The team will need the assistance of Vito in writing these scripts.
   The scripts involved include:

    - common scripts (from "generic_ci", above)
    - scripts for  lar_ci
    - experiment-specific scripts for each active LArSoft experiment
