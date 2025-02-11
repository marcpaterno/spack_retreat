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

The reason for having the fork is...

The cost of maintaining the fork is...

## One repository for each CSAID project

CSAID should maintain one repository for each project, to contain the Spack recipes for the project.

The reason for this is...

The cost of this is ...

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

4. If a recipe does not exist in Spack's upstream repository, then the
   new recipe shall be upstreamed if its applicability may reasonably be
   expected to be outside one experiment/project.

5. If a new recipe would be upstreamed but for overriding time
   constraints, then it may be submitted in parallel to CSAID's fork with
   the understanding that the submitter is responsible for reconciliation
   as soon as reasonably practicable, and that upstream will be the
   primary venue for maintenance going forward.
