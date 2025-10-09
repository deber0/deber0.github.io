---
layout: page
title: Projects
permalink: /projects/
---

A compilation of various projects. Both in-progress and completed.

<div class="projects-grid">
  {% for project in site.projects %}
  <a href="{{ project.url }}" class="project-card-link">
    <div class="project-card">
      <h3>{{ project.title }}</h3>
      <p>{{ project.description }}</p>
      {% if project.status %}
      <span class="project-status status-{{ project.status | downcase }}">{{ project.status }}</span>
      {% endif %}
    </div>
  </a>
  {% endfor %}
</div>

<style>
.projects-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
  gap: 1.5rem;
  margin: 2rem 0;
}

.project-card-link {
  text-decoration: none;
  color: inherit;
  display: block;
}

.project-card {
  padding: 1.5rem;
  background: #ffffff;
  border-radius: 8px;
  border-left: 4px solid #3A6EA5;
  transition: transform 0.2s ease, box-shadow 0.2s ease, border-left-color 0.2s ease;
  cursor: pointer;
  box-shadow: 0 2px 4px rgba(0,0,0,0.1);
}

.project-card-link:hover .project-card {
  transform: translateY(-2px);
  box-shadow: 0 4px 12px rgba(0,0,0,0.15);
  border-left-color: #D4AF37;
}

.project-card h3 {
  margin-top: 0;
  margin-bottom: 0.5rem;
  color: #0A2540;
}

.project-card-link:hover h3 {
  color: #3A6EA5;
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