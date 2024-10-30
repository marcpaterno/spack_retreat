---
documentclass: scrartcl
title: "A proposal for building and testing LArSoft code"
subtitle: Draft version 2
date: "2024-10-30"
geometry: "left=1.0in,right=1.0in,top=1.5in,bottom=1.0in"
numbersections: true
secnumdepth: 1
output:
  pdf_document:
    latex_engine: xelatex
classoption:
  - twocolumn
  - letterpaper
  - 9pt
header-includes:
  - \usepackage{graphicx}
  - \usepackage{microtype}
---

# Introduction

This document lays out a proposed plan for the way the SciSoft team will build and test LArSoft code.

Lynn has handled most of this work to date.
Others in the SciSoft team have also been involved.
However, since CSAID can not hire a replacement for Lynn and other SciSoft team members are focused on critical lab priorities, especially the design and development of the new DUNE framework on an aggressive schedule, we need to reduce or eliminate the tasks she currently handles.

Our goal is to reduce the workload of the SciSoft team associated with the testing and releasing of LArSoft code while minimizing the additional workload on the experiments.

# Requirements to be met by the new "system"

1. Pull requests (PRs) to LArSoft need to be checked to ensure they do not break experiment code before they can be merged into the development head of LArSoft.
   This goes for PRs from the SciSoft team and ones from experiments.
   The SciSoft team is responsible for actually doing the merging of PRs.

2. Experiments need to be able to create production releases using any existing released version of LArSoft.

3. Experiments need to be able to create production releases using a patched version of any LArSoft release.

4. Experimenters need to be able to work on experiment code, or LArSoft code, or both at the same time.
   Doing so may make use of a released version of LArSoft, or a patched release made by their experiment, or a build of the development head of LArSoft.

# Proposed plan for building and testing of LArSoft code

## Layered spack environments

The SciSoft team will create *layered spack environments* for our own use and for the use of the experiments.
This is the technique we use to control what spack will attempt to build for each environment.
By installing a consistent set of packages into a given layer we can ensure that consistent set is used for "higher level" environments, while still allowing experiments to replace any portions of the the dependency graph of packages when they have a special need to do so.
Figure \ref{fig:spack_environments} shows the proposed spack environments and how they are layered; their contents are described below.

\begin{figure}[h]
  \centering
  \includegraphics[width=0.30\textwidth]{layer_diagram.drawio.pdf}
  \caption{Proposed spack environment layers.}
  \label{fig:spack_environments}
\end{figure}

1. The *tools* layer includes tools that are used for development but again which code is not linked.
Examples include compilers, *git*, *cmake*, and *ninja*.

2. The *substrate* layer includes products for which we (CSAID) are not in control of the source code.
Examples include *ROOT*, *GEANT4*, *catch2*, and *range*.
*python* should probably be included here because some code needs to link against the *libpython.so*.

3. The *art* layer includes all of the products that are currently part of the *critic* suite.
These are all products that are developed by the SciSoft team.

4. The *fife* layer includes products needed to build higher-level layers, along with data management and authentication client packages, but not *art*, and which are developed by other groups in CSAID.
One example is *ifdhc*.

5. The *nulite* layer includes products that are needed to build *larsoft* but which are not part of *art* or *fife*, and which are controlled by other groups in CSAID.
Examples are *ifdhc_art*, *genie*, and *nusimdata*.

6. The *larsoft* layer includes all of the LArSoft products.

7. The *experiment* layer indicates the software of one LArSoft-using experiment, and any 3rd party products that are used only by one experiment.
Each experiment layer is independent of other experiment layers.

## Building and distributing layered environments

The SciSoft team will be responsible for building and distributing releases of the *tools*, *substrate*, and *art* layers, while the Data Management team will be responsible for building and distributing the *fife* layer.
Releases of *tools* and *substrate* will be made as needed in response to requests for newer version of packages in those layers.
Updates to the *tools* layer will be made in response to requests from experiments or the SciSoft team, not automatically when new versions of the source code for those packages are released.
Updates to the *substrate* layer will be made in response to requests from experiments or the SciSoft team, or when needed to support new versions of higher-level layers.
The requesting party (experiment of the SciSoft team) is responsible for demonstrating that the update is self-consistent in that the updated *substrate* builds without error.
The requesting party is also responsible for demonstrating that the higher-level layers also build and pass CI tests without error.

Updates to the *art* layer will be made as needed, either because of new versions of *tools* or *substrate*, or due to pull requests for bug fixes or new features in the *art* suite.
The SciSoft team will remain responsible for ensuring that the *art* layer builds and passes CI tests without error.

The SciSoft team will build and distribute releases of the *fife* layer, if needed, or reuse recent builds from Data Management, who will be responsible for maintenance of the code for the packages in that layer. 
Similarly,. the SciSoft team will build and distribute releases of the *nulite* layer, but maintenance of the code for the packages in that layer remains the responsibility of the authors of that code.

The *larsoft* layer is handled differently, as described below.

## Maintaining *larsoft*

This plan proposes a new approach for handling releases of *larsoft*.
In this proposed plan, there are no centrally-defined releases of *larsoft*.
Instead, each experiment is free to create its own release of *larsoft* as needed.

The SciSoft team will be responsible for the merging of PRs to the *larsoft* development branch.
Each experiment will be responsible for maintaining a branch of its own code (called here the *development head*) that can be used to test new PRs of *larsoft* against.
Each experiment is also responsible for maintaining a CI system to allow testing of PRs for larsoft against the development head of that experiment.
The SciSoft team will merge a PRs into *larsoft* in the development head only if the PR passes the CI tests of the LArSoft experiments.
The SciSoft team will continue, to the extent effort allows, to review the quality of code in LArSoft PRs.

Each experiment will remain responsible for building and distributing its own production releases.
Each experiment is free to make branches in the LArSoft repositories for their own production releases.

Because the development head of the LArSoft repositories will only accept PRs that do not break the development builds of any of the experiments, each experiment can create a new production release branch in the LArSoft repositories from the development head at any time.
Each experiment will be responsible for creating a production branch in LArSoft for it own use, and for managing its own production release builds of *larsoft*.

If the development head of an experiment's repositories does not build and test successfully against the development head of LArSoft because of a new commit or commits added to the experiment repositories, then that experiment's CI tests will be temporarily removed from the testing of LArSoft PRs.
As soon as the experiment has fixed whatever problems prevented its own tests from building and working against the current development head of LArSoft, it will again be included in the testing for LArSoft PRs.

