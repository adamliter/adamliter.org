---
title: adamliter/research
layout: default
date: 2020-01-08
nav_node: research
---

# research

Broadly, I'm interested in syntax, language acquisition, learnability,
and semantics.

More specifically, I'm interested in studying grammatical competence
(*i.e.*, what it is that we know when we know a language). However, we
only have access to this knowledge via its use in individual humans. One
major strand of my research involves careful investigation into how we
can parcel out performance factors to ensure we're identifying aspects
of grammatical competence. I do this type of psycholinguistic research
both with children and with adults.

The other major strand of my research involves investigations into
learnability. Grammatical theories and their concomitant representations
are often evaluated on the basis of data fit. I'm interested in
furthermore using learnability considerations to help adjudicate between
theories and representations.

Below you'll find a selected list of specific research projects. Things
that are not listed here but that are listed on my [CV][cv] are
available upon request.

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
  <!-- check if the "Output:" list item should even be there -->
  {%- if r.publications != empty or r.latest_type != "" or r.in_prep -%}
  <li>
  <strong>Output:</strong>{{ site.my_space }}
  {%- if r.publications != empty -%}
  {%- assign pub_array = site.empty_array -%}
    This project has resulted in {{ r.publications.size }}{{ site.my_space }}
    {%- if r.publications.size == 1 -%}
      publication
    {%- else -%}
      publications
    {%- endif -%}
    .
    <ul>
      {%- for pub in r.publications -%}
        {%- assign pub_array = pub_array | push: site.data.publications[pub] -%}
      {%- endfor -%}
      {%- for pub in pub_array -%}
        <li>
          {%- if pub.doi != '' -%}
          <a href="https://doi.org/{{ pub.doi }}">
            <span class="label label-default">
              <i class ="ai ai-doi"></i> doi
            </span>
          </a>
          <!--
          for some reason this space will only show up with "&nbsp;"
          {{ site.my_space }} won't work
          -->
          &nbsp;
          {%- endif -%}
          {%- if pub.pdf != '' -%}
            <a href="{{ pub.pdf | replace: '!SITE_URL!', site.url }}">
              <span class="label label-default">
                <i class ="fa fa-file"></i> pdf
              </span>
            </a>
          {%- endif -%}
          <br />
          {{ pub.citation }}
        </li>
      {%- endfor -%}
    </ul>
  {%- elsif r.in_prep and r.latest_type != '' and r.older_versions -%}
    This project is currently being written up. The latest version of this research is available as a <a href="{{ r.latest | replace: '!SITE_URL!', sit.url }}">{{ r.latest_type }}</a>. Older versions are available upon request.
  {%- elsif r.in_prep and r.latest_type != '' -%}
    This project is currently being written up. The latest version of this research is available as a <a href="{{ r.latest | replace: '!SITE_URL!', sit.url }}">{{ r.latest_type }}</a>.
  {%- elsif r.in_prep and r.older_versions -%}
    This project is currently being written up. Older versions are available upon request.
  {%- elsif r.in_prep -%}
    This project is currently being written up.
  {%- elsif r.latest_type != '' -%}
    {%- if r.older_versions -%}
      The latest version of this research is available as a <a href="{{ r.latest | replace: '!SITE_URL!', site.url }}">{{ r.latest_type }}</a>. Older versions are available upon request.
    {%- else -%}
      This research is currently in {{  r.latest_type }} format and is available <a href="{{ r.latest | replace: '!SITE_URL!', site.url }}">here</a>.
    {%- endif -%}
  {%- endif -%}
  </li>
  {%- endif -%}
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
