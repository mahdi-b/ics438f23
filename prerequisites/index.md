---
layout: default
title: Prerequisites
---
{% include breadcrumb-2.html %}

<div class="container">
  <h1>Prerequisites <small class="header-small">Important material from other courses</small></h1>
</div>

{% if site.morea_overview_prerequisites %}
<div class="container">
 {{ site.morea_overview_prerequisites.content | markdownify }}
</div>
{% endif %}


{% for module in site.morea_module_pages %}
{% if module.morea_coming_soon != true and module.morea_prerequisites.size > 0 %}
<div class="{% cycle 'section-background-1', 'section-background-2' %}">
  <div class="container">
    <h2><small>Module:</small> <a href="{{ site.baseurl }}{{ module.module_page.url }}">{{ module.title }}</a></h2>
    <div class="row">
    {% for page_id in module.morea_prerequisites %}
      {% assign prereq = site.morea_page_table[page_id] %}
      {% include entity-card.html url=prereq.morea_url icon_url=prereq.morea_icon_url title=prereq.title summary=prereq.content labels=prereq.morea_labels %}
    {% endfor %}
    </div>
  </div>
</div>
{% endif %}
{% endfor %}
