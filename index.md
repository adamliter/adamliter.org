---
title: adamliter
layout: default
date: 2016-01-14
nav_node: home
---

# /about

I'm currently an MA student in linguistics at Michigan State University. My main research interests in linguistics include syntax, semantics, their interface, and architectural issues more broadly. (For more information, see my [research page][research].)

I **really** like coffee. I worked as a barista, off-and-on, for a few years at the [Dunn Bros at the Smith Douglas More House][DB].

I'm interested in system administration, programming, and web development. I've taught myself some of the basics and plan to learn more.

# /recent-updates

{% assign counter = 1 %}

<ul>
{% for post in site.posts %}

{% if counter < 6 and post.categories contains "Updates" %}
{% assign counter = counter | plus:1 %}
<li>
  <strong>{{ post.date | date: "%Y-%m-%d" }}</strong>
  <p>{{ post.excerpt | remove: '<p>' | remove: '</p>' }}</p>
</li>
{% endif %}

{% endfor %}
</ul>

[research]: {{ site.url }}/research
[DB]: https://www.facebook.com/pages/Dunn-Bros-at-the-Smith-Douglas-More-House/133169107463
