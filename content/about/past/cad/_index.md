---
title: "CAD and Haptics"
linkTitle: "CAD and Haptics"
description: "Computer Aided Design systems."
date: 2020-04-27
weight: 10
type: docs
nav:
    up:
        label: "Past"
        url: "/about/past/"
    next:
        label: "Cloud"
        url: "/about/past/cloud/"
---

### FreeForm

My first real commercial job was at a startup called SensAble Technologies
where I worked on **FreeForm** for around four years. FreeForm was a
software and hardware system that simulated "virtual clay". FreeForm is
[still available
today](https://www.3dsystems.com/software/geomagic-freeform), but it's now
sold by [3D Systems](https://www.3dsystems.com/).

{{< imgproc freeform-demon Resize "512x" >}}
A very detailed model carved with FreeForm.
{{< /imgproc >}}

FreeForm was a complex application written entirely in C++ with close a
million lines when I left. I worked on many aspects of FreeFrom from the UI
to graphics to haptics and I was a member of the four-person architecture
board. We learned many lessons about design, architecture, code quality,
performance and testing, plus user interfaces and the user experience.

{{< imgproc freeform-model Resize "512x" >}}
FreeForm was often used to make toys built out of parts.
{{< /imgproc >}}

### Haptics

When you buy FreeForm you are also buying a haptic device called **The
Phantom** which looks like a pen or stylus on a robotic arm. The device
contains senors and motors that simulate real physical interaction. When
when you push on the virtual model it feels real. When you "carve" you can
feel the material being removed out from under you. It's quite a striking
effect, people tended to be amazed when they first tried it.

{{< imgproc phantom Resize "512x" >}}
FreeForm plus the Phantom cost around $10,000 at the time.
{{< /imgproc >}}

With computer graphics the goal is usually to refresh the screen at least
60 times a second, which means you have 16.7 milliseconds to generate the
next frame. The Phantom however had to be updated at 1000Hz to generate
realistic forces, so you only had 1 millisecond to do the computation! We
used a large number of performance tricks and optimizations to run that
fast including the little-known [Fiber
API](https://nullprogram.com/blog/2019/03/28/) in Windows. Fibers are
basically primitive co-routines, a language feature that's hot today in Go
and Python for example.
