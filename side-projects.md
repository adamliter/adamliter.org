---
title: adamliter
layout: default
date: 2018-01-26
nav_node: side-projects
---

# side projects

Here are some side projects I've worked on in my spare time.

{% for p in site.data.side-projects %}
{% if p.display %}
<div class="panel panel-primary">
  <div class="panel-heading">
  <h2 class="panel-title" id="{{ p.id }}">{{ p.title }}</h2>
  </div>
  <div class="panel-body">
  {% if p.id == "open-source" %}
  <p>I've contributed to a variety of open source projects, to varying
  degrees.</p>
  <ul class="list-group">
  {% for o in site.data.open-source %}
  {% if o.display %}
  <li class="list-group-item">
    <h4>
    <span class="label label-default">
    {{ o.project_name }}
    </span>
    </h4>
    <p>
    {{ o.contrib_description }}
    </p>
  </li>
  {% endif %}
  {% endfor %}
  </ul>
  {% else %}
  {{ p.description }}
  {% endif %}
  </div>
</div>
{% endif %}
{% endfor %}
