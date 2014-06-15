---
title: Adam Liter | Blog
layout: blog-linguistics
nav_child: 3
nav_node: linguistics
---
## Linguistics-Related Blog Entries

{% for post in site.categories.linguistics %} {% capture y %} {{post.date | date:"%Y"}} {% endcapture %} {% if year != y %} {% assign year = y %}
### {{ y }}
{% endif %}

{% include blogroll.html %}

{% else %}
<p>There are currently no blog posts in the <code>linguistics</code> category.</p>
{% endfor %}