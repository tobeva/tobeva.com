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
where I worked on their flagship product **FreeForm** for four years.
FreeForm was a software and hardware system that gives you the experience of
carving "virtual clay". FreeForm is still available today, it's now sold by
*3D Systems*, here's the [product
page](https://www.3dsystems.com/software/geomagic-freeform).

{{< imgproc freeform-demon Resize "512x" >}}
A very detailed "carved" model made with FreeForm.
{{< /imgproc >}}

FreeForm was a complex application written entirely in C++, probably close
a million lines when I left. I worked on many aspects of FreeFrom from the
UI to graphics and haptics and I was a member of the four-person
architecture board that helps guide the overall design. We learned many
lessons about design, architecture, code quality, performance and testing,
plus user interfaces and the user experience.

{{< imgproc freeform-model Resize "512x" >}}
FreeForm was often used to make toys built out of parts.
{{< /imgproc >}}

### Haptics

When you buy FreeForm you are also buying a haptic device called **The
Phantom** which looks like a pen or stylus on a robotic ram that you can
articulate in any direction. The device simulates real physical
interaction, when when you push on the virtual model it feels real. When
you "carve" you can feel the model changing out from under you. It's quite
a striking effect, and people tend to be amazed when they first try it.

{{< imgproc phantom Resize "512x" >}}
FreeForm plus the Phantom cost around $10,000 at the time.
{{< /imgproc >}}

With computer graphics the goal is usually to refresh the screen at least
60 times a second, which means you have 16.7 milliseconds to generate the
next frame. The Phantom however had to be updated at 1000Hz to generate
realistic forces, so you only had 1 millisecond to do the computation! We
used a large number of performance tricks and optimizations to run that
fast.
