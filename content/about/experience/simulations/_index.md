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
        url: "/about/experience/neuroscience/"
    up:
        label: "Experience"
        url: "/about/experience/"
    next:
        label: "Video Games"
        url: "/about/experience/videogames/"
---

I worked at [MVRsimulation](https://www.mvrsimulation.com/) two separate
times in my career for a total of eight years, most my time was spent on
their flagship **Virtual Reality Scene Generator** (VRSG) software.

VRSG delivers "game quality graphics", but unlike most games it has a
"round-earth" terrain format to create ultra-realistic simulations which
span hundreds of kilometers. VRSG is used in many production military
simulators including the F-16, A-10 and F-22 simulators.

{{< imgproc vrsg-1 Resize "512x" >}}
FA-18's over a virtual Camp Pendleton in California.
{{< /imgproc >}}

My first project at MVRSimulation was to add a human animation system. Over
time I worked on many aspects from graphics to networking to architecture.
Beyond the product itself I developed a web-based performance monitoring
and QA tool. We wrung out all the randomness from the scene generation so
we could create videos that were pixel-per-pixel identical, even when taken
weeks apart.

We used the structural similarity (SSIM) index to find minute differences
between the otherwise identical videos. We also carefully monitored how the
software performed on various hardware configurations, always shoot for a
60Hz update rate.

{{< imgproc vrsg-2 Resize "512x" >}}
USS George H.W. Bush (CVN-77)
{{< /imgproc >}}

Working on military simulations required understanding video game
technology but also the technical requirements and interoperability issues
that you don't typically encounter in games. The codebase at MVRsimulation
was primarily C++ using DirectX for the graphics while my performance tools
were written in Python.

{{< imgproc vrsg-3 Resize "512x" >}}
Virtual Kismayo, Somalia with human characters.
{{< /imgproc >}}

The MVRsimulation experience was also interesting because the company was
100% virtual, they've never had a physical office at all, and they've been
around for over 20 years. Working like that for eight years taught me how
to make remote development work, something that is suddenly very in
fashion.

### References

* [MVRsimulation Trade Show Interview](https://youtu.be/dtut-pGqYhA)
    * MVRsimulation CEO discusses simulators shown at I/ITSEC 2019.
