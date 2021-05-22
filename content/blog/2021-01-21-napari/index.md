---
date: 2021-01-23
title: "Napari 2020 Rendering Update"
linkTitle: "Napari Update"
description: "For the last eight months of 2020 I worked for The Chan Zuckerberg
Initiative on an open source imaging tool called napari. Napari is an image viewer
and analysis tool used primarily by Neuroscience and Biology researchers."
author: Philip ([@pbwinston](https://twitter.com/pbwinston))
resources:
- src: "**.{png,jpg}"
  title: "Image #:counter"
---

{{< imgproc napari Resize "600x">}}
WebUI Video for Napari work.
{{< /imgproc >}}

For the last eight months of 2020 I worked for [The Chan Zuckerberg
Initiative](https://chanzuckerberg.com/) on an open source imaging tool
called [napari](https://napari.org). Napari is an image viewer and analysis
tool used primarily by Neuroscience and Biology researchers.

I created a twenty-five minute video that goes over all of the work I did
for napari in 2020. It also contains some of my philosophy around building
software tools, and a brief history of desktop vs. WebUI:


<iframe width="560" height="315" src="https://www.youtube.com/embed/X5Ar8JA2tc8" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

The four projects covered in the video are:

**perfmon** - A performance monitoring tool that exports data
which Chrome's built-in tracing tool can display.

**async** - Asynchronous rendering which loads data in background worker
threads so napari's GUI thread is not blocked.

**octree** - A spatial datastructure that divides images into chunks
(tiles) and loads those tiles asynchronously. As shown in the video, this
creates a nice smooth experience browsing remote data.

**webmon** - An experimental WebUI interface for napari, implemented using
Python's newest shared memory features. The video explains why the napari
project might want to consider migrating from a Qt-based Desktop GUI to a
WebUI some day.

Except for **perfmon** the above features are currently in the
`experimental` namespace guarded by a feature flag. You must set an
environment variable to use these new features. Hopefully work on these
experimental features can continue in 2021 until they are ready to
"graduate" from experimental status into mainstream napari.
