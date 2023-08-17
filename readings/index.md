---
layout: default
title: Readings
---
{% include breadcrumb-2.html %}

<div class="container">
  <h1>Readings <small class="header-small">"Passive" learning opportunities</small></h1>
</div>

{% if site.morea_overview_readings %}
<div class="container">
  {{ site.morea_overview_readings.content | markdownify }}
</div>
{% endif %}

{% for module in site.morea_module_pages %}
{% if module.morea_coming_soon != true and module.morea_readings.size > 0 %}
<div class="{% cycle 'section-background-1', 'section-background-2' %}">
  <div class="container">
    <h2><small>Module:</small> <a href="{{ site.baseurl }}{{ module.module_page.url }}">{{ module.title }}</a></h2>
    <div class="row">
    {% for page_id in module.morea_readings %}
      {% assign reading = site.morea_page_table[page_id] %}
      {% include entity-card.html url=reading.morea_url title=reading.title summary=reading.morea_summary labels=reading.morea_labels %}
    {% endfor %}
    </div>
  </div>
</div>
{% endif %}
{% endfor %}
