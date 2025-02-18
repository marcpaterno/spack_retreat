---
documentclass: scrartcl
title: "A Plan for Maintaining Spack Recipes"
subtitle: Draft version 1
date: "2025-02-10"
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

This document proposes a plan for CSAID maintenance of Spack recipes.

# Preconditions

## Fork of the Spack recipe repository

CSAID should maintain a fork of the main Spack repository that contains recipes.

The reason for having the fork is to allow us to modify recipes which we need to modify on our own time scale.
The Spack team sometimes delays the merging of a pull request (PR) into the Spack recipe repository.
By maintaining our own fork, we can make acceptable locally-originated changes available to our users more quickly than otherwise would be the case.

Maintenance of the fork is not free.
The main Spack recipe repository is updated frequently[^1], and so we will need to automate the updating of the fork.
It is probably sufficient to update the fork hourly, but it is always possible to manually trigger updates when needed.

We anticipate that few recipes will need modification in our fork, and thus automatic updating of the fork will rarely lead to merge conflicts.
When conflicts do occur, whoever has modified the recipe should be responsible for reconciling the recipe.

[^1]: For example, the GitHub statistics for the [spack](https://github.com/spack/spack) repository reports 364 merged pull requests over the period January 18, 2025 through February 18, 2025.
      Most of these are changes to recipes.

*See rules 3–5 below for conditions under which CSAID's recipe repository fork will differ from Spack's upstream recipe repository.*

## One recipe repository per CSAID project

The Spack recipe for a given package must not live in the same repository as the source code for that package to avoid excessive and unnecessary changes in the recipe.
All known efforts in CSAID currently using Spack already follow this guideline.

CSAID should maintain one repository for each project[^project], to contain the Spack recipes for the project.
Keeping all the recipes for a given project in a single recipe repository provides some cohesion to the package, and will allow each project to have its own accounting of GitHub actions "minutes" for continuous integration usage.

[^project]: For our purposes, a *project* is a set of Spack-managed packages (i.e. software repositories) that are maintained in concert, and which are typically used together.
            Some examples are: the *art* project, *LArSoft*, and *FIFE*.
            A repository maintained by a small team which has no other closely associated packages may be a project by itself, e.g. *MARLEY*.

We should take care to ensure that the dependency graph of recipe repositories (as implied by the dependencies between the recipes) remains a directed acyclic graph.
If possible, this should be done by upstreaming recipes, or by moving recipes to other existing recipe repositories rather than by creating new recipe repositories.

Spack itself does not require this, but doing this will make it easier to ensure we do not introduce any cycles into the dependency graph of the packages themselves.


# Rules for maintaining Spack recipes

1. If a package is developed under the control of a specific project, its recipe shall be maintained in a recipe repository appropriate to the project, and distinct from that of the package source.

2. If a recipe for a required package exists in Spack's upstream repository it should be used from our fork of the Spack recipe repository.

3. If alterations are required to an upstream recipe, those alterations shall be upstreamed.
   If the maintainers of the Spack recipe repository do not accept a pull request on a suitable timescale, an equivalent PR may also be submitted to the CSAID fork with the understanding that the submitter is responsible for reconciliation as soon as reasonably practicable.

4. If a recipe for a package not maintained at Fermilab does not exist in Spack's upstream repository, then the new recipe shall be upstreamed if its applicability may reasonably be expected to be outside one experiment/project.
   Packages maintained at Fermilab may have their recipes upstreamed if there is an expectation they might be used elsewhere.

5. If a new recipe would be upstreamed but for overriding time constraints, then it may be submitted in parallel to CSAID's fork with the understanding that the submitter is responsible for reconciliation as soon as reasonably practicable, and that upstream will be the primary venue for maintenance going forward.
