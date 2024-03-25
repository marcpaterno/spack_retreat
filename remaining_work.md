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
[/2/]: # * ☑
[/3/]: #
[/4/]: # * ☐

### [n_000](spack.svg#n_000): Request for products {#request_for_products}

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


### [n_001](spack.svg#n_001): Request for products area {#request_for_products_area}

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


### [n_002](spack.svg#n_002): Packaged products {#packaged_products}

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

### [n_003](spack.svg#n_003): Built product server {#scisoft}

**Brief Description**
: An online location from which built products may be obtained.

**Detailed Description**
: Specifically: a Spack build cache to/from which built products may be placed/downloaded by means of Spack commands.

**Status**
: 🔵**Done**🔵

**Detailed status**
:

* ☑ Several build caches exist, served by `scisoft.fnal.gov`{.console}.

* ☑ Build caches may be populated via `spack buildcache
  create`{.console} on a node with a write-access mount to
  `/nasroot/SciSoft/`{.console} via NFSv4.

* ☑ Build caches are accessible from offsite via HTTPS and properly
  configured Spack instances.


### [n_004](spack.svg#n_004): Suite configuration server {#suite_config_server}

**Brief Description**
: An online location from which concretized (fully-specified)
  configurations of consistent suites of built products may be obtained.

**Detailed Description**
: Specifically: `spack.lock`{.console} files shall be available to on-
  and offsite users via HTTPS.

**Status**
: 🟡**In progress**🟡

**Detailed status**
:

* ☑ The existing infrastructure for uploading UPS packages, bundle
  configurations, and manifests, and Spack `spack.yaml`{.console} files
  may be leveraged to upload and provide indexed HTTPS access to
  `spack.lock`{.console} files.

* ☐ A naming convention must be conceived and implemented to enable
  unambiguous identification of fully concretized environment
  configurations.

* ☐ Upload infrastructure must be extended to follow the developed
  naming convention.

* ☐ Infrastructure must be developed to facilitate identification and
  download of appropriate `spack.lock`{.console} files according to the
  destination architecture, and user requirements.


**Work lead**
: …

**Work contributors**
: …

**Work time estimate (FTE days)**
: …


### [n_005](spack.svg#n_005): Built products {#built_products}

**Brief Description**
: One or more locally-built products.

**Detailed Description**
: A "built product" is an built and/or installed package within a Spack instance.

**Status**
: 🔵**Done**🔵


### [n_006](spack.svg#n_006): Built suites {#built_env}

**Brief Description**
: A consistent suite of [built products](#built_products).

**Status**
: 🔵**Done**🔵


### [n_007](spack.svg#n_007): Packaged suites {#packaged_suites}

**Brief Description**
: A consistent suite of [packaged products](#packaged_products).

**Status**
: 🔵**Done**🔵


### [n_008](spack.svg#n_008): Release config repository {#release_config}

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

* ☐ Package configurations (currently in multiple `.yaml.in`{.console}
  files) should be factored-out and stored in a way more conducive to
  their consistent reuse in multiple `.yaml.in`{.console} files.

* ☐ `.yaml.in`{.console} files should make use of recent improvements to
  the provision of YAML `include`{.yaml} facilities in Spack environment
  configuration files.

**Work lead**
: …

**Work contributors**
: …

**Work time estimate (FTE days)**
: …


### [n_009](spack.svg#n_009): Base release {#base_release}

**Brief Description**
: A Spack instance containing built packages installed in a shared,
  non-CVMFS filesystem.

**Status**
: 🔵**Done**🔵

**Detailed status**
:

*  ☑ Scripts exist to facilitate the creation and population of
   consistently-configured and populated Spack instances.


### [n_010](spack.svg#n_010): Test release {#test_release}

**Brief Description**
: A secondary Spack instance containing built packages requiring either
  a base release or a CVMFS Spack instance for consistent operation.

**Status**
: 🔵**Done**🔵

**Detailed status**
:

*  ☑ Scripts exist to facilitate the creation and population of
   consistently-configured and populated Spack instances.


### [n_011](spack.svg#n_011): CVMFS {#CVMFS}

**Brief Description**
: A Spack instance containing built packages installed in a CVMFS
  filesystem.

**Status**
: 🔵**Done**🔵

**Detailed status**
:

*  ☑ Scripts exist to facilitate the creation and population of
   consistently-configured and populated Spack instances.


### [n_012](spack.svg#n_012): Runtime environment {#runtime}

**Brief Description**
: An environment configured to use a CVMFS spack instance, base release,
  or test release for execution purposes.

**Status**
: 🔵**Done**🔵


### [n_013](spack.svg#n_013): Grid environment {#grid}

**Brief Description**
: A non-interactive runtime environment configured for remote and/or
  batch execution.

**Status**
: 🔵**Done**🔵


### [n_014](spack.svg#n_014): Development environment {#development}

**Brief Description**
: An interactive runtime environment configured for software
  development.

**Status**
: 🟡**In progress**🟡

**Detailed status**
: See [setup-for-dev](#e_026).


### [n_015](spack.svg#n_015): Pull requests (PR) {#PR}

**Brief Description**
: One or more related GitHub PRs intended for merge into one or more
  package source repositories.

**Status**
: 🟢**Almost done**🟢

**Detailed status**
: ☐ The implementation of [trigger](spack.svg#e_030) must specify a way
  to link PRs in separate repositories for group inclusion in a [CI test
  process](spack.svg#e_031).


### [n_016](spack.svg#n_016): Continuous Integration (CI) {#CI}

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


### [e_000](spack.svg#e_000): setup {#e_000}

**Brief Description**
: Set up a [grid environment](#grid) to use a specific [CVMFS-based
  Spack instance](#CVMFS).

**Status**
: 🔵**Done**🔵

**Detailed status**
:

* ☑ Given an existing [CVMFS-based Spack instance](#CVMFS), the
  `make_subspack`{.console} script will create and configure a
  subordinate Spack instance.


### [e_001](spack.svg#e_001): setup {#e_001}

**Brief Description**
: Set up an [interactive environment](#runtime) to use a specific
  [CVMFS-based Spack instance](#CVMFS).

**Status**
: 🔵**Done**🔵

**Detailed status**
:

* ☑ Given an existing [CVMFS-based Spack instance](#CVMFS), the
  `make_subspack`{.console} script will create and configure a
  subordinate Spack instance.


### [e_002](spack.svg#e_002): layer {#e_002}

**Brief Description**
: Create a [base release](#base_release) as a "sub-spack" dependent on a
  [CVMFS-based Spack instance](#CVMFS).

**Status**
: 🔵**Done**🔵

**Detailed status**
:

* ☑ Given an existing [CVMFS-based Spack instance](#CVMFS), the
  `make_subspack`{.console} script will create and configure a
  subordinate Spack instance.


### [e_003](spack.svg#e_003): publish {#e_003}

**Brief Description**
: Make changes to a [CVMFS-based Spack instance](#CVMFS) visible.

**Status**
: 🔵**Done**🔵

**Detailed status**
:

* ☑ The ability to publish changes to a CVMFS-based filesystem is an
  existing feature of the system.


### [e_004](spack.svg#e_004): upload {#e_004}

**Brief Description**
: Upload one or more [built products](#built_products) to a [server](#scisoft).

**Status**
: 🟢**Almost done**🟢

**Detailed status**
:

* ☑ Spack build caches are provided in multiple public, online locations
  by Fermilab.

* ☐ We must organize, consolidate, and document the availability of
  public build caches.

* ☐ We must provide for the long term maintenance and storage
  requirements of public build caches.

* ☐ We must be aware of and have a plan to manage possible compatibility
  issues caused by uploading built products to a build cache with
  different versions of Spack.

**Work lead**
: …

**Work contributors**
: …

**Work time estimate (FTE days)**
: …


### [e_005](spack.svg#e_005): relocate {#e_005}

**Brief Description**
: Make a [base release](#base_release) accessible in a [grid
  environment](#grid).

**Detailed Description**
: In the absence of a shared filesystem, create a [grid
  environment](#grid) containing the elements of a given [base
  release](#base_release) necessary to enable the desired remote
  computational activity.

**Status**
: 🟢**Almost done**🟢

**Detailed status**
:

* ☑ The facility exists to be able to export the necessary built
  products and/or suites to a build cache which can then be uploaded to
  a remote node as part of a grid submission.

* ☐ We require a script enabling a user to specify the required software
  environment and execute the packaging operations necessary to export
  same.

* ☐ We need to provide a mechanism for submitting grid jobs which will
  ensure the upload of the created build cache, and its use in creating
  a correctly configured execution environment on the execution node.

**Work lead**
: …

**Work contributors**
: …

**Work time estimate (FTE days)**
: …


### [e_006](spack.svg#e_006): setup {#e_006}

**Brief Description**
: Set up an [interactive environment](#runtime) to use a specific [base
  release](#base_release).

**Status**
: 🔵**Done**🔵

**Detailed status**
:

* ☑ Given an existing [base release](#base_release), the
  `make_subspack`{.console} script will create and configure a
  subordinate Spack instance.


### [e_007](spack.svg#e_007): layer {#e_007}

**Brief Description**
: Create a [test release](#test_release) as a "sub-spack" dependent on a [base
  release](#base_release).

**Status**
: 🔵**Done**🔵

**Detailed status**
:

* ☑ Given an existing [base release](#base_release), the
  `make_subspack`{.console} script will create and configure a
  subordinate Spack instance.


### [e_008](spack.svg#e_008): build {#e_008}

**Brief Description**
: Produce one or more [built products](#built_products) by following the recipes
  provided by the corresponding [packaged products](#packaged_products).

**Status**
: 🔵**Done**🔵

**Detailed status**
:

* ☑ The required functionality is provided by the `spack
  install`{.console} command.


### [e_009](spack.svg#e_009): register {#e_009}

**Brief Description**
: Upload [non-concretized (loosely specified) configurations](#packaged_products) of
  suites of products to the [release config repository](#release_config).

**Status**
: 🟢**Almost done**🟢

**Detailed status**
:

* See current status of [release config repository](#release_config).

* ☑ A suitable online location
  (`https://scisoft.fnal.gov/packages/.../buildcfg/`{.console}) exists
  to which to upload generated or manually-created Spack environment
  configuration files.

* ☑ The `copyToSciSoft`{.console} script is capable of uploading a
  suitably-named Spack environmnt configuration file to an appropriate
  online location.

* ☐ The naming convention must be documented.

* ☐ The upload procedure must be documented.


**Work lead**
: …

**Work contributors**
: …

**Work time estimate (FTE days)**
: …


### [e_010](spack.svg#e_010): build {#e_010}

**Brief Description**
: Build a [specified consistent suite](#packaged_suites) of [packaged
  products](#built_env).

**Status**
: 🟢**Almost done**🟢

**Detailed status**
:

* ☑ The `build-spack-env.sh`{.console} script enables the creation of
  one or more [specified consistent suites](#packaged_suites) given
  corresponding Spack environment configurations.

* ☐ We require a faciity to locate and retrieve Spack environment
  configurations from their [online repository](#suite_config_server)
  where appropriate.

**Work lead**
: …

**Work contributors**
: …

**Work time estimate (FTE days)**
: …


### [e_011](spack.svg#e_011): upload {#e_011}

**Brief Description**
: Upload [built products](#built_env) to an [online location](#scisoft).

**Status**
: 🟢**Almost done**🟢

**Detailed status**
:

* ☑ `spack buildcache create`{.console} is the appopriate upload
  mechanism to use for this task.

* ☐ The appropriate online location(s) for specific products and/or
  organizations should be documented, along with any specific
  authentication/authorization procedures required.

**Work lead**
: …

**Work contributors**
: …

**Work time estimate (FTE days)**
: …


### [e_012](spack.svg#e_012): upload {#e_012}

**Brief Description**
: Upload the concretized (fully-specified) configuration for a
  consistent suite of [built products](#built_env) to a
  [server](#suite_config_server).

**Status**
: 🟡**In progress**🟡

**Detailed status**
:

* ☑ A suitable online location
  (`https://scisoft.fnal.gov/packages/.../`{.console}) exists to which
  to upload the `spack.lock`{.console} files created during a
  [build](#e_010) procedure.

* ☐ We require a suitable directory organization on the [online
  location](#suite_config_server).

* ☐ We must decide upon a suitably specific naming convention for
  `spack.lock`{.console} files and provide the means to rename
  `spack.lock`{.console} files according to that convention.

* ☐ We must adapt the `copyToSciSoft`{.console} script (or provide a
  suitable alternative) to upload `spack.lock`{.console} files to an
  appropriate location on the [online location](#suite_config_server),
  creating necessary directory structure and indexing facilities as
  appropriate.


**Work lead**
: …

**Work contributors**
: …

**Work time estimate (FTE days)**
: …


### [e_013](spack.svg#e_013): instantiate {#e_013}

**Brief Description**
: Create a suitably-configured Spack instance, and generate a Spack
  environment describing a specific consistent suite of [packaged
  products](#packaged_suites) from information in a [release configuration
  repository](#release_config).

**Status**
: 🟢**Almost done**🟢

**Detailed status**
:

* ☑ We have scripts (`make_spack`{.console}, `make_subspack`{.console})
  to create suitably-configured Spack instances.

* ☑ The `build-spack-env.sh`{.console} script combines the
  [instantiate](spack.svg#e_013) and [build](spack.svg#e010) tasks.

* ☐ We require a faciity to locate and retrieve Spack environment
  configurations from their [online repository](#suite_config_server)
  where appropriate.

**Work lead**
: …

**Work contributors**
: …

**Work time estimate (FTE days)**
: …


### [e_014](spack.svg#e_014): package {#e_014}

**Brief Description**
: Create [Spack recipe(s)](#packaged_products) describing how to build [requested
  products](#request_for_products).

**Detailed Description**
: Spack `package.py`{.console} shall be created or generated, along with
  any necessary auxiliary files (e.g. patches).

**Status**
: 🟢**Almost done**🟢

**Detailed status**
:

* ☑ `spack create`{.console} will create a basic `package.py` from a
  Spack template which can then be filled out to provide a full recipe
  for building the product.

* ☐ We require a script or template to enable straightforward generation
  of recipes for building and using experiment-originated products such
  as those utilizing ROOT, or framework plugin libraries.

**Work lead**
: …

**Work contributors**
: …

**Work time estimate (FTE days)**
: …


### [e_015](spack.svg#e_015): specify config {#e_015}

**Brief Description**
: Add information to the [release config repository](#release_config) to enable
  the creation of the [requested products](#request_for_products) via generated Spack
  environments.

**Status**
: 🟢**Almost done**🟢

**Detailed status**
:

* ☑ For the [release config repository](#release_config) in its current
  form, "adding information" consists of making appropriate alterations
  to the `bundle/CMakeLists.txt`{.console} file and creating or
  modifying one or more `yaml.in`{.console} files.

* See current status of [release config repository](#release_config).


### [e_016](spack.svg#e_016): create {#e_016}

**Brief Description**
: Create and publish a [Spack instance in a CVMFS filesystem](#n012)
  according to an [initial request](#request_for_products_area).

**Detailed Description**
: …

**Status**
: 🟢**Almost done**🟢

**Detailed status**
: See current status of [instantiate](#e_013).


### [e_017](spack.svg#e_017): create {#e_017}

**Brief Description**
: Create a [Spack instance in a shared, non-CVMFS filesystem](#base_release)
  according to an [initial request](#request_for_products_area).

**Status**
: 🟢**Almost done**🟢

**Detailed status**
: See current status of [instantiate](#e_013).


### [e_018](spack.svg#e_018): install {#e_018}

**Brief Description**
: Obtain built products from a [server](#scisoft) to create a [CVMFS
  release](#test_release).

**Status**
: 🔵**Done**🔵

**Detailed status**
:

* ☑ The `build-spack-env.sh`{.console} script enables the creation of
  one or more [specified consistent suites](#packaged_suites) given
  corresponding Spack environment configurations. These products may be
  obtained pre-built from suitably-configured local or remote Spack
  build caches.


### [e_019](spack.svg#e_019): install {#e_019}

**Brief Description**
: Obtain built products from a [server](#scisoft) to create a [base
  release](#base_release) with the desired configuration.

**Status**
: 🟢**Almost done**🟢

**Detailed status**
:

* ☑ The `build-spack-env.sh`{.console} script enables the creation of
  one or more [specified consistent suites](#packaged_suites) given
  corresponding Spack environment configurations. These products may be
  obtained pre-built from suitably-configured local or remote Spack
  build caches.

* ☐ `build-spack-env.sh`{.console} must be enhanced to enable the
  creation of appropriately configured Spack instances subordinate to an
  already-populated upstream instance.

**Work lead**
: …

**Work contributors**
: …

**Work time estimate (FTE days)**
: …


### [e_020](spack.svg#e_020): install {#e_020}

**Brief Description**
: Obtain built products from a [server](#scisoft) to create a [test
  release](#test_release) with the desired configuration.

**Status**
: 🟢**Almost done**🟢

**Detailed status**
: See current status of [install](#e_019).


### [e_021](spack.svg#e_021): retrieve {#e_021}

**Brief Description**
: Obtain the necessary specific suite configurations from the
  [configuration server](#suite_config_server) to create a [CVMFS release](#CVMFS)
  with the desired configuration.

**Status**
: 🟡**In progress**🟡

**Detailed status**
:

* See current status of [suite configuration
  server](#suite_config_server).

* ☑ The `build-spack-env.sh`{.console} script enables the creation of
  one or more [specified consistent suites](#packaged_suites) given
  corresponding Spack environment configurations. These products may be
  obtained pre-built from suitably-configured local or remote Spack
  build caches.

* ☐ `build-spack-env.sh`{.console} must be enhanced to enable the
  creation of Spack environments based on local or remote `spack.lock`
  files, including the ability to locate on and retrieve `spack.lock`
  files from a [suite configuration server](#suite_config_server).

**Work lead**
: …

**Work contributors**
: …

**Work time estimate (FTE days)**
: …


### [e_022](spack.svg#e_022): retrieve {#e_022}

**Brief Description**
: Obtain the necessary specific suite configurations from the
  [configuration server](#suite_config_server) to create a [base release](#base_release) with
  the desired configuration.

**Status**
: 🟡**In progress**🟡

**Detailed status**
:

* See the current status of [retrieve](#e_021).

* See the current status of [instantiate](#e_019).


### [e_023](spack.svg#e_023): retrieve {#e_023}

**Brief Description**
: Obtain the necessary specific suite configurations from the
  [configuration server](#suite_config_server) to create a [test release](#test_release) with
  the desired configuration.

**Status**
: 🟡**In progress**🟡

**Detailed status**
: See the current status of [retrieve](#e_022).


### [e_024](spack.svg#e_024): relocate {#e_024}

**Brief Description**
: Make a [test release](#test_release) accessible in a [grid
  environment](#grid).

**Status**
: 🟢**Almost done**🟢

**Detailed status**
: See the current status of [relocate](#e_005).


### [e_025](spack.svg#e_025): setup {#e_025}

**Brief Description**
: Set up an [interactive environment](#runtime) to use a specific [test
  release](#test_release).

**Status**
: 🔵**Done**🔵

**Detailed status**
:

* ☑ Given an existing [test release](#test_release),
  `make_subspack`{.console} script will create and configure a
  subordinate Spack instance.

### [e_026](spack.svg#e_026): setup-for-dev {#e_026}

**Brief Description**
: Convert an [interactive environment](#runtime) into an [environemt
  suitable for the development of one or more products](#development).

**Status**
: 🟡**In progress**🟡

**Detailed status**
: There are multiple options, including

1. `spack develop` which, although natively supported by Spack, has limitations in the
  development, such as requiring CMake configuration for each build iteration, when no
  reconfiguration is necessary.

2. Spack extensions, which allow an approach that is more conducive to the development
  model we (and our users) expect.

The latter option is favored and is being explored.

**Work lead**
: Kyle Knoepfel

**Work contributors**
: …

**Work time estimate (FTE days)**
: …


### [e_027](spack.svg#e_027): submit {#e_027}

**Brief Description**
: Make an [interactive environment](#runtime) accessible in a [grid
  environment](#grid).

**Status**
: 🟢**Almost done**🟢

**Detailed status**
: See the current status of [relocate](#e_005).


### [e_028](spack.svg#e_028): build {#e_028}

**Brief Description**
: Build from local sources, making necessary changes or additions to
  local sources in an interactive [development environment](#development).

**Status**
: 🟡**In progress**🟡

**Detailed status**
: See status of [setup-for-dev](#e_026).


### [e_029](spack.svg#e_029): create {#e_029}

**Brief Description**
: Create a [GitHub PR](#PR) based on sources in a [development
  environment](#development).

**Status**
: 🔵**Done**🔵

**Detailed status**
:

* ☑ `git`{.console} or `gh`{.console} commands may be used to commit and
  push local changes to a branch on a remote repository for a product or
  fork thereof on GitHub.

* ☑ `gh`{.console} commands or GitHub web UI operations may be used to
  submit a PR to the source repository for a product.


### [e_030](spack.svg#e_030): trigger {#e_030}

**Brief Description**
: Trigger a build process in a [CI](#CI) system based on a [GitHub
  PR](#PR).

**Status**
: 🟢**Almost done**🟢

**Detailed status**
:

* See relevant details of current status of [continuous integration](#CI).

* See current status of [pull requests](#PR).


### [e_031](spack.svg#e_031): process {#e_031}

**Brief Description**
: Execute Spack-based builds in a [CI](#CI) system.

**Detailed Description**
: …

**Status**
: 🟡**In progress**🟡

**Detailed status**
: See relevant details of current status of [continuous integration](#CI).


### [e_032](spack.svg#e_032): report {#e_032}

**Brief Description**
: Retrieve status and built products from a [CI](#CI) system, updating
  the state of the triggering [PR](#PR).

**Status**
: 🟢**Almost done**🟢

**Detailed status**
:

* ☑ Built products may be retrieved from a completed [CI](#CI) execution
  using the Jenkins web UI.

* See relevant details of current status of [continuous integration](#CI).


### [e_033](spack.svg#e_033): install {#e_033}

**Brief Description**
: Install [locally-built products](#development) into a [base release](#base_release).

**Status**
: 🔵**Done**🔵

**Detailed status**
:

* ☑ The facility exists to be able to export the necessary built
  products and/or suites to a build cache, which can then be used to
  install the built products into a different Spack instance via `spack
  install`.


### [e_034](spack.svg#e_034): use {#e_034}

**Brief Description**
: Use [locally-built products](#development) in a [grid environment](#grid).

**Status**
: 🟢**Almost done**🟢

**Detailed status**
: See current status of [relocate](#e_005).


### [e_035](spack.svg#e_035): package {#e_035}

**Brief Description**
: Finalize [recipe changes/additions](#packaged_products) from
  [development environment](#development)

**Status**
: 🔵**Done**🔵

**Detailed status**
:

* ☑ Text editors exist.


### [e_036](spack.svg#e_036): install {#e_036}

**Brief Description**
: Install products built in a [development environment](#development)
  into a [test release](#test).

**Status**
: 🔵**Done**🔵

**Detailed status**
: See current status of [install](#e_033).
