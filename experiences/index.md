---
layout: default
title: Experiences
---
{% include breadcrumb-2.html %}

<div class="container">
  <h1>Experiential Learning <small class="header-small">"Active" learning opportunities</small></h1>
</div>

{% if site.morea_overview_experiences %}
<div class="container">
  {{ site.morea_overview_experiences.content | markdownify }}
</div>
{% endif %}

{% for module in site.morea_module_pages %}
{% if module.morea_coming_soon != true and module.morea_experiences.size > 0 %}
<div class="{% cycle 'section-background-1', 'section-background-2' %}">
  <div class="container">
    <h2><small>Module:</small> <a href="{{ site.baseurl }}{{ module.module_page.url }}">{{ module.title }}</a></h2>
    {% if module.morea_experiences.size == 0 %}
    <p>No experiences for this module.</p>
    {% endif %}

    <div class="row">
    {% for page_id in module.morea_experiences %}
      {% assign experience = site.morea_page_table[page_id] %}
      {% include entity-card.html url=experience.morea_url title=experience.title summary=experience.morea_summary labels=experience.morea_labels %}
    {% endfor %}
    </div>
  </div>
</div>
{% endif %}
{% endfor %}
