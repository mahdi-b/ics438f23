---
layout: default
title: Learning Outcomes
---
{% include breadcrumb-2.html %}

<div class="container">
  <h1>Learning Outcomes <small class="header-small">What you will know</small></h1>
</div>

{% if site.morea_overview_outcomes %}
<div class="container">
  {{ site.morea_overview_outcomes.content | markdownify }}
</div>
{% endif %}

{% if site.morea_outcome_pages.size == 0 %}
<div class="container">
  <p>No outcomes for this course.</p>
</div>
{% endif %}


{% for outcome in site.morea_outcome_pages %}

{% if outcome.referencing_modules.size > 0 %}

<div class="{% cycle 'section-background-1', 'section-background-2' %}">
  <div class="container">
    <a href="#" style="padding-top: 50px; margin-top: -50px; display: table-caption;" id="{{ outcome.morea_id }}"></a><h3>{{ outcome.title }}</h3>
    <p>
      {% for label in outcome.morea_labels %}
         <span class="badge">{{ label }}</span>
      {% endfor %}
    </p>
    {{ outcome.content | markdownify }}
    <p>
    <em>Referencing modules:</em>
    {% for module in outcome.referencing_modules %}
      <a href="../modules/{{ module.morea_id }}">{{ module.title }}</a>{% unless forloop.last %}, {% endunless %}
    {% endfor %}
    </p>
    {% unless outcome.morea_referencing_assessments.size == 0 %}
       <p>
        <em>Assessed by:</em>
        {% for assessment in outcome.morea_referencing_assessments %}
          {% unless assessment.referencing_modules.size == 0 %}
            <a href="..{{ assessment.url }}">{{ assessment.title }}</a>{% unless forloop.last %}, {% endunless %}
          {% endunless %}
        {% endfor %}
        </p>
    {% endunless %}

  </div>
</div>

{% endif %}

{% endfor %}
