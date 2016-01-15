---
title: adamliter/updates
layout: default
date: 2016-01-14
nav_node: updates
---

# /all-updates

<ul>
{% for post in site.posts %}

{% if post.categories contains "Updates" %}

<li>
  <strong>{{ post.date | date: "%Y-%m-%d" }}</strong>
  <p>{{ post.excerpt | remove: '<p>' | remove: '</p>' }}</p>
</li>

{% endif %}

{% endfor %}
</ul>
