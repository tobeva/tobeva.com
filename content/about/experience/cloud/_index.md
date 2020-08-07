---
title: "Cloud Data Pipelines"
linkTitle: "Cloud Data Pipelines"
description: "Processing data with AWS or other clouds."
date: 2020-04-27
weight: 20
type: docs
nav:
    prev:
        label: "CAD"
        url: "/about/experience/cad/"
    up:
        label: "Experience"
        url: "/about/experience/"
    next:
        label: "Neuroscience"
        url: "/about/experience/neuroscience/"
---

Fairly recently I worked on several generations of cloud-based data
pipelines at [CARMERA](https://carmera.com), a company that creates highly
detailed "HD Maps" for self-driving cars.

Carmera's maps are built using data from survey vehicles fitted with Lidar
sensors and 360 degree cameras. However Carmera's long term ambition is to
keep their maps up to date using normal video collected by delivery vans or
any type of fleet vehicle. That will require sophisticated computer vision
and machine learning to interpret the videos and update the maps.

{{< imgproc carmera-van Resize "512x" >}}
Survey vehicle to collect geospatial data.
{{< /imgproc >}}

The pipelines we wrote were used for processing the geospatial data and for
training the machine learning systems. Most of the pipeline code was
written in Python, while the actual processing was often in C++ for
performance reasons.

This use of both Python and C++ in a system is something I've long
advocated. It lets you leverage the quick development speed and frankly joy
of using Python where you can, but rely on the extreme performance
advantages of C++ where you have to. Today I might consider Rust rather
than C++ for the performance critical parts.

{{< imgproc carmera-1 Resize "512x" >}}
This is a reconstructed point cloud from Lidar data.
{{< /imgproc >}}

I found that my experience with traditional single-computer software
engineering applied to the world of distributed systems more than I had
anticipated. In some sense the cloud is just a single large computer. In
fact Google sometimes calls datacenters "warehouse scale computers". These
warehouse scale computers have API's just like desktop operating systems
did.

The abstraction level is vastly higher in the cloud because one API call
might hide the work of thousands of machines, but the same basic software
engineering principles apply. What's old is new again.

{{< imgproc carmera-2 Resize "512x" >}}
Carmera uses machine learning to identify objects in imagery.
{{< /imgproc >}}

I'm very bullish on the cloud and I would welcome doing more cloud-based
development. I think the cloud is up there with the smartphone, the search
engine and GPS as one of the top engineering achievements of humans.

The cloud is so great because the cloud providers are the ones that have to
deal with the messy physical world. They have to worry about power,
cooling, hardware, buildings, fences, guard booths and security patrols.
They have to install the machines, connect the machines, upgrade the
machines, fix the machines, recycle the machines.

{{< imgproc datacenter Resize "512x" >}}
This is either a fancy datacenter or an alien spaceship.
{{< /imgproc >}}

All of this effort is so their users can click one button and instantly
procure as much compute and storage as their heart desires. Better yet
users can write code which uses the cloud vendor's API to acquire hardware
resources for itself. Software essentially buying the hardware it needs as
it goes.

With today's cloud providers anyone could create a brand new acount and in
about 30 minutes they could spin up a $250,000 server. If they only used
that server for 2-3 minutes it might cost less than $1, yet the amount of
physical and economic infrastructure behind that $1 purchase is mind
boggling.

I believe the cloud will continue to grow and improve more or less forever.
Even if something new "replaces it" I believe that new thing will be built
on top of the cloud. The cloud might yield the spotlight but it will
continue to be there underneath doing the heavy lifting.
