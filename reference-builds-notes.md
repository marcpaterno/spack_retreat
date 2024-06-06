---
author: "Chris Green"
date: "2024-06-06"
---

# Notes on Reference Builds

## Overview

In a world where the SciSoft team provides only source releases of its
software, along with Spack-originated reference builds for a minimal
number of platforms and/or targets, the question arises as to the makeup
of those reference builds. Specifically: how much effort should be
expended to ensure that the reference build(s) can be used as-is by
experiments?

## The current state of Spack builds of Art/Critic

Currently the environment we provide is "UPS+:" dependencies of
Art/Critic such as ROOT and Boost are built with options and features
that encompass everything the experiments need for their own code
because—in the UPS domain—the binaries must be usable by experiments in
their own stacks.

With the motivation to provide experiments with builds that would work
on batch nodes without having to ship system libraries such as those for
X11, the Critic environment discribes two Spack views: one intended for
interactive use including a ROOT built with OpenGL and X11 (`+opengl+x`)
and one intended for batch nodes including a ROOT built without graphics
libraries (`~opengl~x`).

The current (2024-06-03) development build of Critic comprises a total
of 107 packages when built with X, and 83 without. When one filters out
external (system) packages, this becomes 71 when built with X, and 61
without, with 45 packages in common for a total of 87 packages requiring
to be built.

## Discussion

If we were to build just one version of ROOT (without X or OpenGL), and
further reduced dependencies by only building those components of ROOT
either directly used by Critic or that do not add dependencies to the
stack, we could avoid building the following dependencies that are
currently part of the Critic stack:
* fcgi
* fftw
* gsl
* openblas
* postgresql
* protobuf
* pythia6

where Pythia6 is anyway removed once we go to ROOT 6.32.00. On
`scisoftbuild02` with its 24 cores, omitting the above packages results
in a saving of 10.5 minutes on the total build time for the Critic suite
with respect to the no-X build.

One question that arises is, "Is it even possible to provide a single
stack that will be useful to every experiment as-is?" As stated, the
answer is, "Yes, but actually no." While every experiment with its
current stated needs would be able to use a full-featured stack with
OpenGL and X11, every experiment needing to run on a batch node would
need to build its own stack in addition to the one provided. Even with
the removal of the word, "single" from the question, one would still
have the problem that experiments' needs will diverge over time. Even
now, at least one experiment has its own build of ROOT for isolated
(non-framework) use of deep learning systems not supported by the
current UPS builds of ROOT provided by the SciSoft team.

If it is impossible to satisfy everyone with a single build, should we
therefore satisfy no-one? If that is the case, what purpose would such a
reference build serve outside the specific needs of the Critic
developers? What implications would any scenario have for the ability to
duplicate resolve experiment-reported issues with the Critic suite?
