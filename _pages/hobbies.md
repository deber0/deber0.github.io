---
layout: page
title: Hobbies
permalink: /hobbies/
---

Personal interests and creative pursuits that fuel my passion for learning and creating.

<div class="hobbies-grid">
  {% for hobby in site.hobbies %}
  <div class="hobby-card">
    {% if hobby.image %}
    <img src="{{ hobby.image }}" alt="{{ hobby.title }}" class="hobby-image">
    {% endif %}
    <div class="hobby-content">
      <h3><a href="{{ hobby.url }}">{{ hobby.title }}</a></h3>
      <p>{{ hobby.description }}</p>
    </div>
  </div>
  {% endfor %}
</div>

<style>
.hobbies-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(320px, 1fr));
  gap: 2rem;
  margin: 2rem 0;
}

.hobby-card {
  background: #f8f9fa;
  border-radius: 8px;
  overflow: hidden;
  transition: transform 0.2s ease, box-shadow 0.2s ease;
}

.hobby-card:hover {
  transform: translateY(-2px);
  box-shadow: 0 4px 12px rgba(0,0,0,0.1);
}

.hobby-image {
  width: 100%;
  height: 200px;
  object-fit: cover;
}

.hobby-content {
  padding: 1.5rem;
}

.hobby-content h3 {
  margin-top: 0;
  margin-bottom: 0.5rem;
}

.hobby-content h3 a {
  color: #333;
  text-decoration: none;
}

.hobby-content h3 a:hover {
  color: #0366d6;
}

.hobby-content p {
  color: #666;
  margin-bottom: 0;
  line-height: 1.6;
}
</style>