---
layout: page
title: Course Listing
permalink: /courses/
---

A collection of course materials from my education experiences.

<div class="course-categories">
  <div class="course-category">
    <h2><a href="#graduate-school">Graduate School</a></h2>
    <p>Advanced coursework and research from graduate studies</p>
  </div>
  
  <div class="course-category">
    <h2><a href="#undergraduate">Undergraduate</a></h2>
    <p>Foundation courses from undergraduate education</p>
  </div>
</div>

## Graduate School {#graduate-school}

{% for course in site.courses %}
  {% if course.level == 'graduate' %}
  <a href="{{ course.url }}" class="course-item-link">
    <div class="course-item">
      <h3>{{ course.title }}</h3>
      <p>{{ course.description }}</p>
    </div>
  </a>
  {% endif %}
{% endfor %}

## Undergraduate {#undergraduate}

{% for course in site.courses %}
  {% if course.level == 'undergraduate' %}
  <a href="{{ course.url }}" class="course-item-link">
    <div class="course-item">
      <h3>{{ course.title }}</h3>
      <p>{{ course.description }}</p>
    </div>
  </a>
  {% endif %}
{% endfor %}

<style>
.course-categories {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
  gap: 2rem;
  margin: 2rem 0;
}

.course-category {
  padding: 1.5rem;
  background: #f8f9fa;
  border-radius: 8px;
  text-align: center;
}

.course-category h2 a {
  color: #333;
  text-decoration: none;
}

.course-category h2 a:hover {
  color: #0366d6;
}

.course-item-link {
  text-decoration: none;
  color: inherit;
  display: block;
}

.course-item {
  margin-bottom: 1.5rem;
  padding: 1rem;
  border-left: 3px solid var(--vrv-steel);
  background: var(--vrv-cream);
  transition: transform 0.2s ease, box-shadow 0.2s ease, border-left-color 0.2s ease;
  cursor: pointer;
  border-radius: 6px;
}

.course-item-link:hover .course-item {
  transform: translateY(-1px);
  box-shadow: 0 2px 8px rgba(0,0,0,0.1);
  border-left-color: var(--vrv-gold);
}

.course-item h3 {
  margin-top: 0;
  margin-bottom: 0.5rem;
  color: var(--vrv-navy);
}

.course-item-link:hover h3 {
  color: var(--vrv-steel);
}

.course-item p {
  margin-bottom: 0;
  color: #666;
}
</style>