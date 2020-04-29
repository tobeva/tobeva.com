---
title: "CAD and Haptics"
linkTitle: "CAD and Haptics"
description: "Computer Aided Design systems."
date: 2020-04-27
weight: 10
type: docs
---

### FreeForm

I worked on **FreeForm** during four years at SensAble Technologies. FreeForm is
a software and hardware system that gives you the experience of carving "virtual
clay". FreeForm is still available today, it's now sold by [*3D
Systems*](https://www.3dsystems.com/software/geomagic-freeform).

![FreeForm Demon](freeform-demon.jpg)

I worked on many aspects of FreeFrom from the UI to graphics and haptics and I
was a member of the four-person architecture board. FreeForm was a complex piece
of software with close to a million lines of C++ code. We learned many lessons
about design, architecture, code quality, performance and testing.

![FreeForm Model](freeform-model.jpg)

### Haptics

FreeForm comes with a haptic device called the **Phantom**. The device simulates
real physical interaction; you can feel the model as you are carving it. It's
quite a striking effect, and people tend to be amazed when they first try it.

With graphics 60Hz is usually the goal, which means you have 16.7 milliseconds
to generate the next frame. The Phantom however had to be updated at 1000Hz to
generate realistic forces! Hitting this strict limit meant you only had 1
millisecond to do the force computation. It required a large number of
performance tricks and optimizations to run that fast.

![Phantom](phantom.jpg)

<ul class="list-unstyled d-flex justify-content-between align-items-center mb-0 pt-5">
  <li>
    <a  class="btn btn-primary  disabled"><span class="mr-1">←</span> Previous</a>
  </li>
    <a href="/about/cloud/" class="btn btn-primary ">Next <span class="ml-1">→</span></a>
  </li>
</ul>
