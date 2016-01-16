---
title: adamliter/updates
layout: default
date: 2016-01-14
nav_node: updates
---

# /all-updates

<ul>
{% for post in site.categories.Updates %}
<li>
  <strong>{{ post.date | date: "%Y-%m-%d" }}</strong>
  {{ post.excerpt | remove: '<p>' | remove: '</p>' | strip_newlines | markdownify }}
</li>
{% endfor %}
</ul>