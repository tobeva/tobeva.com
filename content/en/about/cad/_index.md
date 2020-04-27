---
title: "Computer Aided Design"
linkTitle: "CAD"
description: "FreeForm at SensAble Technologies."
date: 2020-04-27
weight: 10
type: docs
---

### Software

I worked on **FreeForm** during four years at SensAble Technologies. FreeForm is
a CAD package that is still sold today, although now by [*3D
Systems*](https://www.3dsystems.com/software/geomagic-freeform), it gives you
the experience of carving "virtual clay".

![FreeForm Demon](freeform-demon.jpg)

I worked on many aspects of FreeFrom and was a member of the four person
architecture board. FreeForm was a complex piece of software with close to a
million lines of C++ code. We learned many lessons about design, architecture,
code quality, performance and testing.

![FreeForm Model](freeform-model.jpg)

### Haptics

FreeForm is not just a software package, it comes with a haptic device called
the **Phantom**. The device simulates real physical interaction, you can feel
the model as you are carving it. It's quite a striking effect, people tend to be
amazed when they first try it.

When programming graphics 60Hz is usually the goal, which means you have 16.7
milliseconds to generate the next frame. With the Phantom the force computation
had to run much faster: 1000Hz. This means you only have 1 millisecond to do the
force computation, this required a number of performance tricks.

![Phantom](phantom.jpg)

