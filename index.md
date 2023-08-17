---
layout: default
title: Home
---

{% include breadcrumb.html %}

<div class="container">
  {% if site.morea_home_page %}
    {{ site.morea_home_page.content | markdownify }}
  {% else %}
    No home page content supplied.
  {% endif %}
</div>

