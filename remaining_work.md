# Spack at FNAL: System Components and Tasks

## Overview

This document describes the components (nodes) and tasks (edges) depicted in the [Spack-at-FNAL](spack-crop.pdf) system diagram.

For each component or task, we provide:

1. Name and unique ID
1. Components connected (tasks only)
1. Brief description
1. Detailed description
1. Status
1. Detailed status
1. Remaining work
1. Work lead
1. Work contributors
1. Work time estimate (FTE days)


## Status labels and their meanings

🔵**Done**🔵
: Work is complete (to first order).

🟢**Almost done**🟢
: Some adjustments required.

🟡**In progress**🟡
: Solution is understood; implementation in progress.

🔴**Problematic**🔴
: Some technical hurdles remain.

🟣**Crisis**🟣
: Solution not understood.

## Components


### n_000: Request for products

**Brief Description**
: An incoming request for a product to be built and packaged.

### n_001: Request for products area

**Brief Description**
: An incoming request for a new area for installed products.

### n_002: Packaged products

**Brief Description**
: One or more packaged products.

### n_003: Built product server

**Brief Description**
: An online location from which built products may be obtained.

### n_004: Suite configuration server

**Brief Description**
: An online location from which concretized (fully-specified)
  configurations of consistent suites of built products may be obtained.

### n_005: Built products

**Brief Description**
: One or more packaged products assembled for installation elsewhere.

### n_006: Built suites

**Brief Description**
: A consistent suite of built products, individually assembled for
  installation elsewhere.

### n_007: Packaged suites

**Brief Description**
: A consistent suite of packaged products.

### n_008: Release config repository

**Brief Description**
: An online location from which non-concretized (loosely specified)
  configurations of suites of products may be obtained.

### n_009: Results of build

**Brief Description**
: The results of building in a development environment.

### n_010: Base release

**Brief Description**
: A Spack instance containing built packages installed in a shared,
  non-CVMFS filesystem.

### n_011: Test release

**Brief Description**
: A secondary Spack instance containing built packages requiring either
  a base release or a CVMFS Spack instance for consistent operation.

### n_012: CVMFS

**Brief Description**
: A Spack instance containing built packages installed in a CVMFS
  filesystem.

### n_013: Runtime environment

**Brief Description**
: An environment configured to use a CVMFS spack instance, base release,
  or test release for execution purposes.

### n_014: Grid environment

**Brief Description**
: A non-interactive runtime environment configured for remote and/or
  batch execution.

### n_015: Development environment

**Brief Description**
: An interactive runtime environment configured for software
  development.

### n_016: Pull request

**Brief Description**
: A GitHub pull request intended for merge into a package's source
  repository.

### n_017: CI

**Brief Description**
: A continuous integration system capable of building and testing
  released, un-released, or unmerged software, or combinations thereof.

## Tasks


### e_000: setup


### e_001: setup


### e_002: layer


### e_003: publish


### e_004: upload


### e_005: relocate


### e_006: setup


### e_007: layer


### e_008: build


### e_009: register


### e_010: build


### e_011: upload


### e_012: upload


### e_013: instantiate


### e_014: package


### e_015: specify config


### e_016: create


### e_017: create


### e_018: install


### e_019: install


### e_020: install


### e_021: retrieve


### e_022: retrieve


### e_023: retrieve


### e_024: relocate


### e_025: setup


### e_026: setup-for-dev


### e_027: submit


### e_028: build


### e_029: create


### e_030: trigger


### e_031: process


### e_032: report


### e_033: tweak


### e_034: install


### e_035: use


### e_036: package


### e_037: install


