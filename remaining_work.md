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


### n_000: Request for products {#n_000}

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


### n_001: Request for products area {#n_001}

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


### n_002: Packaged products {#n_002}

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


### n_003: Built product server {#n_003}

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


### n_004: Suite configuration server {#n_004}

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


### n_005: Built products {#n_005}

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


### n_006: Built suites {#n_006}

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


### n_007: Packaged suites {#n_007}

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


### n_008: Release config repository {#n_008}

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


### n_009: Results of build {#n_009}

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


### n_010: Base release {#n_010}

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


### n_011: Test release {#n_011}

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


### n_012: CVMFS {#n_012}

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


### n_013: Runtime environment {#n_013}

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


### n_014: Grid environment {#n_014}

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


### n_015: Development environment {#n_015}

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


### n_016: Pull request {#n_016}

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


### n_017: CI {#n_017}

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

**Components connected**
: [n\_012](#n_012) -> [n\_014](#n_014)

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

**Components connected**
: [n\_012](#n_012) -> [n\_013](#n_013)

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

**Components connected**
: [n\_012](#n_012) -> [n\_010](#n_010)

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

**Components connected**
: [n\_012](#n_012) -> [n\_012](#n_012)

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

**Components connected**
: [n\_005](#n_005) -> [n\_003](#n_003)

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

**Components connected**
: [n\_010](#n_010) -> [n\_014](#n_014)

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

**Components connected**
: [n\_010](#n_010) -> [n\_013](#n_013)

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

**Components connected**
: [n\_010](#n_010) -> [n\_011](#n_011)

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

**Components connected**
: [n\_002](#n_002) -> [n\_005](#n_005)

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

**Components connected**
: [n\_002](#n_002) -> [n\_008](#n_008)

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

**Components connected**
: [n\_007](#n_007) -> [n\_006](#n_006)

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

**Components connected**
: [n\_006](#n_006) -> [n\_003](#n_003)

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

**Components connected**
: [n\_006](#n_006) -> [n\_006](#n_004)

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

**Components connected**
: [n\_008](#n_008) -> [n\_007](#n_007)

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

**Components connected**
: [n\_000](#n_000) -> [n\_002](#n_002)

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

**Components connected**
: [n\_000](#n_000) -> [n\_008](#n_008)

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

**Components connected**
: [n\_001](#n_001) -> [n\_012](#n_012)

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

**Components connected**
: [n\_001](#n_001) -> [n\_010](#n_010)

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

**Components connected**
: [n\_004](#n_004) -> [n\_011](#n_011)

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

**Components connected**
: [n\_003](#n_003) -> [n\_010](#n_010)

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

**Components connected**
: [n\_003](#n_003) -> [n\_011](#n_011)

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

**Components connected**
: [n\_001](#n_001) -> [n\_010](#n_010)

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

**Components connected**
: [n\_004](#n_004) -> [n\_010](#n_010)

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

**Components connected**
: [n\_004](#n_004) -> [n\_011](#n_011)

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

**Components connected**
: [n\_011](#n_011) -> [n\_014](#n_014)

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

**Components connected**
: [n\_011](#n_011) -> [n\_013](#n_013)

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

**Components connected**
: [n\_013](#n_013) -> [n\_015](#n_015)

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

**Components connected**
: [n\_013](#n_013) -> [n\_014](#n_014)

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

**Components connected**
: [n\_015](#n_015) -> [n\_009](#n_009)

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

**Components connected**
: [n\_015](#n_015) -> [n\_016](#n_016)

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

**Components connected**
: [n\_016](#n_016) -> [n\_017](#n_017)

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

**Components connected**
: [n\_017](#n_017) -> [n\_017](#n_017)

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

**Components connected**
: [n\_017](#n_017) -> [n\_016](#n_016)

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


### e_033: tweak {#e_033}

**Components connected**
: [n\_009](#n_009) -> [n\_015](#n_015)

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


### e_034: install {#e_034}

**Components connected**
: [n\_009](#n_009) -> [n\_010](#n_010)

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


### e_035: use {#e_035}

**Components connected**
: [n\_009](#n_009) -> [n\_014](#n_014)

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


### e_036: package {#e_036}

**Components connected**
: [n\_009](#n_009) -> [n\_002](#n_002)

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


### e_037: install {#e_037}

**Components connected**
: [n\_009](#n_009) -> [n\_011](#n_011)

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
