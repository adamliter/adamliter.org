---
title: Adam Liter | Blog
layout: blog-coffee
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