---
title: Adam Liter | Blog
layout: blog-travel
---
## Travel-Related Blog Entries

{% for post in site.categories.travel %} {% capture y %} {{post.date | date:"%Y"}} {% endcapture %} {% if year != y %} {% assign year = y %}
### {{ y }}
{% endif %}

{% include blogroll.html %}

{% else %}
<p>There are currently no blog posts in the <code>travel</code> category.</p>
{% endfor %}