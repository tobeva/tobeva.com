---
title: "Neuroscience"
linkTitle: "Neuroscience"
description: "Multi-resolution imaging system."
date: 2020-04-27
weight: 30
type: docs
nav:
    prev:
        label: "Cloud"
        url: "/about/past/cloud/"
    up:
        label: "Past"
        url: "/about/past/"
    next:
        label: "Simulations"
        url: "/about/past/simulations/"
---

For several years I worked at the [*Janelia Research
Campus*](http://janelia.org) in Ashburn, VA which is run by the [*Howard
Hughes Medical Institute*](http://hhmi.org). The facility is dedicated to
Neuroscience Research.

Neuroscience is an interesting field because it's highly interdisciplinary.
At Janelia there were scientists and engineers whose training was in
Mathematics, Physics, Chemistry, Biology, Computer Science, Electrical
Engineering, even Cosmology in one case.

{{< imgproc janelia Resize "512x" >}}
The lush Landscape Building at Janelia where I worked is visible
behind their own private hotel.
{{< /imgproc >}}

I primarily worked on a tool called **Raveler** as a graphics programmer. I
did not really need to understand very much of the science, although it was
very much in the air and I went to many science talks. The tool was used
in-house to inspect and correct the automatically generated "segmentation"
of electron microscope images. The images in this case were of the brain
tissue of fruit fly. The goal was to create the "connectome" or "wiring
diagram" of the fly's neurons.

When I joined Janelia Raveler could only view images smaller than around
6,000 x 6,000 pixels. I adding a tiled image viewer to Raveler that used an
approach similar to Google Maps. In the end we were able to browse stacks
of images thousands deep each larger than 50,000 x 50,000 pixels. That
meant you could interactively browse over a terabyte of total imagery, and
this was in 2010.

{{< imgproc raveler-1 Resize "512x" >}}
The Raveler interface for "proofreading" segmentations.
{{< /imgproc >}}

Tiled image viewers are a staple on websites and in many graphics
applications because they more or less works perfectly. You can navigate
images of basically any size with a steady 60Hz update rate if you
implement it well.

I wrote the tile viewing code in Python using OpenGL. The performance was
impressive because Python is considered a fairly slow language. However in
this case we only needed to do a certain amount of work in Python before
handing things off to the OpenGL API which used C++ under the hood. And
then the graphics card itself did the lion's share of the work. This was
great for me because Python is easier and more pleasant to develop with
compared to C++.

{{< imgproc raveler-2 Resize "512x" >}}
My 2D and 3D visualizations of a reconstructed neuron.
{{< /imgproc >}}

Later in the project I added some 2D and 3D visualizations of the
reconstructed neurons to give users insight into shapes they were creating.
The users of Raveler worked in the same building and it was
gratifying to see in-person how the improvements that we made to the
software were making their lives easier and their work more productive.

One fun thing about working at Janelia was they had a huge 4,000 core
computer system in the basement with seemingly limitless disk space. I was
able to kick off jobs on this whenever I wanted to. There was some sort of
in-house accounting system so your group did "pay" for usage, but I imagine
it was very cheap compared to a cloud provider, since it was fully paid 
for a private to them.
