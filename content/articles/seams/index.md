---
date: 2021-03-13
title: "The Seam Metaphor"
linkTitle: "The Seam Metaphor"
description: "The Role of Seams In Software Architecture."
author: Philip ([@pbwinston](https://twitter.com/pbwinston))
type: article
summary: "How software architecture is like a teddy bear."
aliases:
        - /articles/the-joyful-bear
---

I first came across the seam metaphor for software architecture in **Jurgen
Appelo**’s book _Management 3.0_. I loved his book, although I always felt
that the title sold it short. I felt the backbone of complexity and systems
theory might fall flat for pointy-haired bosses.

{{< imgproc books Resize "600x">}}
{{< /imgproc >}}

**Michael Feathers** in  _Working Effectively With Legacy Code_ also used a
seam metaphor. I'm not sure if the idea originated with Feathers, or if it
had been kicking around the industry before that.

The seam metaphor is wonderful because it draws not so much on sewing, but
on our base intuitions about how physical objects interact and behave. So
even without any sewing experience I think it's meaningful and useful.

On the site [**Craft Elf**](http://www.craftelf.com/), you can find a
sewing pattern of a really simple [fleece teddy
bear](http://www.craftelf.com/teddy-bear-sewing-pattern.html). The pattern
is below on the left. You cut two pieces of fleece in the shape of that
pattern and then pretty much just sew them together to make the bear on the
right.

{{< imgproc fleece-bear Resize "600x">}}
{{< /imgproc >}}

In contrast, on the website [**How Joyful**](https://www.howjoyful.com/)
there is a more elaborate tutorial with a printable pattern for teddy bear
called [**The Joyful
Bear**](https://www.howjoyful.com/howjoyful-bear-tutorial-and-pattern/).

Below is just a small portion of the pattern along with the finished
product. Clearly this bear requires more work and skill, but the resulting
cute little bear is far closer to an iconic teddy bear, so the end result is more impressive.

{{< imgproc joyful-bear Resize "600x">}}
{{< /imgproc >}}

The first connection to software is architecture of your system needs to
have enough pieces to adequately address the problem you are trying to
solve. If you are trying to solve a complicated software problem with two
pieces of fleece, no matter how you arrange those two pieces you are going to fall short.

Now imagine a third bear which has three times the number of pieces as the
Joyful Bear, but suppose we are aiming for the same basic look as our final result.

Not only would cutting and sewing this mega-bear take vastly longer, the final result would be inferior. Much of the cuteness of the bear would be ruined if there were dozens of unnecessary seams, and it would be much less soft to the touch.

Let these three bears remind you that your architecture needs to have the
right number of pieces. Too few and you cannot produce the necessary
functionality, but too many and you be spending extra effort to produce a
worse result.

The metaphor works even better when you think about extending or growing a
software system. As you add to the system some changes will go in easily,
similar to making a modification at a seam, while others will be harder and
messier, more like cutting directly into cloth and dealing with the disruption.

One of my favorite definitions of good architecture is that in a system
with good architecture the effort required to add features to the codebase
is in line with reasonable expectations. This usually means the
architecture was created with appropriate seams where new code can be
easily inserted.

In contrast, if the stakeholders ask for a minor tweak and the engineering
team says it will take three weeks of intensive development, something is
seriously wrong.

Let’s imagine the Craft Elf bear is like a small 2,000 line program and The
Joyful Bear is like a capable but modest 20,000 line program.

An interesting thing about software is that there really is no upper limit
to complexity. It’s not uncommon for systems to contain 200,000 lines, 2
million lines, 20 million lines, or more. Google reportedly has over [2
billion lines of
code](https://www.freecodecamp.org/news/how-google-builds-a-web-framework-5eeddd691dea)
and presumably their 130,000 employees are pounding out more every day.

{{< imgproc complex Resize "600x">}}
{{< /imgproc >}}

Unlike with sewing, there's no limit to the size of software systems, since developers are building [castles in the
air](https://amturing.acm.org/award_winners/brooks_1002187.cfm) with no
physical constraints.

Let's look at two quick concrete examples of how seams appear in real
software. Here’s a small bit of code:

{{< imgproc seam-1 Resize "300x">}}
{{< /imgproc >}}

The number `0.001` here is so called **magic number**.  Magic numbers are
generally a bad idea in programming. We call it “magic” because while it
presumably makes the software function correctly, there’s no indication
what the number really means or why it was chosen.

Repeating the number `0.001` over and over is violation the programming
guideline [Don’t Repeat
Yourself](https://medium.com/code-thoughts/dont-repeat-yourself-caa413910753)
(DRY). Sometimes duplication is beneficial, but not in this case,
especially if the number appears in dozens of different files. So let’s
factor out the `0.001` and give it a name:

{{< imgproc seam-2 Resize "300x">}}
{{< /imgproc >}}

We’ve eliminated the duplication by introducing a name, albeit a very generic one. Therefore we’ve created a seam. We can now adjust `EPSILON` in one place and not have to modify many files.

However, we might have made a mistake. Perhaps the first two `0.001` values
represented the same geometric tolerance in meters, but maybe the third
`0.001` was an interval of time in seconds, as the variable name **delay**
implied.

In this case, using one `EPSILON` constant is like the fleece bear, it’s
too simple for our goals, it will work initially but it will be hard to
change. Instead, let’s get rid of the magic numbers by introducing two
seams instead of just one:

{{< imgproc seam-3 Resize "350x">}}
{{< /imgproc >}}

Now we can tweak each value independently. The design is now appropriate for the problem we are trying to solve. This is more like the Joyful Bear.

When we use a third-party library or API it presents an even better
opportunity to see the role of seams. For example, suppose we call into
**Amazon’s AWS** `create_bucket` function from multiple places in our code
base like:

{{< imgproc bucket-1 Resize "600x">}}
{{< /imgproc >}}

That doesn’t look horrible, but what if these calls were scattered
throughout a few dozen files? Then to change how we interact with the API
we would have to change all of those files.

That would produce a complicated
[diff](https://www.scootersoftware.com/features.php?zz=gallery), and worse,
it would be easy to make a mistake. You might change one location
incorrectly, or forget to change another location entirely. Instead, let’s
create our own `create_bucket` function which wraps Amazon’s:

{{< imgproc bucket-2 Resize "600x">}}
{{< /imgproc >}}

This introduces a very nice seam into the system. Now, if we want to add
functionality related to creating buckets, we only have to change this one
single function instead of mucking with dozens of files. For example, let’s
add some error handling and logging to our function:

{{< imgproc bucket-3 Resize "600x">}}
{{< /imgproc >}}

This is starting to look complicated, but the code is safely tucked inside a seam. Most of the system does not have to know or care about these details. We can add more functionality easily, and even better the calls sites are now simpler and more expressive than when we started:

{{< imgproc bucket-4 Resize "500x">}}
{{< /imgproc >}}

A less experienced programmer might have trouble visualizing the existing
seams in a system and might not know when or how to introduce new seams.
They might be more inclined to just add individual lines of code to get
their feature finished so they can move on the to the next thing.

However, if everyone is adding stuffing and no one is creating new seams,
you will end up with a giant fleece bear that’s difficult to understand,
debug, modify and extend. And worse, a bear which probably does not solve
the underlying problem as well as you’d like.

Instead, you need to enhance and evolve the architecture of the code by
carefully adding new structure as you go. One of the most important ways to
keep a large growing system under control is to never stop adding
structure. You should never get lulled into just stuffing in one new
feature after the other, you should never stop being creative.

You need to be diligent, you need to always work hard to come up with new
abstractions and then implement them in a nice way. That is, you need to be
**willing to cut cloth** when necessary, but do it purposefully and
deliberately and carefully, do it to make useful structural changes.

Realize that your careful work is doubly important. Your work not only
helps you make the changes you want to make in that moment, it will impact
the work of those who come after you, potentially years after you. Others
who may not even realize that you are still there, gently guiding them from
the past.

