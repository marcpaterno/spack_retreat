# Spack at FNAL: System Components and Tasks

## Overview

This document describes the components (nodes) and tasks (edges) in the [workflow diagram below](#Workflow):

For each component or task, we provide:

1. Name and unique ID
1. Brief description
1. Detailed description (optional)
1. Status
1. Detailed status (optional)
1. Work lead (optional)
1. Work contributors (optional)
1. Work time estimate in FTE days (optional)


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

## Workflow

![Spack Workflow Diagram](spack.svg){#swd usemap="#spack_workflow" alt="Schematic
describing stages in anticipated Spack workflows as nodes, with
processes implementing progression between stages as edges."}

## Components

[/0/]: # Uneditable checked/unchecked checkboxes for cut/paste:
[/1/]: #
[/2/]: # ☑ 
[/3/]: #
[/4/]: # ☐ 

### n_000: Request for products {#request_for_products}

**Brief Description**
: An incoming request for a product to be built and packaged.

**Status**
: 🟢**Questions**🟢

**Detailed status**
:

* ☐ Do we wish to allow email requests, or require tickets? If the
  latter, to which system and/or GitHub project, and should we have
  issue templates for the purpose?

**Work lead**
: …

**Work contributors**
: …

**Work time estimate (FTE days)**
: …


### n_001: Request for products area {#request_for_products_area}

**Brief Description**
: An incoming request for a new area for installed products.

**Status**
: 🟢**Questions**🟢

**Detailed status**
:

* ☐ Do we wish to allow email requests, or require tickets? If the
  latter, to which system and/or GitHub project, and should we have
  issue templates for the purpose?

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
: A "packaged product" in the context of Spack is a recipe
  (`package.py`{.console} and any ancillary files such as patches)
  capable of building the product to the desired specification, along
  with any new or updated recipes required to build dependencies. These
  recipes should be made available either from Spack's main repository
  (preferred), or from one or more dedicated recipe repositories
  accessible to the requester.

**Status**
: 🔵**Done**🔵

### n_003: Built product server {#scisoft}

**Brief Description**
: An online location from which built products may be obtained.

**Detailed Description**
: Specifically: a Spack build cache to/from which built products may be placed/downloaded by means of Spack commands.

**Status**
: 🔵**Done**🔵

**Detailed status**
:

* ☑ Several build caches exist, served by `scisoft.fnal.gov`.

* ☑ Build caches may be populated via `spack buildcache create` on a
  node with a write-access mount to `/nasroot/SciSoft/` via NFSv4.

* ☑ Build caches are accessible from offsite via HTTPS and properly
  configured Spack instances.


### n_004: Suite configuration server {#suite_config_server}

**Brief Description**
: An online location from which concretized (fully-specified)
  configurations of consistent suites of built products may be obtained.

**Detailed Description**
: Specifically: `spack.lock` files shall be available to on- and offsite
  users via HTTPS.

**Status**
: 🟡**In progress**🟡

**Detailed status**
:

* ☑ The existing infrastructure for uploading UPS packages, bundle
  configurations, and manifests, and Spack `spack.yaml` files may be
  leveraged to upload and provide indexed HTTPS access to `spack.lock`
  files.

* ☐ A naming convention must be conceived and implemented to enable
  unambiguous identification of fully concretized environment
  configurations.

* ☐ Upload infrastructure must be extended to follow the developed
  naming convention.

* ☐ Infrastructure must be developed to facilitate identification and
  download of appropriate `spack.lock` files according to the
  destination architecture, and user requirements.


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
: A "built product" is an built and/or installed package within a Spack instance.

**Status**
: 🔵**Done**🔵


### n_006: Built suites {#built_env}

**Brief Description**
: A consistent suite of [built products](#built_products).

**Status**
: 🔵**Done**🔵


### n_007: Packaged suites {#packaged_suites}

**Brief Description**
: A consistent suite of [packaged products](#packaged_products).

**Status**
: 🔵**Done**🔵


### n_008: Release config repository {#release_config}

**Brief Description**
: A repository of information containing package and suite information
  from which a Spack environment may be created.

**Detailed Description**
: Given the desirability of being able to produce different [packaged
  suites](#packaged_suites) that are consistent and can interoperate
  with each other, information about package versions and configurations
  should be accessible for the generation of Spack environments
  describing suite configurations.

**Status**
: 🟢**Almost done**🟢

**Detailed status**
:

* ☑ A basic implementation of a release config repository exists at
  https://cdcvs.fnal.gov/redmine/projects/build-framework/repository

* ☐ Package configurations (currently in multiple `.yaml.in` files)
  should be factored-out and stored in a way more conducive to their
  consistent reuse in multiple `.yaml.in` files.
  
* ☐ `.yaml.in` files should make use of recent improvements to the
  provision of YAML `include` facilities in Spack environment
  configuration files.

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

**Status**
: 🔵**Done**🔵

**Detailed status**
:

*  ☑ Scripts exist to facilitate the creation and population of
   consistently-configured and populated Spack instances.


### n_010: Test release {#test_release}

**Brief Description**
: A secondary Spack instance containing built packages requiring either
  a base release or a CVMFS Spack instance for consistent operation.

**Status**
: 🔵**Done**🔵

**Detailed status**
:

*  ☑ Scripts exist to facilitate the creation and population of
   consistently-configured and populated Spack instances.


### n_011: CVMFS {#CVMFS}

**Brief Description**
: A Spack instance containing built packages installed in a CVMFS
  filesystem.

**Status**
: 🔵**Done**🔵

**Detailed status**
:

*  ☑ Scripts exist to facilitate the creation and population of
   consistently-configured and populated Spack instances.


### n_012: Runtime environment {#runtime}

**Brief Description**
: An environment configured to use a CVMFS spack instance, base release,
  or test release for execution purposes.

**Status**
: 🔵**Done**🔵


### n_013: Grid environment {#grid}

**Brief Description**
: A non-interactive runtime environment configured for remote and/or
  batch execution.

**Status**
: 🔵**Done**🔵


### n_014: Development environment {#development}

**Brief Description**
: An interactive runtime environment configured for software
  development.

**Status**
: 🟡**In progress**🟡

**Detailed status**
: See [setup-for-dev](#e_026).


### n_015: Pull requests (PR) {#PR}

**Brief Description**
: One or more related GitHub PRs intended for merge into one or more
  package source repositories.

**Status**
: 🟢**Almost done**🟢

**Detailed status**
: ☐ The implementation of [trigger](#e_030) must specify a way to link
  PRs in separate repositories for group inclusion in a [CI test
  process](#e_031).


### n_016: Continuous Integration (CI) {#CI}

**Brief Description**
: A CI system capable of building and testing released, un-released, or
  unmerged software, or combinations thereof.

**Status**
: 🔴**Problematic**🔴

**Detailed status**
:

* ☑ A CI system exists capable of producing [built
  suites](#built_suites) of released products using Spack.
  
* ☐ We require a method of specifying that certain [built
  products](#built_products) shall be tested while others shall not.

* ☐ We require a system capable of providing configured CI processes for
  different organizations and [built suites](#built_suites) that
  minimizes process-specific accommodations beyond simple CI job
  configuration.

* ☐ We require a system capable of building and testing specified
  combinations of released, un-released, or unmerged software.

* ☐ We require a system capable of building and testing released
  software in such a way that [built suites](#build_suites) may be
  easily [uploaded](#e_012) to a [built product server](#scisoft).

**Work lead**
: …

**Work contributors**
: …

**Work time estimate (FTE days)**
: …


## Tasks


### e_000: setup {#e_000}

**Brief Description**
: Set up a [grid environment](#grid) to use a specific [CVMFS-based
  Spack instance](#CVMFS).

**Detailed Description**
: …

**Status**
: 🔵**Done**🔵

**Detailed status**
: …

**Work lead**
: …

**Work contributors**
: …

**Work time estimate (FTE days)**
: …


### e_001: setup {#e_001}

**Brief Description**
: Set up an [interactive environment](#runtime) to use a specific
  [CVMFS-based Spack instance](#CVMFS).

**Detailed Description**
: …

**Status**
: 🔵**Done**🔵

**Detailed status**
: …

**Work lead**
: …

**Work contributors**
: …

**Work time estimate (FTE days)**
: …


### e_002: layer {#e_002}

**Brief Description**
: Create a [base release](#base_release) as a "sub-spack" dependent on a
  [CVMFS-based Spack instance](#CVMFS).

**Detailed Description**
: …

**Status**
: 🟢**Almost done**🟢

**Detailed status**
: …

**Work lead**
: …

**Work contributors**
: …

**Work time estimate (FTE days)**
: …


### e_003: publish {#e_003}

**Brief Description**
: Make changes to a [CVMFS-based Spack instance](#CVMFS) visible.

**Detailed Description**
: …

**Status**
: 🔵**Done**🔵

**Detailed status**
: …

**Work lead**
: …

**Work contributors**
: …

**Work time estimate (FTE days)**
: …


### e_004: upload {#e_004}

**Brief Description**
: Upload one or more [built products](#built_products) to a [server](#scisoft).

**Detailed Description**
: …

**Status**
: 🟢**Almost done**🟢

**Detailed status**
: …

**Work lead**
: …

**Work contributors**
: …

**Work time estimate (FTE days)**
: …


### e_005: relocate {#e_005}

**Brief Description**
: Make a [base release](#base_release) accessible in a [grid
  environment](#grid).

**Detailed Description**
: …

**Status**
: 🟢**Almost done**🟢

**Detailed status**
: …

**Work lead**
: …

**Work contributors**
: …

**Work time estimate (FTE days)**
: …


### e_006: setup {#e_006}

**Brief Description**
: Set up an [interactive environment](#runtime) to use a specific [base
  release](#base_release).

**Detailed Description**
: …

**Status**
: 🔵**Done**🔵

**Detailed status**
: …

**Work lead**
: …

**Work contributors**
: …

**Work time estimate (FTE days)**
: …


### e_007: layer {#e_007}

**Brief Description**
: Create a [test release](#test_release) as a "sub-spack" dependent on a [base
  release](#base_release).

**Detailed Description**
: …

**Status**
: 🟢**Almost done**🟢

**Detailed status**
: …

**Work lead**
: …

**Work contributors**
: …

**Work time estimate (FTE days)**
: …


### e_008: build {#e_008}

**Brief Description**
: Produce one or more [built products](#built_products) by following the recipes
  provided by the corresponding [packaged products](#packaged_products).

**Detailed Description**
: …

**Status**
: 🔵**Done**🔵

**Detailed status**
: …

**Work lead**
: …

**Work contributors**
: …

**Work time estimate (FTE days)**
: …


### e_009: register {#e_009}

**Brief Description**
: Upload [non-concretized (loosely specified) configurations](#packaged_products) of
  suites of products to the [release config repository](#release_config).

**Detailed Description**
: …

**Status**
: 🟢**Almost done**🟢

**Detailed status**
: …

**Work lead**
: …

**Work contributors**
: …

**Work time estimate (FTE days)**
: …


### e_010: build {#e_010}

**Brief Description**
: Build a [specified consistent suite](#packaged_suites) of [packaged
  products](#built_env).

**Detailed Description**
: …

**Status**
: 🟢**Almost done**🟢

**Detailed status**
: …

**Work lead**
: …

**Work contributors**
: …

**Work time estimate (FTE days)**
: …


### e_011: upload {#e_011}

**Brief Description**
: Upload [built products](#built_env) to an [online location](#scisoft).

**Detailed Description**
: …

**Status**
: 🟢**Almost done**🟢

**Detailed status**
: …

**Work lead**
: …

**Work contributors**
: …

**Work time estimate (FTE days)**
: …


### e_012: upload {#e_012}

**Brief Description**
: Upload concretized (fully-specified) configuration for a consistent
  suite of [built products](#built_env) to a [server](#suite_config_server).

**Detailed Description**
: …

**Status**
: 🟡**In progress**🟡

**Detailed status**
: …

**Work lead**
: …

**Work contributors**
: …

**Work time estimate (FTE days)**
: …


### e_013: instantiate {#e_013}

**Brief Description**
: Create a suitably-configured Spack instance, and generate a Spack
  environment describing a specific consistent suite of [packaged
  products](#packaged_suites) from information in a [release configuration
  repository](#release_config).

**Detailed Description**
: …

**Status**
: 🔵**Done**🔵

**Detailed status**
: …

**Work lead**
: …

**Work contributors**
: …

**Work time estimate (FTE days)**
: …


### e_014: package {#e_014}

**Brief Description**
: Create [Spack recipe(s)](#packaged_products) describing how to build [requested
  products](#request_for_products).

**Detailed Description**
: …

**Status**
: 🔵**Done**🔵

**Detailed status**
: …

**Work lead**
: …

**Work contributors**
: …

**Work time estimate (FTE days)**
: …


### e_015: specify config {#e_015}

**Brief Description**
: Add information to the [release config repository](#release_config) to enable
  the creation of the [requested products](#request_for_products) via generated Spack
  environments.

**Detailed Description**
: …

**Status**
: 🟢**Almost done**🟢

**Detailed status**
: …

**Work lead**
: …

**Work contributors**
: …

**Work time estimate (FTE days)**
: …


### e_016: create {#e_016}

**Brief Description**
: Create and publish a [Spack instance in a CVMFS filesystem](#n012)
  according to an [initial request](#request_for_products_area).

**Detailed Description**
: …

**Status**
: 🟢**Almost done**🟢

**Detailed status**
: …

**Work lead**
: …

**Work contributors**
: …

**Work time estimate (FTE days)**
: …


### e_017: create {#e_017}

**Brief Description**
: Create a [Spack instance in a shared, non-CVMFS filesystem](#base_release)
  according to an [initial request](#request_for_products_area).

**Detailed Description**
: …

**Status**
: 🟢**Almost done**🟢

**Detailed status**
: …

**Work lead**
: …

**Work contributors**
: …

**Work time estimate (FTE days)**
: …


### e_018: install {#e_018}

**Brief Description**
: Obtain built products from a [server](#scisoft) to create a [CVMFS
  release](#test_release).

**Detailed Description**
: …

**Status**
: 🔵**Done**🔵

**Detailed status**
: …

**Work lead**
: …

**Work contributors**
: …

**Work time estimate (FTE days)**
: …


### e_019: install {#e_019}

**Brief Description**
: Obtain built products from a [server](#scisoft) to create a [base
  release](#base_release) with the desired configuration.

**Detailed Description**
: …

**Status**
: 🔵**Done**🔵

**Detailed status**
: …

**Work lead**
: …

**Work contributors**
: …

**Work time estimate (FTE days)**
: …


### e_020: install {#e_020}

**Brief Description**
: Obtain built products from a [server](#scisoft) to create a [base
  release](#test_release) with the desired configuration.

**Detailed Description**
: …

**Status**
: 🔵**Done**🔵

**Detailed status**
: …

**Work lead**
: …

**Work contributors**
: …

**Work time estimate (FTE days)**
: …


### e_021: retrieve {#e_021}

**Brief Description**
: Obtain the necessary specific suite configurations from the
  [configuration server](#suite_config_server) to create a [CVMFS release](#CVMFS)
  with the desired configuration.

**Detailed Description**
: …

**Status**
: 🟡**In progress**🟡

**Detailed status**
: …

**Work lead**
: …

**Work contributors**
: …

**Work time estimate (FTE days)**
: …


### e_022: retrieve {#e_022}

**Brief Description**
: Obtain the necessary specific suite configurations from the
  [configuration server](#suite_config_server) to create a [base release](#base_release) with
  the desired configuration.

**Detailed Description**
: …

**Status**
: 🟡**In progress**🟡

**Detailed status**
: …

**Work lead**
: …

**Work contributors**
: …

**Work time estimate (FTE days)**
: …


### e_023: retrieve {#e_023}

**Brief Description**
: Obtain the necessary specific suite configurations from the
  [configuration server](#suite_config_server) to create a [test release](#test_release) with
  the desired configuration.

**Detailed Description**
: …

**Status**
: 🟡**In progress**🟡

**Detailed status**
: …

**Work lead**
: …

**Work contributors**
: …

**Work time estimate (FTE days)**
: …


### e_024: relocate {#e_024}

**Brief Description**
: Make a [test release](#test_release) accessible in a [grid
  environment](#grid).

**Detailed Description**
: …

**Status**
: 🟢**Almost done**🟢

**Detailed status**
: …

**Work lead**
: …

**Work contributors**
: …

**Work time estimate (FTE days)**
: …


### e_025: setup {#e_025}

**Brief Description**
: Set up an [interactive environment](#runtime) to use a specific [test
  release](#test_release).

**Detailed Description**
: …

**Status**
: 🔵**Done**🔵

**Detailed status**
: …

**Work lead**
: …

**Work contributors**
: …

**Work time estimate (FTE days)**
: …


### e_026: setup-for-dev {#e_026}

**Brief Description**
: Convert an [interactive environment](#runtime) into an [environemt
  suitable for the development of one or more products](#development).

**Detailed Description**
: …

**Status**
: 🟡**In progress**🟡

**Detailed status**
: …

**Work lead**
: …

**Work contributors**
: …

**Work time estimate (FTE days)**
: …


### e_027: submit {#e_027}

**Brief Description**
: Make an [interactive environment](#runtime) accessible in a [grid
  environment](#grid).

**Detailed Description**
: …

**Status**
: 🔵**Done**🔵

**Detailed status**
: …

**Work lead**
: …

**Work contributors**
: …

**Work time estimate (FTE days)**
: …


### e_028: build {#e_028}

**Brief Description**
: Build from local sources, making necessary changes or additions to
  local sources in an interactive [development environment](#development).

**Detailed Description**
: …

**Status**
: 🟢**Almost done**🟢

**Detailed status**
: …

**Work lead**
: …

**Work contributors**
: …

**Work time estimate (FTE days)**
: …


### e_029: create {#e_029}

**Brief Description**
: Create a [GitHub PR](#PR) based on sources in a [development
  environment](#development).

**Detailed Description**
: …

**Status**
: 🔵**Done**🔵

**Detailed status**
: …

**Work lead**
: …

**Work contributors**
: …

**Work time estimate (FTE days)**
: …


### e_030: trigger {#e_030}

**Brief Description**
: Trigger a build process in a [CI](#CI) system based on a [GitHub
  PR](#PR).

**Detailed Description**
: …

**Status**
: 🔵**Done**🔵

**Detailed status**
: …

**Work lead**
: …

**Work contributors**
: …

**Work time estimate (FTE days)**
: …


### e_031: process {#e_031}

**Brief Description**
: Execute Spack-based builds in a [CI](#CI) system.

**Detailed Description**
: …

**Status**
: 🟡**In progress**🟡

**Detailed status**
: …

**Work lead**
: …

**Work contributors**
: …

**Work time estimate (FTE days)**
: …


### e_032: report {#e_032}

**Brief Description**
: Retrieve status and built products from a [CI](#CI) system, updating
  the state of the triggering [PR](#PR).

**Detailed Description**
: …

**Status**
: 🔵**Done**🔵

**Detailed status**
: …

**Work lead**
: …

**Work contributors**
: …

**Work time estimate (FTE days)**
: …


### e_033: install {#e_033}

**Brief Description**
: Install [locally-built products](#development) into a [base release](#base_release).

**Detailed Description**
: …

**Status**
: 🔵**Done**🔵

**Detailed status**
: …

**Work lead**
: …

**Work contributors**
: …

**Work time estimate (FTE days)**
: …


### e_034: use {#e_034}

**Brief Description**
: Use [locally-built products](#development) in a [grid environment](#grid).

**Detailed Description**
: …

**Status**
: 🔵**Done**🔵

**Detailed status**
: …

**Work lead**
: …

**Work contributors**
: …

**Work time estimate (FTE days)**
: …


### e_035: package {#e_035}

**Brief Description**
: Finalize [recipe changes/additions](#packaged_products) from
  [development environment](#development)

**Detailed Description**
: …

**Status**
: 🔵**Done**🔵

**Detailed status**
: …

**Work lead**
: …

**Work contributors**
: …

**Work time estimate (FTE days)**
: …


### e_036: install {#e_036}

**Brief Description**
: Install products built in a [development environment](#development)
  into a [test release](#test).

**Detailed Description**
: …

**Status**
: 🔵**Done**🔵

**Detailed status**
: …

**Work lead**
: …

**Work contributors**
: …

**Work time estimate (FTE days)**
: …
