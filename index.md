---
title: adamliter
layout: default
date: 2016-08-28
nav_node: home
---

# /about

I'm a trained linguist with interests in web development, programming, and system administration.
For more information about my research, see my [research page][research].

I **really** like coffee. I worked as a barista, off-and-on, for a few years at the [Dunn Bros at the Smith Douglas More House][DB].

# /recent-updates

{% assign counter = 1 %}

<ul>
{% for post in site.categories.Updates %}
{% if counter < 6 %}
{% assign counter = counter | plus:1 %}
<li>
  <strong>{{ post.date | date: "%B %d, %Y" }}</strong>
  {{ post.excerpt | remove: '<p>' | remove: '</p>' | strip_newlines | markdownify }}
</li>
{% endif %}
{% endfor %}
</ul>

[research]: {{ site.url }}/research
[DB]: https://www.facebook.com/pages/Dunn-Bros-at-the-Smith-Douglas-More-House/133169107463
