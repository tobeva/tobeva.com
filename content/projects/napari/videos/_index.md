---
title: "Napari Demo Video"
linkTitle: "Demo Video"
description: "Demo of async loading with Napari."
date: 2020-08-06
weight: 50
type: docs
nav:
    prev:
        label: "Contributions"
        url: "/projects/napari/contrib"
    up:
        label: "Napari"
        url: "/projects/napari"
---

Video Duration: 11:13

{{<youtube id="Jlm_jGRwH2Y" >}}

<br>**Asynchronous Image Loading:**

The video explains asynchronous image loading and how it improves the
user's experience. Two examples are explored in detail:

1. A synthetic dataset with 16 layers where each layer was configured to
   take 250ms to load.

2. A real-world example with a image layer that is computed by
   [Torch](https://pytorch.org/) in around 400ms.

In both cases async image loading transforms what was not really usable
into something usable and even pleasant.

**Performance Monitoring:**

The video also shows off the performance monitoring feature we added to
Napari. With performance monitoring Napari can produce JSON trace files
that `chrome://tracing` can display. This visibilty into what is happening
and how long things are taking is indispensible for this type of work.

**Example Trace From Video**

{{< imgproc tracing Resize "700x" >}}
This trace shows an asynchronous load happening in the background.
{{< /imgproc >}}

**Framerate Slide From Video**


{{< imgproc agony Resize "700x" >}}
This shows how slow framerates frustrate the user and degrade their experience.
{{< /imgproc >}}
