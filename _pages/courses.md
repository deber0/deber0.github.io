---
layout: page
title: Course Listing
permalink: /courses/
---

# Course Listing

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
  <div class="course-item">
    <h3><a href="{{ course.url }}">{{ course.title }}</a></h3>
    <p>{{ course.description }}</p>
  </div>
  {% endif %}
{% endfor %}

## Undergraduate {#undergraduate}

{% for course in site.courses %}
  {% if course.level == 'undergraduate' %}
  <div class="course-item">
    <h3><a href="{{ course.url }}">{{ course.title }}</a></h3>
    <p>{{ course.description }}</p>
  </div>
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

.course-item {
  margin-bottom: 1.5rem;
  padding: 1rem;
  border-left: 3px solid #0366d6;
  background: #f8f9fa;
}

.course-item h3 {
  margin-top: 0;
  margin-bottom: 0.5rem;
}

.course-item h3 a {
  color: #0366d6;
  text-decoration: none;
}

.course-item h3 a:hover {
  text-decoration: underline;
}

.course-item p {
  margin-bottom: 0;
  color: #666;
}
</style>