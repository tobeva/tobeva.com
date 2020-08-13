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
considered one of the founders in the field of cognitive science. His
historic claim is that **you can only juggle between 5 and 9 things in your
brain at any one time**.

To my knowledge, despite some
[controversy](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4486516/) over
the years, this 7 &#x00B1; 2 figure has withstood the ongoing
[reproducibility
crisis](https://www.nature.com/news/1-500-scientists-lift-the-lid-on-reproducibility-1.19970)
and it appears to capture a deep truth about how our brains actually
function. However many people are immediately skeptical of the result
because **seven** sounds like an absurdly small number.

Surely if you are doing something complex like writing software, or
planning a wedding for that matter, you are juggling dozens to hundreds of
things? As it turns out you are not. At least not at once.

{{< imgproc pi Resize "512x">}}
The first 225 digits of Pi.
{{< /imgproc >}}

In 2005 **Lu Chao** recited [67,890
digits](https://www.livescience.com/50134-pi-day-memory-experts.html) of
Pi, a mind-boggling demonstration of a gifted and well-trained mind. Yet
given a series of random **single-digit** numbers he can on average recall
less the than **nine digits**. To be exact he's been measured to have a
[digit span](https://en.wikipedia.org/wiki/Memory_span#Digit-span) of
**8.83** which fits perfectly within Miller's 7 &#x00B1; 2 finding.
Amazing!

Chao memorizes Pi the same way story tellers once memorized long tales
about [Gilgamesh](https://en.wikipedia.org/wiki/Gilgamesh), yet he can only
juggle a handful of things at one time. I find this actually to be very
comforting, he is not a freak of nature, at least not as freaky as you
first thought.

The illusion we can hold many things in mind is almost identical to the
illusion that our field of view is high resolution everywhere. It's an
incredibly compelling illusion because the instant we wonder _what's over
there_, we do a quick [saccade](https://en.wikipedia.org/wiki/Saccade) and
are immediately rewarded with a high resolution view of exactly _what's
over there_. We ask the question and we get an instant answer, so it feels
like the answer was there the whole time.

{{< imgproc fovea Resize "512x">}} This picture exaggerates how big the
fovea is, it's actually only about as big as quarter held at arm's length.
{{< /imgproc >}}

Thinking in general works very much like vision. This is not surprising
since it's all implemented using the same brain hardware. We can rapidly
flit from idea to idea, from concept to concept, each time paging in the
necessary details, but at no time do we have more than about nine
individual things in the front of our minds.

How do we navigate a complex world with this seemingly draconian limit on
the size of our working memory? Two tools that we use are
[chunking](https://en.wikipedia.org/wiki/Chunking_(psychology)) and
[hierarchy](https://en.wikipedia.org/wiki/Hierarchy).

When we think of a car we naturally divide the car into a handful of high
level chunks like the _engine_, the _dashboard_, the _seats_, the _wheels_.
When we mentally zoom into the engine, however, it effortlessly resolves
into more parts: the _engine block_, the _pistons_, the _spark plugs_. And
we can keep zooming in, although how far we can zoom in highly depends on
how much we know about cars and the world in general.

In [Object Oriented
Programming](https://en.wikipedia.org/wiki/Object-oriented_programming) one
of the simplest ways to tame complexity is to limit your objects to around
seven _attributes_, where attributes are sometimes called _member
variables_ or _fields_. Many programmers immediately balk at this
suggestion. Sure, that works for toy examples, but I'm writing serious
software and my objects sometimes need 10, 20 or 50 attributes. You must be
working on easy stuff, my problems and my code are special and different!

The biggest trap of software development is that it's easy, trivial in
fact, to write software that you yourself cannot understand, and in turn no
one else can understand. Even a novice, _especially_ a novice, can in a few
weeks write software that literally no one of the planet can easily think
or reason about. That's depressing but also kind of impressive in a way.
With great power comes great responsibility.

Objects which have too many attributes are a major cause of software that's
too complicated to understand. Some people's solution is throw out objects
altogether, to give up on Object Oriented Programming. This is not a crazy
idea, there are [other ways](/resources/technical/programming/functional/)
to program and they do have advantages, but most of the flaws attributed to
Object Oriented Programming are due to doing it poorly, and boy is it easy
to do poorly.

{{< imgproc complex Resize "512x">}}
Complexity grows without bound.
{{< /imgproc >}}

The key thing to realize is a single object with a lot of attributes is
itself **not** Object Oriented. Instead it's a 1970's style [Structured
Program](https://en.wikipedia.org/wiki/Structured_programming) in disguise.
The attributes of the object are the **global variables** of the program,
and the object's methods are the program's **functions**. Every function
can freely access every global variable which is what leads to many of the
problems.

A structured program with more than seven global variables is trouble, and
if many objects in your program are themselves messy structured programs,
you are in serious trouble indeed. At a high level you are doing Object
Oriented Programming but at a low level you are right back back in the
1970's struggling to deal with one confusing program after the next.

How do we save this sinking ship? We save it by actively and aggressively
**keeping the number of attributes per object at or below seven**. If you
fail to do this you are punting the problem _to your future self_, a
problem that by definition your future self is going to have a hard time
solving!

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
of attributes we introduce two new classes or structs `Span` and `Origin`.
Each is trivial and only has two attributes, but now the original object
has been slimmed down to six attributes, all is well again:

{{<highlight python>}}
        self.name = name
        self.span = Span(start_ns, end_ns)
        self.category = category
        self.origin = Origin(process_id, thread_id)
        self.args = kwargs
        self.phase = phase
{{< / highlight >}}

Although it's a minor change, look at the before and after, it simply
_looks_ better, even if you stand far back and squint.

It seems minor but if you don't make these types of changes it will
eventually lead to intractable complexity, the type of complexity that
leads to projects and companies failing, the type of complexity that
seduces humans into wasting hundreds of millions if not [billions of
dollars every
year](https://spectrum.ieee.org/computing/software/why-software-fails).

The benefits introducing sub-objects goes far beyond just reducing the
number of attributes. While accessing the attributes is slightly more
verbose, I like the sound of `self.span.start_ns` compared to just
`self.start_ns`, but more importantly we can now pass `Span`'s and
`Owner`'s to functions, slimming down and chunking _their_ argument lists.

We've introduced two natural and useful concepts that will pay ongoing
dividends, but even better don't just think of how your code is today,
think about how it's going to grow over time. Your single monolithic object
has sprouted two buds. You can now push functionality down into these buds
and they can grow into branches, which later can sprout buds of their own.

For example now we can create a new `get_duration_ns()` method. Again it
seems minor, but writing `span.get_duration_ns()` is better than writing
`span.end_ns - span.start_ns` especially if you are going to do that in
many different places.

The real magic though is that the benefits of being disciplined will accrue
like [compound interest](https://youtu.be/GtaoP0skPWc), instead of one
monolithic object no one can understand you will create a beautiful tree
which buds and sprouts and branches organically. You will benefit from this
better design every minute you are working on the software, and the
software will benefit greatly over time from your improved ability to do
your work.

{{< imgproc tree Resize "512x">}} 
A miniature <a href="https://en.wikipedia.org/wiki/Bonsai">Bonsai</a> tree.
{{< /imgproc >}}

There is an aesthetic pay off here. Code, like most human created
artifacts, can be beautiful. However the real jackpot is that if you
assiduously tend and groom this tree you will be creating a structure which
maps into your head with minimal fuss and friction, and similarly into the
heads of other people.

It's no accident that we find natural environments to be more soothing than
the made world. The design of the natural world is more often in harmony
with how our brains think about that world. Game recognizes game.

Over time you will grow a system that _you and others_ can **understand**,
**maintain**, **debug** and **extend**. People looking at your code years
from now, maybe even those living in the [far
future](https://archiveprogram.github.com/), will appreciate your diligence
and hard work. And the punchline is doing all this is not hard. In fact
it's _much easier_ than not doing it.

It's easier and more pleasant to work with something that's well crafted
and simpatico with your thinking. It's hard and unpleasant to constantly
wrestle with something you don't understand. Trim, prune and shape your
objects early and often. Your brain will thank you.

<hr>