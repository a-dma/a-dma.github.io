---
layout: page
title: About this website
permalink: /aboutsite/
banner_image: klein768x432.png
banner_image_alt: About this website
---

You are probably wondering what's up with all the "vases" around this
website. Let me try to explain what they are and why they are here.

_([SKIP](#tools) to the end of the page if you don't care about the
details and/or don't want to learn something new, you terrible
terrible person)._

If your relationship with maths has never been too good, these figures
might just seem like a slightly wonky vase, designed by a contemporary
artist that is trying to make some sort of bold statement about
something. However, this weirdly shaped contraptions are so called
[Klein bottles](https://en.wikipedia.org/wiki/Klein_bottle), and are
named after Felix Klein, a German mathematician who first described
them in 1882.

## Start with a strip

To get a Klein bottle you have to start with M&ouml;bius strip. This
is another very interesting surface. To obtain one simply cut a strip
of paper, twist one end by 180 degrees and join it with the opposite
end. ![M&obius strip](/assets/images/moebius.png){:.center-image} If
you now take a marker and start drawing along one "face" of the strip,
you will eventually end up at the starting point and will have drawn
on both sides of what was originally the paper strip.

In maths lingo, a M&ouml;bius strip is non-orientable and has one side
and one edge. Depending on whether you twist your paper strip
clockwise or anticlockwise, you can end up with two different kind of
strips. From a mathematical point of view this is the only difference
that matters. Topology (the area of mathematics that studies these
funny shapes) does not care about the absolute dimensions of a shape
and would consider a huge M&ouml;bius strip to be perfectly equivalent
to a tiny one. However, by twisting the strip in two different
directions, you end up with two intrinsically different shapes:
starting from the first you won't be able to obtain the second through
a series of continuous deformations, but you will have to cut into it
and glue it back the other way around.

## Two strips one bottle

If you now take two M&ouml;bius strips and glue them together along
their (only) edge, you end up with a Klein bottle! The curious
property of a Klein bottle is that it is a non-orientable surface with
no edges. This means that if you once more take your marker and start
drawing at a random point on your Klein bottle (and assuming that your
hand is _extremely_ flexible), you would be able to reconnect with
your starting point without having to lift the marker from the
surface.

The shape at the top of this page is probably the most well-known
version of a Klein bottle, however just like we had two kind of
M&ouml;bius strips, we have several kinds of Klein bottles, but how
many exactly? If you fire up Google Images and search for Klein
bottles, you will find an incredible amount of pictures of what seems
to be totally different shapes. The truth is that most of them are
equivalent from a topological standpoint, to be more rigorous they are
all regular homotopies. So, how many types of Klein bottles do we
actually have? The answer is an underwhelming _four_, and that's being
generous, because we really have three different shapes. It all has to
do with how you connect your M&ouml;bius strips. Two strips with
different handedness will create the shape shown above, whereas two
right-handed or left-handed strips will create so called
figure-of-eight Klein bottles.<br /> If at this point you've only
counted three shapes, then count again. When I say two strips with
different handedness, what I'm really saying is either left-right or
right-left. Unfortunately that is where the missing bottle comes from,
and can only be seen in a marked system of coordinates where each
strip is colored with a different color. Not so cool, I know, but
that's how it is.

If I have somehow succeeded in intriguing you about this topic, you
can find a paper by Carlo H. S&eacute;quin
[here](/papers/2013_JMA_Klein-bottles.pdf){:target="_blank"} that
describes all this in much greater detail.

## Out of this world

One final remark about Klein bottles is that even though we see
physical items being called Klein bottles, they are really not. By
definition a Klein bottle folds into itself, but does not
self-intersect. This means that during one of your marker adventures
on the surface of a Klein bottle, you could just draw straight through
the self intersection. Hopefully I don't have to explain you why this
is not possible in the real world. So how do Klein bottles not
self-intersect? Well, the truth is that, as always, mathematician
cheat. A Klein bottle is really a four-dimensional shape that can not
exist in our world with just three dimensions. By moving the offending
piece into a fourth dimension you would be able to simply go through
it. The same unfortunately can not be done in the physical world,
where a Klein bottle is just a so-called immersion in three
dimensions.

# Why did you make me read all this?

Assuming that you've been reading the text above and that you actually
care, I still haven't answered the main question that I set off to
address: why Klein bottles? Well, first off I think they are outright
cool. Secondly, if you've been paying attention, by now you should
know that, having no boundaries, Klein bottles don't have an inside or
an outside. This means that you can put something _next_ to a Klein
bottle and say that it actually is "inside". Similarly you can have
something surrounded by the surface of the bottle and claim that it
lays on the outside. From this comes the name of this blog _Inside the
Klein bottle_. I'm planning to write here things that are probably not
that useful for the vast majority of people (myself included, most
likely), but that I would like to have readily accessible somewhere,
or just get them out of the system. So, what better idea than putting
them up on the Internet? On the other hand I don't expect many people
to read the content of this website, so one might argue that these
pages are not really on the Internet if nobody is reading them, they
might as well still be just in my head. I thought that the
inside/outside analogy was a fitting one, and made me smile enough to
go through with it.


So, now you know why.<br/> Did I have to write a wall of text to
explain it? _Probably not_.<br/> Did I enjoy doing it? _Hell yeah!_

# <a name="tools"></a>Techy, geeky, nerdy stuff

Being a tech guy I couldn't leave out the part where I explain how the
website is made and which tools I have used. Plus, I also want to give
credit where credit is due.<br /> I am proud to say that I have only
used free and open-source software to make this website, plus it is
hosted on freely available platforms.

Here is a brief list of the tools and I've been using:

 * The website is made using
   [Jekyll](https://www.jekyllrb.com){:target="_blank"};
 * [Github](https://www.github.com){:target="_blank"} provides
   [free hosting](https://pages.github.com){:target="_blank"} for
   Jekyll, this is where the pages live;
 * The theme/layout I'm using is 99% based on
   [Gaya](https://github.com/gayanvirajith/gaya){:target="_blank"} by
   Gayan Virajith;
 * Most of the pages are written in
   [Markdown](http://daringfireball.net/projects/markdown/){:target="_blank"},
   using [kramdown](http://kramdown.gettalong.org){:target="_blank"}
   as parsing engine;
 * The actual posts are written in
   [AsciiDoc](http://asciidoc.org){:target="_blank"}; and rendered
   with
   [jekyll-asciidoc](https://github.com/asciidoctor/jekyll-asciidoc){:target="_blank"};
 * The website is automatically built using
   [Travis CI](https://travis-ci.org){:target="_blank"};
 * Most of the images are created from scratch (hence the lack of
   visual appeal) using
   [Inkscape](https://inkscape.org){:target="_blank"};
 * The Klein bottle logo is drawn using
   [Gnuplot](http://www.gnuplot.info){:target="_blank"} and is mostly
   based upon the code found
   [here](http://www.gnuplotting.org/klein-bottle/){:target="_blank"};
 * The publications list is created from
   [BibTeX](http://www.bibtex.org){:target="_blank"} references using
   [bibjekyll](https://github.com/pablooliveira/bibjekyll){:target="_blank"};
 * All the text editing and the page creation is done using my trusty
   companion of many typing adventures,
   [Emacs](https://www.gnu.org/software/emacs/){:target="_blank"}.

---

{% include social.html %}
