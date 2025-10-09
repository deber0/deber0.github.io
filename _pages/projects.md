---
layout: page
title: Projects
permalink: /projects/
---

# Projects

A compilation of various projects. Both in-progress and completed.

<div class="projects-grid">
  {% for project in site.projects %}
  <div class="project-card">
    <h3><a href="{{ project.url }}">{{ project.title }}</a></h3>
    <p>{{ project.description }}</p>
    {% if project.status %}
    <span class="project-status status-{{ project.status | downcase }}">{{ project.status }}</span>
    {% endif %}
  </div>
  {% endfor %}
</div>

<style>
.projects-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
  gap: 1.5rem;
  margin: 2rem 0;
}

.project-card {
  padding: 1.5rem;
  background: #f8f9fa;
  border-radius: 8px;
  border-left: 4px solid #0366d6;
  transition: transform 0.2s ease, box-shadow 0.2s ease;
}

.project-card:hover {
  transform: translateY(-2px);
  box-shadow: 0 4px 8px rgba(0,0,0,0.1);
}

.project-card h3 {
  margin-top: 0;
  margin-bottom: 0.5rem;
}

.project-card h3 a {
  color: #333;
  text-decoration: none;
}

.project-card h3 a:hover {
  color: #0366d6;
}

.project-card p {
  color: #666;
  margin-bottom: 1rem;
}

.project-status {
  display: inline-block;
  padding: 0.25rem 0.75rem;
  border-radius: 12px;
  font-size: 0.8rem;
  font-weight: 500;
  text-transform: uppercase;
}

.status-completed {
  background-color: #d4edda;
  color: #155724;
}

.status-in-progress {
  background-color: #fff3cd;
  color: #856404;
}

.status-planned {
  background-color: #e2e3e5;
  color: #495057;
}
</style>