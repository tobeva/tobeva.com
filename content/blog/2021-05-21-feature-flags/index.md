---
date: 2021-05-21
title: "Feature Flags in ToneStone"
linkTitle: "Feature Flags"
description: "Git Branches are lightweight and incredibly valuable, but parallel
develoment can be painful and expensive. Feature flags are the other option."
author: Philip ([@pbwinston](https://twitter.com/pbwinston))
resources:
- src: "**.{png,jpg}"
  title: "Image #:counter"
---

{{< imgproc diag Resize "800x">}}
Feature Flags
{{< /imgproc >}}

### Feature Flags

Git Branches are lightweight and incredibly valuable, but parallel
develoment can be painful and expensive. Branches can diverge and conflicts
emerge. Conflicts can be syntactic or semantic or both.

In a syntactic conflict the same lines of code were changed in two
different branches. Syntactic conflict resolution almost always requires
manual effort. Resolving the conflict can be a real mystery that takes time
to unravel.

Semantic conflicts, on the other hand, are impossible for Git to detect. A
semantic conflict means the two changes made different assumptions about
the rest of the code base. What made sense in one branch is no longer
correct given the other code change. For example, you might need to make
calls in different order than before, but you had no indication of that.

Feature flags have existed for decades as a way to manage different
versions of the software in the code itself, not using source code control.
In recent years this approach as become more valuable, see Pete Hodgson's
[article](https://martinfowler.com/articles/feature-toggles.html) on
[Martin Folwer's](https://martinfowler.com/) site.

### Demo Video

I recorded a [4 minute video](https://youtu.be/0Mxb3UAQiLE) about some new
Feature Flag infrastructure I created for a client, the music application
[ToneStone](http://tonestone.com).

<iframe width="560" height="315" src="https://www.youtube.com/embed/0Mxb3UAQiLE" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

### Cloud or Otherwise

Feature Flags have really blown up in the cloud world with [blue/green
deployments](https://martinfowler.com/bliki/BlueGreenDeployment.html),
[staged
rollouts](https://medium.com/bleeding-edge/the-art-of-staging-a-rollout-8e203b337b75),
and [A/B testing](https://en.wikipedia.org/wiki/A/B_testing), however
feature flags are useful in any type of software. They are a simple sharp
tool to have in the toolbox.
