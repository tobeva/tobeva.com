---
title: "CAD and Haptics"
linkTitle: "CAD and Haptics"
description: "Computer Aided Design systems."
date: 2020-04-27
weight: 10
type: docs
nav:
    up:
        label: "Experience"
        url: "/about/experience/"
    next:
        label: "Cloud"
        url: "/about/experience/cloud/"
---

### FreeForm

My first real commercial job was at a startup called SensAble Technologies
where I worked on **FreeForm** for around four years. FreeForm was a
software and hardware system which simulates "virtual clay". FreeForm is
[still available
today](https://www.3dsystems.com/software/geomagic-freeform), but it's now
sold by [3D Systems](https://www.3dsystems.com/).

{{< imgproc freeform-demon Resize "512x" >}}
A very detailed model carved with FreeForm.
{{< /imgproc >}}

FreeForm was a complex application written entirely in C++ with close to a
million lines of code. I worked on many aspects of FreeFrom from the UI to
graphics to haptics. I was a member of the four-person architecture board,
who advised on major initiatives in the codebase. We learned many lessons
about design, architecture, code quality, performance and testing, plus
user interfaces and the user experience.

{{< imgproc freeform-model Resize "512x" >}}
FreeForm was often used to make toys built out of parts.
{{< /imgproc >}}

### Haptics

When you buy FreeForm you are also buying a haptic device called **The
Phantom**. The Phantom looks like a pen or stylus on a robotic arm. The
device contains sensors and motors which simulate real physical
interaction. When when you push on the virtual model it feels real. When
you "carve" the mode, you can feel the material being removed out from
under you. It's quite a striking effect, people tend to be amazed when
they first use it.

{{< imgproc phantom Resize "512x" >}}
FreeForm plus the Phantom cost around $10,000 at the time.
{{< /imgproc >}}

With computer graphics the goal is usually to refresh the screen at least
60 times a second, which means you have 16.7 milliseconds to generate the
next frame. The Phantom however had to be updated at 1000Hz to generate
realistic forces, so you only had 1 millisecond to calculate the output
force!

We used a large number of performance tricks and optimizations to
run that fast including the little-known [Fiber
API](https://nullprogram.com/blog/2019/03/28/) in Windows. Fibers are
basically primitive co-routines, a language feature that's hot today in Go
and Python for example.

### Summary

I worked at SensAble on FreeForm for just over four years. The same length
of time as a college degree, but laser-focused on developing on one piece
of software. It was a great way to kick off a career and I still keep it
touch with many of the people I worked with there. In fact I worked with
several of them later at
[MVRsimulation](https://tobeva.com/about/experience/simulations/). I left
SensAble in 2003.

### References
* [Geomagic Freeform](https://www.3dsystems.com/software/geomagic-freeform)
    * The same software and hardware as sold today.
* [Introduction to Geomagic Freeform](https://youtu.be/yJKZLiqMu_c)
    * Four minute introduction video to the software.

