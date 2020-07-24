---
title: "Simulations"
linkTitle: "Simulations"
description: "Military air and ground-based simulators."
date: 2020-04-27
weight: 40
type: docs
nav:
    prev:
        label: "Neuroscience"
        url: "/about/past/neuroscience/"
    up:
        label: "Past"
        url: "/about/past/"
    next:
        label: "Video Games"
        url: "/about/past/videogames/"
---

I spent eight years working on military simulations at
[*MetaVR*](http://metavr.com) mostly on their **Virtual Reality Scene
Generator** (VRSG) product. VRSG advertises "game quality graphics" but unlike
most games it has a round-Earth terrain format that enables realistic
simulations which span hundreds of kilometers.

![VRSG 1](vrsg-1.jpg)

VRSG is used in many production military simulators including the F-16, A-10 and
F-22 simulators, as well as in sea and ground-based simulators.

![VRSG 2](vrsg-2.jpg)

My first project at MetaVR was to add a human animation system. Over time I
worked on many aspects from graphics to networking to architecture. I developed
a web-based performance monitoring and QA tool that required removing randomness
from the system so we could generate videos that were pixel-per-pixel identical
even when taken weeks apart. I used the structural similarity (SSIM) index to
find minute differences between the otherwise identical videos.

![VRSG 3](vrsg-3.jpg)

Working on military simulations required understand video game technology but
also the technical requirements and interoperability issues that you don't
typically encounter in games. The codebase at MetaVR was primarily C++ using
DirectX for the graphics while my performance tools were written in Python.
