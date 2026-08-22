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
<div class="border border-[var(--color-my-blue)] rounded mb-4 overflow-hidden">
  <div class="bg-[var(--color-my-blue)] px-4 py-3">
  <h2 class="text-lg font-medium text-white mm-0" id="{{ p.id }}">{{ p.title }}</h2>
  </div>
  <div class="p-4 bg-white">
  {% if p.id == "open-source" %}
  <p>I've contributed to a variety of open source projects, to varying
  degrees.</p>
  <ul class="border border-gray-200 rounded divide-y divide-gray-200 list-none p-0 m-0">
  {% for o in site.data.open-source %}
  {% if o.display %}
  <li class="px-4 py-3">
    <h4 class="mt-0">
    <span class="inline-block bg-gray-500 text-white text-xs font-semibold px-2 py-0.5 rounded">
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
