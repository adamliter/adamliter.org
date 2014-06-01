---
title: Adam Liter | Blog
layout: blog-default
---
## Blog Entries

<p style="text-align:center;">... still under construction; please bear with me ...</p>

{% for post in site.posts %} {% capture y %} {{post.date | date:"%Y"}} {% endcapture %} {% if year != y %} {% assign year = y %}
### {{ y }}
{% endif %}

<div class="blog-post-wrapper">
	<div class="blog-post-date">
	<!-- Make use of the <mphantom> to ensure that these two divs are the same height -->
		<math>
			<mtable columnalign="left">
				<mtr>
					<mtd>
						<mphantom><mtext>Title:</mtext></mphantom>
					</mtd>
				</mtr>
				<mtr>
					<mtd>
						<mtext> {{ post.date | date:"%Y-%m-%d" }} </mtext><mspace width="0.5em"></mspace>
					</mtd>
				</mtr>
				<mtr>
					<mtd>
						<mphantom><mtext>Tags:</mtext></mphantom>
					</mtd>
				</mtr>
			</mtable>
		</math>
	</div>
	<div class="blog-post-meta">
		<math>
			<mfenced open="{" close="">
				<mtable columnalign="left">
					<mtr>
						<mtd>
							<mtext mathcolor="#B22613">Title:&nbsp;</mtext><mtext href="{{ post.url }}">{{ post.title }}</mtext>
						</mtd>
					</mtr>
					<mtr>
						<mtd>
							<mtext>Categories: {{ post.categories | join: ', ' }}</mtext>
						</mtd>
					</mtr>
					<mtr>
						<mtd>
							<mtext>Tags: {{ post.tags | join: ', ' }}</mtext>
						</mtd>
					</mtr>
				</mtable>
			</mfenced>
		</math>
	</div>
</div>

{% endfor %}