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

I created this graph for one my videos. I think it does a good
job of conveying relationship between framerate and the user's subjective
experience:

{{< imgproc agony Resize "700x" >}}
Graph showing that slow framerates are painful!
{{< /imgproc >}}

The graph is for general desktop graphics and scientific visualization.
Competitive games and VR have more stringent framerate requirements.

For general desktop use though, this graph shows that framerates faster
than 60Hz do not add much value, and most importantly it shows how quickly
things fall apart when the framerate falls below 10Hz.

In computer graphics it's often better to think of milliseconds per frame
instead of framerate. In those terms the graph shows latencies of more than
100ms are very painful, which make intuitive sense, and it shows if the
latency is around 16ms making
 it faster might not be noticed. Again for
general desktop use, not games or VR.

This idea of whether its better to think of a value or its inverse comes up
in other places. See this article <a
href="https://www.popularmechanics.com/cars/a12367/4324986/">Why We Should
Measure by Gallons per Mile, Not Miles per Gallon.