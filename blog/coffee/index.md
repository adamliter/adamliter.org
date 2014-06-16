---
title: Adam Liter | Blog
layout: default
nav_child: 3
nav_node: coffee
---
## Coffee-Related Blog Entries

{% for post in site.categories.coffee %}
{% capture y %}
{{post.date | date:"%Y"}}
{% endcapture %}
{% if year != y %}
{% assign year = y %}
### {{ y }}
{% endif %}

{% include blogroll.html %}

{% else %}
<p>There are currently no blog posts in the <code>coffee</code> category.</p>
{% endfor %}