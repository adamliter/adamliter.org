---
title: adamliter
layout: default
date: 2024-01-05
nav_node: home
---

# about

I'm a Staff Machine Learning Scientist at [Glassdoor][gd]. Before that,
I did my PhD in the [Department of Linguistics][umd-ling] at [University
of Maryland][umd], where I was advised by [Jeff Lidz][jeff] and [Norbert
Hornstein][norbert] (my dissertation can be found [here][diss]). I was
also a Language Science Fellow in University of Maryland's [Language
Science Center][lsc]. I still engage in some linguistics research,
albeit at a much slower pace since I work in industry. For more
information about my academic research, see my [research
page][research].

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
[lsc]: https://languagescience.umd.edu/
[research]: {{ site.url }}/research
[latex-ling]: {{ site.url }}/content/LaTeX/latex-workshop-for-linguists.pdf
[git-workshop]: https://gitlab.com/adamliter/git-workshop2018_materials
[DB]: https://www.smith1877.com/
[diss]: https://drum.lib.umd.edu/handle/1903/29000


<!-- Local Variables: -->
<!-- mode: markdown -->
<!-- coding: utf-8 -->
<!-- fill-column: 72 -->
<!-- End: -->
