---
title: "Neuroscience"
linkTitle: "Neuroscience"
description: "Multi-resolution imaging system."
date: 2020-04-27
weight: 30
type: docs
---

The [*Howard Hughes Medical Institute*](http://hhmi.org) funds research all over
the country, but [*Janelia Research Campus*](http://janelia.org) is their
facility in Ashburn, VA that's dedicated to  Neuroscience Research.

At Janelia I worked on a tool called **Raveler** that was used to inspect and
correct the automatically generated segmentation of electron microscope images.
The research goal was to create the connectome or "wiring diagram" of the fruit
fly brain.

When I joined Janelia, Raveler was limited in the image sizes you could browse.
I implemented a tiled viewer that in theory could browse images of any size,
using an approach similar to how Google Maps works. We were able to browse
stacks with thousands of images as large as 50,000 x 50,000 pixels, over one
terabyte of total imagery. This work was done with OpenGL in Python.

![Raveler 1](raveler-1.jpg)

I also added some 2D and 3D visualizations of the reconstructed neurons to give
users insight into shapes they were creating. The image on left below is 2D and
the one on the right is 3D:

![Raveler 2](raveler-2.jpg)

The users of Raveler were at Janelia and it was gratifying to see in-person how
the improvements that we made to the software were making their lives easier and
their work more productive.

<a href="/about/simulations"><button type="button" class="btn btn-primary">
Next <i class="fas fa-arrow-alt-circle-right ml-2"></i>
</button></a>
