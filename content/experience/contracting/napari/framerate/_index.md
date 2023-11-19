---
title: "Framerate"
linkTitle: "Framerate"
description: "The importance of framerate."
date: 2020-10-28
weight: 20
type: docs
nav:
    up:
        label: "Napari"
        url: "/projects/napari/"
    prev:
        label: "Contributions"
        url: "/projects/napari/contrib/"
    next:
        label: "Perfmon"
        url: "/projects/napari/perfmon/"
---

{{< imgproc framerate Resize "700x" >}}
{{< /imgproc >}}

This graph conveys two important lessons.

On the slow side it shows the user experience degrades basically without
bound as the framerate gets slower. This is really important because it's
easy to be complacent when the framerate of your application starts getting
slower.

At first, no one really even notices. But as you approach 10Hz and below
everyone will notice, and they will find your software basically unusable.

On the fast side, it shows that for general graphics and scientific
visualization, it really doesn't pay to render things faster than 60Hz.
This is an important lesson. It means there is a point of diminishing
returns. If you are at 60Hz that is probably good enough.

Note that VR applications do need framerates higher than 60Hz. And many
competitive gamers also demand faster framerates. However for "general
desktop graphics" 60Hz is almost always totally sufficient.

### Framerate?

When developing graphics software, it's often better to think of
_milliseconds per frame_ instead of _framerate_. To achieve 60Hz each frame
must take less than 16.7 milliseconds, which will translate to 60Hz. It's
easier to set ”budgets” when you think in terms of milliseconds. For
example, maybe you will allocate 5ms per frame for copying data to the
graphics card.

_Milliseconds per frame_ is the inverse of _framerate_. This difference
between a value and its inverse comes up in other contexts, see <a
href="https://www.popularmechanics.com/cars/a12367/4324986/">Why We Should
Measure by Gallons per Mile, Not Miles per Gallon</a>.
