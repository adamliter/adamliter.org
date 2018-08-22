---
title: adamliter/research
layout: default
date: 2018-08-21
nav_node: research
---

# research

I'm most interested in syntax, language acquisition, and semantics.
Although I'm genuinely interested in most domains of inquiry. For
example, I've also worked on issues of learnability in the phonotactic
domain.

Below you'll find a selected list of some of my research
projects. Things that are not listed here but that are listed on my
[CV][cv] are available upon request.

{% for r in site.data.research %}
  {% unless r.under_review == true %}
<div class="panel panel-primary">
  <div class="panel-heading">
  <h2 class="panel-title">{{ r.title }}</h2>
  </div>
  <div class="panel-body">
  <ul>
  {%- unless r.collaborators == empty -%}
  {%- assign collab_array = site.empty_array -%}

  <li>
    {%- for c in r.collaborators -%}
      {%- assign collab_array = collab_array | push: site.data.collaborators[c] -%}
    {%- endfor -%}
    {%- if collab_array.size == 1 -%}
      <strong>Collaborator:</strong>{{ site.my_space }}
    {%- else -%}
      <strong>Collaborators:</strong>{{ site.my_space }}
    {%- endif -%}
    {%- include print_collabs.html -%}
  </li>
  {%- endunless -%}
  {%- unless r.keywords == empty -%}
    <li>
      {%- if r.keywords.size == 1 -%}
        <strong>Keyword:</strong>
      {%- else -%}
        <strong>Keywords:</strong>
      {%- endif -%}
      {%- for kw in r.keywords -%}
        {{ site.my_space }}
        <span class="label label-default">{{ kw }}</span>
      {%- endfor -%}
    </li>
  {%- endunless -%}
  <li>
    <strong>PDF:</strong>{{ site.my_space }}
    {%- if r.older_versions -%}
      The latest version of this research is available as a <a href="{{ r.latest | replace: '!SITE_URL!', site.url }}">{{ r.latest_type }}</a>. Older versions are available upon request.
    {%- else -%}
      This research is currently in {{  r.latest_type }} format and is available <a href="{{ r.latest | replace: '!SITE_URL!', site.url }}">here</a>.
    {%- endif -%}
  </li>
  <li>
    <strong>Overview:</strong>{{ site.my_space }}
    {{ r.summary | markdownify | remove: '<p>' | remove: '</p>' }}
  </li>
  </ul>
  </div>
</div>
{% endunless %}
{% endfor %}

[cv]: {{ site.url }}/content/adamlitercv.pdf
