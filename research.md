---
title: adamliter/research
layout: default
date: 2016-01-14
nav_node: research
---

# /research

This is a selected list of my research. Things that are not listed here but are listed on my [CV][cv] are available upon request.

{% for r in site.data.research %}{% unless r.under_review == true %}

<div class="well">
<h2>{{ r.title }}</h2>
<ul>
{% unless r.collaborators == empty %}
<li>{% for c in r.collaborators %}{% assign collab = site.data.collaborators[c] %}{% if forloop.last == true and forloop.first == true %}<strong>Collaborator:</strong> {% include print_only-last_collab.html %}{% elsif forloop.first == true %}<strong>Collaborators:</strong> {% include print_collabs.html %}{% elsif forloop.last == true %} and {% include print_only-last_collab.html %}{% else %}{% include print_collabs.html %}{% endif %}{% endfor %}
{% endunless %}
</li>
<li><strong>PDF:</strong> {% if r.older_versions %} The latest version of this research is available as a <a href="{{ r.latest | replace: '!SITE_URL!', site.url }}">{{ r.latest_type }}</a>. Older versions are available upon request.{% else %} This research is currently in {{  r.latest_type }} format and is available <a href="{{ r.latest | replace: '!SITE_URL!', site.url }}">here</a>. {% endif %}
</li>
<li><strong>Brief summary:</strong>
{{ r.summary | markdownify | remove: '<p>' | remove: '</p>' }}
</li>
</ul>
</div>

{% endunless %}{% endfor %}

[cv]: {{ site.url }}/content/adamlitercv.pdf