--
documentclass: scrartcl
title: "A Plan for Using CSAID Forks of the Spack Repositories"
subtitle: Draft version 2
date: "2025-06-16"
geometry: "left=1.0in,right=1.0in,top=1.5in,bottom=1.0in"
output:
  pdf_document:
    latex_engine: xelatex
classoption:
  - twocolumn
  - letterpaper
  - 9pt
numbersections: true
header-includes:
  - \usepackage{graphicx}
  - \usepackage{microtype}
---

# Introduction

CSAID intends to maintain forks of both the Spack code repository and the Spack recipe repository in order to be able to allow resolutions of PRs against Spack code or recipes in a timely manner in those cases when PRs directly to the Spack project-managed repository do not receive a timely response.
This document describes how we propose experiments use those forks, concentrating on how to to direct pull requests (PRs) to fix issues.

# General considerations

The Spack source code is managed in the [\texttt{spack/spack} repository](https://github.com/spack/spack) on GitHub.
The Spack recipe repository is managed in the [\texttt{spack/spack-spackages} repository](https://github.com/spack/spack-packages) on GitHub.
CSAID will maintain forks of both of those repositories, called [\texttt{FNALssi/spack}](https://github.com/FNALssi/spack) and [\texttt{FNALssi/spack-packages}](https://github.com/FNALssi/spack-packages), also on GitHub.




1. The fnal-develop branch is reserved for syncing changes from upstream develop as needed to get the latest changes to Spack internals needed for concretization bugs.
It should not be used to do user builds as the `HEAD` commit of `fnal-develop` changes as needed.
This introduces the situation where one user installs on `cvmsf` using the current head of `fnal-develop`.
Later another user produces a build with a much newer commit at the head of `fnal-develop`.
Experience has shown that package.py and Spack internals might have changed enough between these two commits to cause operations like `spack load` and `spack env active` to fail.
Updating the version on cvmfs might work to allow the new built package at the risk of breaking existing package installs.

2. Users should be encouraged to use the branches based on a tagged release of Spack.
For example the `v0.22.0-fermi` and `v0.23.0-fermi` branches are based on the `v0.22` and `v0.23` tags respectively.
Changes to packages needed to update package versions should be back-ported to these branches.
These branches can follow the upstream release and backports branches which contain bug fixes to Spack internals needed for proper functioning.
Packages updated on upstream develop can be back-ported by only checking out the package directory `spack/var/spack/repos/builtin/packages/package` at the head of upstream develop.
This change can then be commited to a branch and a pull request made against the v.2x.0-fermi branch.

3. Having versioned branches requires keeping versioned branches on the `fermi-spack-tools` repo used for bootstraping installs and building environments.
The Fermi specific Spack package repos like `fnal-art` and `larsoft-spack-packages` will possibly need versioned branches as well if the Spack package api after Spack `v1.0` is substantially different from earlier versions.
