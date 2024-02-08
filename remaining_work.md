# Spack at FNAL: System Components and Tasks

## Overview

This document describes the components (nodes) and tasks (edges) in the [workflow diagram below](#swd):

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


### n_000: Request for products {#request_for_products}

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


### n_001: Request for products area {#request_for_products_area}

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


### n_002: Packaged products {#packaged_products}

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


### n_003: Built product server {#scisoft}

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


### n_004: Suite configuration server {#suite_config_server}

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


### n_005: Built products {#built_products}

**Brief Description**
: One or more locally-built products.

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


### n_006: Built suites {#built_env}

**Brief Description**
: A consistent suite of locally-built products.

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


### n_007: Packaged suites {#packaged_suites}

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


### n_008: Release config repository {#release_config}

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


### n_009: Base release {#base_release}

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


### n_010: Test release {#test_release}

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


### n_011: CVMFS {#CVMFS}

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


### n_012: Runtime environment {#runtime}

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


### n_013: Grid environment {#grid}

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


### n_014: Development environment {#development}

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


### n_015: Pull request {#PR}

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


### n_016: CI {#CI}

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


### e_000: setup {#e_000}

**Brief Description**
: Set up a grid environment to use a specific CVMFS-based Spack
  instance.

**Detailed Description**
: …

**Status**
: 🔵**Done**🔵

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


### e_001: setup {#e_001}

**Brief Description**
: Set up an interactive environment to use a specific CVMFS-based Spack
  instance.

**Detailed Description**
: …

**Status**
: 🔵**Done**🔵

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


### e_002: layer {#e_002}

**Brief Description**
: Create a base release as a "sub-spack" dependent on a CVMFS-based
  Spack instance.

**Detailed Description**
: …

**Status**
: 🟢**Almost done**🟢

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


### e_003: publish {#e_003}

**Brief Description**
: Make changes to a CVMFS-based Spack instance visible.

**Detailed Description**
: …

**Status**
: 🔵**Done**🔵

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


### e_004: upload {#e_004}

**Brief Description**
: Upload one or more built products to a server.

**Detailed Description**
: …

**Status**
: 🟢**Almost done**🟢

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


### e_005: relocate {#e_005}

**Brief Description**
: Make a base release accessible in a grid environment.

**Detailed Description**
: …

**Status**
: 🟢**Almost done**🟢

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


### e_006: setup {#e_006}

**Brief Description**
: Set up an interactive environmnet to use a specific base release.

**Detailed Description**
: …

**Status**
: 🔵**Done**🔵

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


### e_007: layer {#e_007}

**Brief Description**
: Create a test release as a "sub-spack" dependent on a base release.

**Detailed Description**
: …

**Status**
: 🟢**Almost done**🟢

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


### e_008: build {#e_008}

**Brief Description**
: Produce one or more built products by following the recipes provided
  by the corresponding packaged products.

**Detailed Description**
: …

**Status**
: 🔵**Done**🔵

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


### e_009: register {#e_009}

**Brief Description**
: …

**Detailed Description**
: …

**Status**
: 🟢**Almost done**🟢

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


### e_010: build {#e_010}

**Brief Description**
: …

**Detailed Description**
: …

**Status**
: 🟢**Almost done**🟢

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


### e_011: upload {#e_011}

**Brief Description**
: …

**Detailed Description**
: …

**Status**
: 🟢**Almost done**🟢

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


### e_012: upload {#e_012}

**Brief Description**
: …

**Detailed Description**
: …

**Status**
: 🟡**In progress**🟡

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


### e_013: instantiate {#e_013}

**Brief Description**
: …

**Detailed Description**
: …

**Status**
: 🔵**Done**🔵

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


### e_014: package {#e_014}

**Brief Description**
: …

**Detailed Description**
: …

**Status**
: 🔵**Done**🔵

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


### e_015: specify config {#e_015}

**Brief Description**
: …

**Detailed Description**
: …

**Status**
: 🟢**Almost done**🟢

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


### e_016: create {#e_016}

**Brief Description**
: …

**Detailed Description**
: …

**Status**
: 🟢**Almost done**🟢

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


### e_017: create {#e_017}

**Brief Description**
: …

**Detailed Description**
: …

**Status**
: 🟢**Almost done**🟢

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


### e_018: install {#e_018}

**Brief Description**
: …

**Detailed Description**
: …

**Status**
: 🔵**Done**🔵

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


### e_019: install {#e_019}

**Brief Description**
: …

**Detailed Description**
: …

**Status**
: 🔵**Done**🔵

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


### e_020: install {#e_020}

**Brief Description**
: …

**Detailed Description**
: …

**Status**
: 🔵**Done**🔵

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


### e_021: retrieve {#e_021}

**Brief Description**
: …

**Detailed Description**
: …

**Status**
: 🟡**In progress**🟡

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


### e_022: retrieve {#e_022}

**Brief Description**
: …

**Detailed Description**
: …

**Status**
: 🟡**In progress**🟡

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


### e_023: retrieve {#e_023}

**Brief Description**
: …

**Detailed Description**
: …

**Status**
: 🟡**In progress**🟡

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


### e_024: relocate {#e_024}

**Brief Description**
: …

**Detailed Description**
: …

**Status**
: 🟢**Almost done**🟢

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


### e_025: setup {#e_025}

**Brief Description**
: …

**Detailed Description**
: …

**Status**
: 🔵**Done**🔵

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


### e_026: setup-for-dev {#e_026}

**Brief Description**
: …

**Detailed Description**
: …

**Status**
: 🟡**In progress**🟡

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


### e_027: submit {#e_027}

**Brief Description**
: …

**Detailed Description**
: …

**Status**
: 🔵**Done**🔵

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


### e_028: build {#e_028}

**Brief Description**
: …

**Detailed Description**
: …

**Status**
: 🟢**Almost done**🟢

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


### e_029: create {#e_029}

**Brief Description**
: …

**Detailed Description**
: …

**Status**
: 🔵**Done**🔵

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


### e_030: trigger {#e_030}

**Brief Description**
: …

**Detailed Description**
: …

**Status**
: 🔵**Done**🔵

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


### e_031: process {#e_031}

**Brief Description**
: …

**Detailed Description**
: …

**Status**
: 🟡**In progress**🟡

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


### e_032: report {#e_032}

**Brief Description**
: …

**Detailed Description**
: …

**Status**
: 🔵**Done**🔵

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


### e_033: install {#e_033}

**Brief Description**
: …

**Detailed Description**
: …

**Status**
: 🔵**Done**🔵

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


### e_034: use {#e_034}

**Brief Description**
: …

**Detailed Description**
: …

**Status**
: 🔵**Done**🔵

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


### e_035: package {#e_035}

**Brief Description**
: …

**Detailed Description**
: …

**Status**
: 🔵**Done**🔵

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


### e_036: install {#e_036}

**Brief Description**
: …

**Detailed Description**
: …

**Status**
: 🔵**Done**🔵

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

![Spack Workflow Diagram](spack.svg){#swd width=30cm alt="Schematic
describing stages in anticipated Spack workflows as nodes, with
processes implementing progression between stages as edges."}
