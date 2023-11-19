---
title: "Napari Perfmon"
linkTitle: "Perfmon"
description: "Performance monitoring tools."
date: 2020-10-28
weight: 30
type: docs
nav:
    up:
        label: "Napari"
        url: "/projects/napari/"
    prev:
        label: "Framerate"
        url: "/projects/napari/framerate/"
    next:
        label: "Videos"
        url: "/projects/napari/videos/"
---

Before starting on the rendering work for Napari we implemented some
performance monitoring tools. Performance is extremely important to
achieving rendering at interactive speeds.  With performance monitoring
Napari can produce JSON trace files that `chrome://tracing` can display.
This visibility into what is happening and how long things are taking is
indispensible for this type of work.

### Example Trace

{{< imgproc tracing Resize "700x" >}}
This trace shows an asynchronous load happening in the background.
{{< /imgproc >}}

### Official Napari Docs

Read this walk through of using <a href="https://napari.org/docs/dev/events/perfmon.html">Performance Monitoring</a> on Napari's site. The page contains a lot of details about how the feature works.
