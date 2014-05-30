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

<div id="blog-post-wrapper">
	<div id="blog-post-date">
		<math>
			<mtable columnalign="left">
				<mrow><mphantom><mtext>Title:</mtext></mphantom></mrow>
				<mrow><mtext> {{ post.date | date:"%Y-%m-%d" }} </mtext><mspace width="1em"></mspace></mrow>
				<mrow><mphantom><mtext>Tags:</mtext></mphantom></mrow>
			</mtable>
		</math>
	</div>
	<div id="blog-post-meta">
		<math overflow="linebreak">
			<mfenced open="{" close="">
			<mtable columnalign="left">
				<mrow><mtext>Title:&nbsp;</mtext><mtext href="{{ post.url }}">{{ post.title }}</mtext></mrow>
				<mrow><mtext>Categories: {{ post.categories | join: ', ' }} </mtext></mrow>
				<mrow><mtext>Tags: {{ post.tags | join: ', ' }} </mtext></mrow>
			</mtable>
			</mfenced>
		</math>
	</div>
</div>

<!--
<div id="blog-post-content">
\(
\text{ {{ post.date | date:"%Y-%m-%d" }} }
\quad
\begin{cases}
\text{Title: \href{ {{ post.url }} }{ {{ post.title }} } } \\
\text{Categories: {{ post.categories | join: ', ' }}} \\
\text{Tags: {{ post.tags | join: ', ' }}} \\
\end{cases}
\)
</div>
-->
{% endfor %}