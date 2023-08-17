---
layout: default
title: Assessments
---
{% include breadcrumb-2.html %}

<div class="container">
  <h1>Assessments <small class="header-small">How to tell if you've learned the material</small></h1>
</div>

{% if site.morea_overview_assessments %}
<div class="container">
  {{ site.morea_overview_assessments.content | markdownify }}
</div>
{% endif %}

{% for module in site.morea_module_pages %}
{% if module.morea_coming_soon != true and module.morea_assessments.size > 0 %}
<div class="{% cycle 'section-background-1', 'section-background-2' %}">
  <div class="container">
    <h2><small>Module:</small> <a href="{{ site.baseurl }}{{ module.module_page.url }}">{{ module.title }}</a></h2>
      {% if module.morea_assessments.size == 0 %}
        <p>No assessments for this module.</p>
       {% endif %}
       <div class="row">
       {% for page_id in module.morea_assessments %}
         {% assign assessment = site.morea_page_table[page_id] %}
         {% include entity-card.html url=assessment.morea_url title=assessment.title summary=assessment.morea_summary labels=assessment.morea_labels outcomes=assessment.morea_outcomes_assessed_titles %}
       {% endfor %}
    </div>
  </div>
</div>
{% endif %}
{% endfor %}