---
title: adamliter
layout: default
date: 2018-05-02
nav_node: home
---

# about

I'm a first year PhD student in
the [Department of Linguistics][umd-ling]
at [University of Maryland][umd]. My advisors are [Jeff Lidz][jeff]
and [Norbert Hornstein][norbert].  For more information about my
research, see my [research page][research].

Outside of linguistics, I'm also interested in web development,
programming, and system administration.  And I **really** like coffee.
I worked as a barista, off-and-on, for a few years at the Dunn Bros at
the Smith Douglas More House, now known as [Smith][DB].

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

[umd-ling]: http://ling.umd.edu/
[umd]: https://umd.edu/
[jeff]: http://ling.umd.edu/~jlidz/
[norbert]: http://ling.umd.edu/~hornstein/
[research]: {{ site.url }}/research
[DB]: https://www.smith1877.com/
