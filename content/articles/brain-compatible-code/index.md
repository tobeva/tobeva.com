---
date: 2020-08-13
title: "Brain Compatible Programming"
linkTitle: "Brain Compatible Programming"
description: "Write code that's compatible with how your brain works."
author: Philip ([@pbwinston](https://twitter.com/pbwinston))
type: blog
---

The 1956 paper *[The Magical Number Seven, Plus or Minus
Two](http://psychclassics.yorku.ca/Miller/)* is the most widely cited paper
in the 126 year history of the journal *[Psychological
Review](https://en.wikipedia.org/wiki/Psychological_Review)*. The author
[George A. Miller](https://en.wikipedia.org/wiki/George_Armitage_Miller) is
considered one of the founders in the field of cognitive science.

His claim is you can only juggle between 5 and 9 things in your brain at
any one time. To my knowledge this 7 &#x00B1; 2 figure has withstood the
[reproducibility
crisis](https://www.nature.com/news/1-500-scientists-lift-the-lid-on-reproducibility-1.19970).
It appears to capture a deep truth about how our brains actually function.

Many people are skeptical of the result because **seven** sounds like an
absurdly small number. Surely if you are doing something complex, like
writing software or planning a wedding, you are juggling dozens to hundreds
of things? As it turns out you are not, at least not at once.

{{< imgproc pi Resize "512x">}}
The first 225 digits of Pi.
{{< /imgproc >}}

In 2005 **Lu Chao** recited [67,890
digits](https://www.livescience.com/50134-pi-day-memory-experts.html) of
Pi, a mind-boggling demonstration of a gifted and well-trained mind. Yet it
turns out Chao has a [digit
span](https://en.wikipedia.org/wiki/Memory_span#Digit-span) of **8.83**.
That's not a typo, just under nine digits. Given a series of random
**single-digit** numbers he can on average recall less the than **nine
digits** which fits perfectly within Miller's 7 &#x00B1; 2 finding.
Amazing!

Chao memorizes Pi the same way story tellers once memorized long tales about
[Gilgamesh](https://en.wikipedia.org/wiki/Gilgamesh), yet for all his
memory prowess he can only juggle a handful of things at one time. I find
this actually to be very comforting, he is not a freak of nature, at
least not as freaky as you first thought.

The illusion we can hold many things in mind is almost identical to the
illusion that our field of view is high resolution everywhere. It's an
incredibly compelling illusion because the instant we wonder _what's over
there_ we do a quick [saccade](https://en.wikipedia.org/wiki/Saccade) and
are immediately rewarded with a high resolution view of exactly _what's
over there_. We ask the question and we get an instant answer, so it feels
like the answer was there the whole time.

{{< imgproc fovea Resize "512x">}} This picture exaggerates how big the
fovea is, it's actually only about as big as quarter held at arm's length.
{{< /imgproc >}}

Thinking is very much like vision which is not at all surprising since both
use the same brain hardware. We can rapidly flit from idea to idea, from
concept to concept, each time paging in the necessary details, but at no
time do we have more than about nine individual things in the front of our
minds.

How do we navigate a complex world with this seemingly gross limitation of
working-memory? There are two primary ways:
[chunking](https://en.wikipedia.org/wiki/Chunking_(psychology)) and
[hierarchy](https://en.wikipedia.org/wiki/Hierarchy).

When we think of a **car** we naturally divide the car into a handful of high
level chunks like the _engine_, the _dashboard_, the _seats_, the
_wheels_. When we mentally zoom into the engine, however, it effortlessly
resolves into more parts: the _engine block_, the _pistons_, the _spark
plugs_. And we can keep zooming in, although interestingly how far we can
zoom highly depends on how much we know about cars and the world in general.

In [Object
Oriented](https://en.wikipedia.org/wiki/Object-oriented_programming)
programming one of the simplest ways to tame complexity is limit your objects
to around seven _attributes_, where attributes are sometimes called _member
variables_ or _fields_. Many programmers immediately balk at this
suggestion. Sure, that works for toy examples, but I'm writing serious
software and my objects sometimes need 10, 20 or 50 attributes! That's how
serious my code is!

The biggest trap of software development is that it's easy, trivial in
fact, to write software that you yourself cannot understand, and in turn no
one else can understand. Even a novice, _especially_ a novice, can in a few
weeks write software that literally no one of the planet can easily think
or reason about. That's depressing but also kind of impressive in a way.

Objects which have too many attributes are one cause of software that's too
complicated to understand. Some people's solution is throw out objects
altogether, to give up on Object Oriented programming. This is not a crazy
idea, there are [other
ways](https://en.wikipedia.org/wiki/Functional_programming) to program and
they do have advantages, but most of the flaws attributed to Object
Oriented programming are really just fall out from doing it poorly, and boy
is it easy to do poorly.

{{< imgproc complex Resize "512x">}}
Complexity grows without bound.
{{< /imgproc >}}

The key thing to realize is a single object with a lot of attributes is
itself **not** Object Oriented. Instead it's a 1970's style [Structured
Program](https://en.wikipedia.org/wiki/Structured_programming) in disguise.
The attributes of the object are the **global variables** of the program,
and the object's methods are the program's **functions**. Every function
can freely access every global variable, which is a huge problem.

A structured program with more than seven global variables is trouble, and
if many objects in your program are themselves messy structured programs,
you are in serious trouble indeed. At a high level you are doing Object
Oriented programming but at a low level you are right back back in the
1970's dealing one bad program after the next. No wonder people throw in
the towel.

How do you we save this sinking ship? We save it by actively and
aggressively **keeping the number of attributes per object at or below
seven**. If you fail to do this you are punting the problem _to your future
self_, a problem that by definition your future self is going to have a
hard time solving!

Just today I had a [Python](https://www.python.org/) class called
`PerfEvent` with these attributes:

{{<highlight python>}}
        self.name = name
        self.start_ns = start_ns
        self.end_ns = end_ns
        self.category = category
        self.process_id = process_id
        self.thread_id = thread_id
        self.args = kwargs
        self.phase = phase
{{< / highlight >}}

That's eight attributes. Well eight is only one over the limit, let's wait
until it gets bigger?  No, let's deal with it **now**. To reduce the number
of attributes we introduce two new classes `Span` and `Origin`. Each class
is trivial and only has two attributes, but now the original object has
been slimmed down to six attributes, all is well again:

{{<highlight python>}}
        self.name = name
        self.span = Span(start_ns, end_ns)
        self.category = category
        self.origin = Origin(process_id, thread_id)
        self.args = kwargs
        self.phase = phase
{{< / highlight >}}

Although it's a minor change, look at the before and after, it simply
_looks_ better, even if you look stand far back and squint.

It seems minor but if you don't make these types of changes it will
eventually lead to intractable complexity, the type of complexity that
contributes to projects and companies failing, the type of complexity that
seduces humans into wasting hundreds of millions if not
[billions](https://www.nytimes.com/2012/12/09/technology/air-force-stumbles-over-software-modernization-project.html)
of dollars every year.

The benefits of this change go far beyond just limiting the number of
attributes. While accessing the attributes is slightly more verbose, I'd
argue it's in fact clearer. When we access `self.span.start_ns` it's useful
to know that `start_ns` is part of the `span`, and I like seeing that the
`process_id` is part of the `owner`. 

Also we can now pass `Span`'s and `Owner`'s around to functions instead of
having to pass variables in mysteriously inseparable pairs. We've
introduced two natural and useful concepts that will pay dividends over and
over in small but helpful ways, but even better think of how your code will
grow over time, not just how it currently is today. Your single monolithic
object has sprouted two buds, you can push functionality down into these
buds so they can grow into branches, which later can sprout buds of their
own.

For example we can now create a `Span.get_duration_ns()` method. Again it
seems incredibly minor, but writing `span.get_duration_ns()` is better than
writing `span.end_ns - span.start_ns` especially if we are going to do it
over and over.

The real magic though is that the benefits of being disciplined will accrue
like [compound interest](https://youtu.be/GtaoP0skPWc), instead of one
monolithic object no one can understand, you will create a beautiful tree
which buds and sprouts and branches organically.

{{< imgproc tree Resize "512x">}} 
A miniature <a href="https://en.wikipedia.org/wiki/Bonsai">Bonsai</a> tree.
{{< /imgproc >}}

There is aesthetic value here, code like most human created artifacts can
be beautiful, but the real payoff is if you assiduously tend to and groom
this tree you will be creating a structure which cleanly maps one-to-one
into your head, and into the heads of other people. It's no accident that
we find natural environments to be more soothing than the made world, the
construction of the natural world is in harmony with our brains think about
it.

Feel good about your work, you are potentially making life easier for
people pondering your code years and even decades from now, people you may
never meet. They will appreciate your kindness and attention to detail.
With this approach you will create a system _you and others_ can
**understand**, **maintain**, **debug** and **extend**. And the punchline
is that it's not hard. In fact it's _easier_.

It's easier and more pleasant to work with something that's well crafted
and simpatico with your thinking. It's hard and unpleasant to constantly
wrestle with something you don't understand. Trim, prune and shape your
objects early and often, your brain will thank you.

<hr>