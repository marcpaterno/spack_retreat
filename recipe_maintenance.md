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
The main Spack recipe repository is updated frequently, and so we will need to automate the updating of the fork.
We anticipate that few recipes will need modification in our fork, and thus automatic updating of the fork will rarely lead to merge conflicts.
When conflicts do occur, whoever has modified the recipe should be responsible for reconciling the recipe.

*See rules 3–5 below for conditions under which CSAID's recipe repository fork will differ from Spack's upstream recipe repository.*

## One repository for each CSAID project

CSAID should maintain one repository for each project, to contain the Spack recipes for the project.

The Spack recipe for a given package should not live in the same repository as the code for that package to avoid excessive and unnecessary changes in the recipe.
Keeping all the recipes for a given project in a single recipe repository provides some cohesion to the package.
It will also allow each project to have its own accounting of "minutes" spent on GitHub actions for continuous integration usage.

We should take care to ensure that the dependency graph of recipe repositories (as implied by the dependencies between the recipes) remains a directed acyclic graph. If possible, this should be done by upstreaming recipes, or by relocating recipes between existing repositories rather than by creating new recipe repositories.

Spack itself does not require this, but doing this will make it easier to ensure we do not introduce any cycles into the dependency graph of the packages themselves.


# Rules for maintaining Spack recipes

1. If a package is developed under the control of a specific project, its
   recipe shall be maintained in a recipe repository appropriate to the
   project, and distinct from that of the package source.

2. If a recipe for a required package exists in Spack's upstream
   repository, there shall be a compelling reason to not use it.

3. If alterations are required to an upstream recipe, those alterations
   shall be upstreamed. If there are overriding time constraints, an
   equivalent PR may also be submitted to the CSAID fork with the
   understanding that the submitter is responsible for reconciliation as
   soon as reasonably practicable.

4. If a recipe for a package not maintained at Fermilab does not exist 
   in Spack's upstream repository, then the new recipe shall be upstreamed 
   if its applicability may reasonably be expected to be outside one 
   experiment/project.  Packages maintained at Fermilab may have their recipes
   upstreamed if there is an expectation they might be used elsewhere.

5. If a new recipe would be upstreamed but for overriding time
   constraints, then it may be submitted in parallel to CSAID's fork with
   the understanding that the submitter is responsible for reconciliation
   as soon as reasonably practicable, and that upstream will be the
   primary venue for maintenance going forward.
