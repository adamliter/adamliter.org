---
title: Adam Liter | Blog
layout: blog-coffee
---
## Coffee-Related Blog Entries

{% for post in site.categories.coffee %} {% capture y %} {{post.date | date:"%Y"}} {% endcapture %} {% if year != y %} {% assign year = y %}
### {{ y }}
{% endif %}

<div class="blog-post-wrapper">
	<div class="blog-post-date">
	<!-- Make use of the <mphantom> to ensure that these two divs are the same height -->
		<math>
			<mtable columnalign="left">
				<mtr>
					<mtd>
						<mphantom><mtext>title:</mtext></mphantom>
					</mtd>
				</mtr>
				<mtr>
					<mtd>
						<mtext mathvariant="bold"> {{ post.date | date:"%Y-%m-%d" }} </mtext><mspace width="0.5em"></mspace>
					</mtd>
				</mtr>
				<mtr>
					<mtd>
						<mphantom><mtext>tags:</mtext></mphantom>
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
							<mtext mathcolor="#B22613">title:&nbsp;</mtext><mtext href="{{ post.url }}">{{ post.title }}</mtext>
						</mtd>
					</mtr>
					<mtr>
						<mtd>
							<mtext mathcolor="#B22613">categories:&nbsp;</mtext><mtext>{{ post.categories | join: ', ' }}</mtext>
						</mtd>
					</mtr>
					<mtr>
						<mtd>
							<mtext mathcolor="#B22613">tags:&nbsp;</mtext><mtext>{{ post.tags | join: ', ' }}</mtext>
						</mtd>
					</mtr>
				</mtable>
			</mfenced>
		</math>
	</div>
</div>

{% endfor %}