---
title: "High Impact Changes for Spack `develop` and 1.0"
author: "Chris Green, FNAL"
date: "2024-12-12"
theme: MFP
aspectratio: 1610
colorlinks: true
---

## Overview and Motivation

* Spack 1.0 is currently planned for June 2025.

* [Todd's announcement](https://github.com/spack/spack/discussions/30634)
  describes some upcoming general high impact changes, with links to further
  details for each.
  
* This presentation will précis those changes and discuss the
  implications and risks for us. Some of them will need to be monitored
  and possibly steered in order to ensure they satisfy our use cases.

* Some changes are previewed in
  [v1.0.0-alpha.2](https://github.com/spack/spack/tree/v1.0.0-alpha.2)
  as they have not yet been merged to
  [develop](https://github.com/spack/spack/tree/develop).

* Other changes of importance are proposed, upcoming, or already merged
  to [develop](https://github.com/spack/spack/tree/develop), and should
  also be monitored for suitability and disruption.


## Compilers as Build Dependencies

* [Turn compilers into nodes
  #45189](https://github.com/spack/spack/pull/45189)

* Also relevant: [Slack comment from Harmen
  Stoppels](https://spackpm.slack.com/archives/G7XED8NAD/p1734017257852719):
  
  > ... The TL;DR is I'm claiming making Spack aware of the C++98/C++11
  > ABI breakage is a waste of time right now.

* This could be _very_ good for us.

* It could also stop us in our tracks.


## Migrate Package Recipes to Their Own Repository

* [Discussion: Move built-in packages to a separate repository
  #47480](https://github.com/spack/spack/issues/47480)

* This will change the way we work, and will necessitate some script
  changes (maybe).

* In general, this should be good for us.


## Include Source Provenance in `spec.json` and Package Hashes

* [specs: include source provenance in spec.json and package hash
  #32312](https://github.com/spack/spack/pull/32312)

* This could be straightforward and non-disruptive.

* Or it could vastly worsen the rebuild problem unless we rethink the
  way we work.


## "Stateless" Spack

* [Shared spack #47615](https://github.com/spack/spack/pull/47615)

* This should be very good for us, especially for CVMFS.

* Need to keep an eye on it to make sure that it's everything we need,
  and not just _almost_ everything we need.


## Environments

* [Discussion: Environments: Support fully including other environments
  and standardize include syntax
  #46973](https://github.com/spack/spack/issues/46973)

  * [Support conditional and optional includes
    #46792](https://github.com/spack/spack/pull/46792)

  * [Allowing environment variables to be set in a spack.yaml
    #47587](https://github.com/spack/spack/pull/47587)

  * [Environments: support including other environment files
    #42442](https://github.com/spack/spack/pull/42442)

  * [Command: Add option to add/remove environment includes
    #44285](https://github.com/spack/spack/pull/44285)
  
  * [Add configs for reusing specs from environments and enable reuse
    from included concrete environments by default
    #45139](https://github.com/spack/spack/pull/45139)

  * [Environments: refresh cached URL-included config on
    re-concretization #34199](https://github.com/spack/spack/pull/34199)

* A _lot_ of material here that we should understand the implications
  of, and steer and/or report problems with if necessary.
