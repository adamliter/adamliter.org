---
date: 2020-05-01
categories:
- Updates
tags:
- Linguistics
- Research
---

{% assign collab_array = site.empty_array %}
{% assign collab_array = collab_array | push: site.data.collaborators["karthik_durvasula"] %}
{% assign collab_array = collab_array | push: site.data.collaborators["adam_liter"] %}

{%- include print_collabs.html -%}{{ site.my_space }}
have made all materials, data, and analysis scripts for our accepted paper "There is a simplicity bias when generalizing from ambiguous data" available on <a href="https://gitlab.com/ka-research/simplicity_bias">GitLab at <code>ka-research/simplicity_bias</code></a>. The paper is accepted for publication with <a href="https://www.cambridge.org/core/journals/phonology"><em>Phonology</em></a>, and a <a href="https://ling.auf.net/lingbuzz/005120">preprint is available on LingBuzz</a>.

<!-- more -->
