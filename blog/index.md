---
title: Adam Liter | Blog
layout: blog-default
---
## Blog Entries
{% for post in site.posts %} {% capture y %} {{post.date | date:"%Y"}} {% endcapture %} {% if year != y %} {% assign year = y %}
### {{ y }}
{% endif %}
<!--
<div id="blog-post-date">
<span style="font-weight:900"> {{ post.date | date:"%Y-%m-%d" }} </span>
</div>
<div id="blog-post-brace">
<span style="font-size:700%">{</span>
</div>
<div id="blog-post-content">
<div id="blog-floater"></div>
<div id="blog-post-content-child">
<p><span style="font-size:small">Title: <a href="{{ post.url }}"> {{ post.title }} </a></span></p>
<p><span style="font-size:small">Categories: {{ post.categories | join: ', ' }} </span></p>
<p><span style="font-size:small">Tags: {{ post.tags | join: ', ' }} </span></p>
</div>
</div>
-->
<math>
<mtext> {{ post.date | date:"%Y-%m-%d" }} </mtext>
<mfenced open="{" close="">
<mtable columnalign="left" columnwidth="100%">
<mrow><mtext>Title:&nbsp;</mtext><mtext href="{{ post.url }}">{{ post.title }}</mtext></mrow>
<mrow><mtext>Categories: {{ post.categories | join: ', ' }} </mtext></mrow>
<mrow><mtext>Tags: {{ post.tags | join: ', ' }} </mtext></mrow>
</mtable>
</mfenced>
</math>
{% endfor %} 