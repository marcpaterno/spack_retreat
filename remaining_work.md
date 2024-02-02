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

**Detailed Description**
: …

**Status**
: …

**Detailed status**
: …

**Remaining work**
: …

**Work lead**
: …

**Work contributors**
: …

**Work time estimate (FTE days)**
: …


### n_001: Request for products area

**Brief Description**
: An incoming request for a new area for installed products.

**Detailed Description**
: …

**Status**
: …

**Detailed status**
: …

**Remaining work**
: …

**Work lead**
: …

**Work contributors**
: …

**Work time estimate (FTE days)**
: …


### n_002: Packaged products

**Brief Description**
: One or more packaged products.

**Detailed Description**
: …

**Status**
: …

**Detailed status**
: …

**Remaining work**
: …

**Work lead**
: …

**Work contributors**
: …

**Work time estimate (FTE days)**
: …


### n_003: Built product server

**Brief Description**
: An online location from which built products may be obtained.

**Detailed Description**
: …

**Status**
: …

**Detailed status**
: …

**Remaining work**
: …

**Work lead**
: …

**Work contributors**
: …

**Work time estimate (FTE days)**
: …


### n_004: Suite configuration server

**Brief Description**
: An online location from which concretized (fully-specified)
  configurations of consistent suites of built products may be obtained.

**Detailed Description**
: …

**Status**
: …

**Detailed status**
: …

**Remaining work**
: …

**Work lead**
: …

**Work contributors**
: …

**Work time estimate (FTE days)**
: …


### n_005: Built products

**Brief Description**
: One or more packaged products assembled for installation elsewhere.

**Detailed Description**
: …

**Status**
: …

**Detailed status**
: …

**Remaining work**
: …

**Work lead**
: …

**Work contributors**
: …

**Work time estimate (FTE days)**
: …


### n_006: Built suites

**Brief Description**
: A consistent suite of built products, individually assembled for
  installation elsewhere.

**Detailed Description**
: …

**Status**
: …

**Detailed status**
: …

**Remaining work**
: …

**Work lead**
: …

**Work contributors**
: …

**Work time estimate (FTE days)**
: …


### n_007: Packaged suites

**Brief Description**
: A consistent suite of packaged products.

**Detailed Description**
: …

**Status**
: …

**Detailed status**
: …

**Remaining work**
: …

**Work lead**
: …

**Work contributors**
: …

**Work time estimate (FTE days)**
: …


### n_008: Release config repository

**Brief Description**
: An online location from which non-concretized (loosely specified)
  configurations of suites of products may be obtained.

**Detailed Description**
: …

**Status**
: …

**Detailed status**
: …

**Remaining work**
: …

**Work lead**
: …

**Work contributors**
: …

**Work time estimate (FTE days)**
: …


### n_009: Results of build

**Brief Description**
: The results of building in a development environment.

**Detailed Description**
: …

**Status**
: …

**Detailed status**
: …

**Remaining work**
: …

**Work lead**
: …

**Work contributors**
: …

**Work time estimate (FTE days)**
: …


### n_010: Base release

**Brief Description**
: A Spack instance containing built packages installed in a shared,
  non-CVMFS filesystem.

**Detailed Description**
: …

**Status**
: …

**Detailed status**
: …

**Remaining work**
: …

**Work lead**
: …

**Work contributors**
: …

**Work time estimate (FTE days)**
: …


### n_011: Test release

**Brief Description**
: A secondary Spack instance containing built packages requiring either
  a base release or a CVMFS Spack instance for consistent operation.

**Detailed Description**
: …

**Status**
: …

**Detailed status**
: …

**Remaining work**
: …

**Work lead**
: …

**Work contributors**
: …

**Work time estimate (FTE days)**
: …


### n_012: CVMFS

**Brief Description**
: A Spack instance containing built packages installed in a CVMFS
  filesystem.

**Detailed Description**
: …

**Status**
: …

**Detailed status**
: …

**Remaining work**
: …

**Work lead**
: …

**Work contributors**
: …

**Work time estimate (FTE days)**
: …


### n_013: Runtime environment

**Brief Description**
: An environment configured to use a CVMFS spack instance, base release,
  or test release for execution purposes.

**Detailed Description**
: …

**Status**
: …

**Detailed status**
: …

**Remaining work**
: …

**Work lead**
: …

**Work contributors**
: …

**Work time estimate (FTE days)**
: …


### n_014: Grid environment

**Brief Description**
: A non-interactive runtime environment configured for remote and/or
  batch execution.

**Detailed Description**
: …

**Status**
: …

**Detailed status**
: …

**Remaining work**
: …

**Work lead**
: …

**Work contributors**
: …

**Work time estimate (FTE days)**
: …


### n_015: Development environment

**Brief Description**
: An interactive runtime environment configured for software
  development.

**Detailed Description**
: …

**Status**
: …

**Detailed status**
: …

**Remaining work**
: …

**Work lead**
: …

**Work contributors**
: …

**Work time estimate (FTE days)**
: …


### n_016: Pull request

**Brief Description**
: A GitHub pull request intended for merge into a package's source
  repository.

**Detailed Description**
: …

**Status**
: …

**Detailed status**
: …

**Remaining work**
: …

**Work lead**
: …

**Work contributors**
: …

**Work time estimate (FTE days)**
: …


### n_017: CI

**Brief Description**
: A continuous integration system capable of building and testing
  released, un-released, or unmerged software, or combinations thereof.

**Detailed Description**
: …

**Status**
: …

**Detailed status**
: …

**Remaining work**
: …

**Work lead**
: …

**Work contributors**
: …

**Work time estimate (FTE days)**
: …


## Tasks


### e_000: setup

**Components connected**
: …

**Brief Description**
: …

**Detailed Description**
: …

**Status**
: …

**Detailed status**
: …

**Remaining work**
: …

**Work lead**
: …

**Work contributors**
: …

**Work time estimate (FTE days)**
: …


### e_001: setup

**Components connected**
: …

**Brief Description**
: …

**Detailed Description**
: …

**Status**
: …

**Detailed status**
: …

**Remaining work**
: …

**Work lead**
: …

**Work contributors**
: …

**Work time estimate (FTE days)**
: …


### e_002: layer

**Components connected**
: …

**Brief Description**
: …

**Detailed Description**
: …

**Status**
: …

**Detailed status**
: …

**Remaining work**
: …

**Work lead**
: …

**Work contributors**
: …

**Work time estimate (FTE days)**
: …


### e_003: publish

**Components connected**
: …

**Brief Description**
: …

**Detailed Description**
: …

**Status**
: …

**Detailed status**
: …

**Remaining work**
: …

**Work lead**
: …

**Work contributors**
: …

**Work time estimate (FTE days)**
: …


### e_004: upload

**Components connected**
: …

**Brief Description**
: …

**Detailed Description**
: …

**Status**
: …

**Detailed status**
: …

**Remaining work**
: …

**Work lead**
: …

**Work contributors**
: …

**Work time estimate (FTE days)**
: …


### e_005: relocate

**Components connected**
: …

**Brief Description**
: …

**Detailed Description**
: …

**Status**
: …

**Detailed status**
: …

**Remaining work**
: …

**Work lead**
: …

**Work contributors**
: …

**Work time estimate (FTE days)**
: …


### e_006: setup

**Components connected**
: …

**Brief Description**
: …

**Detailed Description**
: …

**Status**
: …

**Detailed status**
: …

**Remaining work**
: …

**Work lead**
: …

**Work contributors**
: …

**Work time estimate (FTE days)**
: …


### e_007: layer

**Components connected**
: …

**Brief Description**
: …

**Detailed Description**
: …

**Status**
: …

**Detailed status**
: …

**Remaining work**
: …

**Work lead**
: …

**Work contributors**
: …

**Work time estimate (FTE days)**
: …


### e_008: build

**Components connected**
: …

**Brief Description**
: …

**Detailed Description**
: …

**Status**
: …

**Detailed status**
: …

**Remaining work**
: …

**Work lead**
: …

**Work contributors**
: …

**Work time estimate (FTE days)**
: …


### e_009: register

**Components connected**
: …

**Brief Description**
: …

**Detailed Description**
: …

**Status**
: …

**Detailed status**
: …

**Remaining work**
: …

**Work lead**
: …

**Work contributors**
: …

**Work time estimate (FTE days)**
: …


### e_010: build

**Components connected**
: …

**Brief Description**
: …

**Detailed Description**
: …

**Status**
: …

**Detailed status**
: …

**Remaining work**
: …

**Work lead**
: …

**Work contributors**
: …

**Work time estimate (FTE days)**
: …


### e_011: upload

**Components connected**
: …

**Brief Description**
: …

**Detailed Description**
: …

**Status**
: …

**Detailed status**
: …

**Remaining work**
: …

**Work lead**
: …

**Work contributors**
: …

**Work time estimate (FTE days)**
: …


### e_012: upload

**Components connected**
: …

**Brief Description**
: …

**Detailed Description**
: …

**Status**
: …

**Detailed status**
: …

**Remaining work**
: …

**Work lead**
: …

**Work contributors**
: …

**Work time estimate (FTE days)**
: …


### e_013: instantiate

**Components connected**
: …

**Brief Description**
: …

**Detailed Description**
: …

**Status**
: …

**Detailed status**
: …

**Remaining work**
: …

**Work lead**
: …

**Work contributors**
: …

**Work time estimate (FTE days)**
: …


### e_014: package

**Components connected**
: …

**Brief Description**
: …

**Detailed Description**
: …

**Status**
: …

**Detailed status**
: …

**Remaining work**
: …

**Work lead**
: …

**Work contributors**
: …

**Work time estimate (FTE days)**
: …


### e_015: specify config

**Components connected**
: …

**Brief Description**
: …

**Detailed Description**
: …

**Status**
: …

**Detailed status**
: …

**Remaining work**
: …

**Work lead**
: …

**Work contributors**
: …

**Work time estimate (FTE days)**
: …


### e_016: create

**Components connected**
: …

**Brief Description**
: …

**Detailed Description**
: …

**Status**
: …

**Detailed status**
: …

**Remaining work**
: …

**Work lead**
: …

**Work contributors**
: …

**Work time estimate (FTE days)**
: …


### e_017: create

**Components connected**
: …

**Brief Description**
: …

**Detailed Description**
: …

**Status**
: …

**Detailed status**
: …

**Remaining work**
: …

**Work lead**
: …

**Work contributors**
: …

**Work time estimate (FTE days)**
: …


### e_018: install

**Components connected**
: …

**Brief Description**
: …

**Detailed Description**
: …

**Status**
: …

**Detailed status**
: …

**Remaining work**
: …

**Work lead**
: …

**Work contributors**
: …

**Work time estimate (FTE days)**
: …


### e_019: install

**Components connected**
: …

**Brief Description**
: …

**Detailed Description**
: …

**Status**
: …

**Detailed status**
: …

**Remaining work**
: …

**Work lead**
: …

**Work contributors**
: …

**Work time estimate (FTE days)**
: …


### e_020: install

**Components connected**
: …

**Brief Description**
: …

**Detailed Description**
: …

**Status**
: …

**Detailed status**
: …

**Remaining work**
: …

**Work lead**
: …

**Work contributors**
: …

**Work time estimate (FTE days)**
: …


### e_021: retrieve

**Components connected**
: …

**Brief Description**
: …

**Detailed Description**
: …

**Status**
: …

**Detailed status**
: …

**Remaining work**
: …

**Work lead**
: …

**Work contributors**
: …

**Work time estimate (FTE days)**
: …


### e_022: retrieve

**Components connected**
: …

**Brief Description**
: …

**Detailed Description**
: …

**Status**
: …

**Detailed status**
: …

**Remaining work**
: …

**Work lead**
: …

**Work contributors**
: …

**Work time estimate (FTE days)**
: …


### e_023: retrieve

**Components connected**
: …

**Brief Description**
: …

**Detailed Description**
: …

**Status**
: …

**Detailed status**
: …

**Remaining work**
: …

**Work lead**
: …

**Work contributors**
: …

**Work time estimate (FTE days)**
: …


### e_024: relocate

**Components connected**
: …

**Brief Description**
: …

**Detailed Description**
: …

**Status**
: …

**Detailed status**
: …

**Remaining work**
: …

**Work lead**
: …

**Work contributors**
: …

**Work time estimate (FTE days)**
: …


### e_025: setup

**Components connected**
: …

**Brief Description**
: …

**Detailed Description**
: …

**Status**
: …

**Detailed status**
: …

**Remaining work**
: …

**Work lead**
: …

**Work contributors**
: …

**Work time estimate (FTE days)**
: …


### e_026: setup-for-dev

**Components connected**
: …

**Brief Description**
: …

**Detailed Description**
: …

**Status**
: …

**Detailed status**
: …

**Remaining work**
: …

**Work lead**
: …

**Work contributors**
: …

**Work time estimate (FTE days)**
: …


### e_027: submit

**Components connected**
: …

**Brief Description**
: …

**Detailed Description**
: …

**Status**
: …

**Detailed status**
: …

**Remaining work**
: …

**Work lead**
: …

**Work contributors**
: …

**Work time estimate (FTE days)**
: …


### e_028: build

**Components connected**
: …

**Brief Description**
: …

**Detailed Description**
: …

**Status**
: …

**Detailed status**
: …

**Remaining work**
: …

**Work lead**
: …

**Work contributors**
: …

**Work time estimate (FTE days)**
: …


### e_029: create

**Components connected**
: …

**Brief Description**
: …

**Detailed Description**
: …

**Status**
: …

**Detailed status**
: …

**Remaining work**
: …

**Work lead**
: …

**Work contributors**
: …

**Work time estimate (FTE days)**
: …


### e_030: trigger

**Components connected**
: …

**Brief Description**
: …

**Detailed Description**
: …

**Status**
: …

**Detailed status**
: …

**Remaining work**
: …

**Work lead**
: …

**Work contributors**
: …

**Work time estimate (FTE days)**
: …


### e_031: process

**Components connected**
: …

**Brief Description**
: …

**Detailed Description**
: …

**Status**
: …

**Detailed status**
: …

**Remaining work**
: …

**Work lead**
: …

**Work contributors**
: …

**Work time estimate (FTE days)**
: …


### e_032: report

**Components connected**
: …

**Brief Description**
: …

**Detailed Description**
: …

**Status**
: …

**Detailed status**
: …

**Remaining work**
: …

**Work lead**
: …

**Work contributors**
: …

**Work time estimate (FTE days)**
: …


### e_033: tweak

**Components connected**
: …

**Brief Description**
: …

**Detailed Description**
: …

**Status**
: …

**Detailed status**
: …

**Remaining work**
: …

**Work lead**
: …

**Work contributors**
: …

**Work time estimate (FTE days)**
: …


### e_034: install

**Components connected**
: …

**Brief Description**
: …

**Detailed Description**
: …

**Status**
: …

**Detailed status**
: …

**Remaining work**
: …

**Work lead**
: …

**Work contributors**
: …

**Work time estimate (FTE days)**
: …


### e_035: use

**Components connected**
: …

**Brief Description**
: …

**Detailed Description**
: …

**Status**
: …

**Detailed status**
: …

**Remaining work**
: …

**Work lead**
: …

**Work contributors**
: …

**Work time estimate (FTE days)**
: …


### e_036: package

**Components connected**
: …

**Brief Description**
: …

**Detailed Description**
: …

**Status**
: …

**Detailed status**
: …

**Remaining work**
: …

**Work lead**
: …

**Work contributors**
: …

**Work time estimate (FTE days)**
: …


### e_037: install

**Components connected**
: …

**Brief Description**
: …

**Detailed Description**
: …

**Status**
: …

**Detailed status**
: …

**Remaining work**
: …

**Work lead**
: …

**Work contributors**
: …

**Work time estimate (FTE days)**
: …
