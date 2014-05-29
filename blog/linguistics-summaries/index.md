---
title: Adam Liter | Blog
layout: blog-default
---
## Linguistics Summaries
<p>This is a series of blog posts that are summaries of some of the work in linguistics that I've read. This series is largely for my purposes, though I thought I would put them on the web in case they end up being useful to anyone else. Nonetheless, the main purpose of this series is as a memory aid for me, so it is possible&#8212;perhaps likely&#8212;that they might not be that helpful to others.</p>
{% for post in site.categories.linguistics summaries %} {% capture y %} {{post.date | date:"%Y"}} {% endcapture %} {% if year != y %} {% assign year = y %}
### {{ y }}
{% endif %}
<p> <span style="font-weight:900"> {{ post.date | date:"%Y-%m-%d" }} </span> : <a href="{{ post.url }}"> {{ post.title }} </a> </p>
{% endfor %} 