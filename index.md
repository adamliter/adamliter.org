---
title: adamliter
layout: default
date: 2022-04-23
nav_node: home
---

# about

I'm a Machine Learning Scientist at [Glassddoor][gd] and a PhD candidate
in the [Department of Linguistics][umd-ling] at [University of
Maryland][umd], advised by [Jeff Lidz][jeff] and [Norbert
Hornstein][norbert]. I am also a Language Science Fellow in University
of Maryland's [Language Science Center][lsc]. For more information about
my research, see my [research page][research].

Outside of work and linguistics, I enjoy tinkering with computers as
well as teaching others about computers. I've put together [materials
for a LaTeX workshop][latex-ling], loosely aimed at linguists, which
I've taught several times. I've also put together [materials for a `git`
workshop][git-workshop], loosely aimed at scientists who do human
subjects research, which I've taught once over the course of 7 weeks.

I also enjoy snowboarding, backpacking, and hiking. And I **really**
like coffee.  I worked as a barista, off-and-on, for a few years at the
Dunn Bros at the Smith Douglas More House, now known as [Smith][DB].

# recent updates

{% assign counter = 1 %}

<ul>
{% for post in site.categories.Updates %}
{% if counter < 6 %}
{% assign counter = counter | plus:1 %}
<li>
  <strong>{{ post.date | date: "%B %-d, %Y" }}</strong>
  {{ post.excerpt | remove: '<p>' | remove: '</p>' | strip_newlines | markdownify }}
</li>
{% endif %}
{% endfor %}
</ul>


<!-- links -->
[gd]: https://www.glassdoor.com/index.htm
[umd-ling]: https://linguistics.umd.edu/
[umd]: https://umd.edu/
[jeff]: https://jefflidz.com
[norbert]: https://linguistics.umd.edu/directory/norbert-hornstein
[lsc]: http://languagescience.umd.edu/
[research]: {{ site.url }}/research
[latex-ling]: {{ site.url }}/content/LaTeX/latex-workshop-for-linguists.pdf
[git-workshop]: https://gitlab.com/adamliter/git-workshop2018_materials
[DB]: https://www.smith1877.com/

<!-- Local Variables: -->
<!-- mode: markdown -->
<!-- coding: utf-8 -->
<!-- fill-column: 72 -->
<!-- End: -->
