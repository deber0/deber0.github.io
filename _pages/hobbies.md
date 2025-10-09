---
layout: page
title: Hobbies
permalink: /hobbies/
---

Personal interests and creative pursuits that fuel my passion for learning and creating.

<div class="hobbies-grid">
  {% for hobby in site.hobbies %}
  <a href="{{ hobby.url }}" class="hobby-card-link">
    <div class="hobby-card">
      {% if hobby.image %}
      <img src="{{ hobby.image }}" alt="{{ hobby.title }}" class="hobby-image">
      {% endif %}
      <div class="hobby-content">
        <h3>{{ hobby.title }}</h3>
        <p>{{ hobby.description }}</p>
      </div>
    </div>
  </a>
  {% endfor %}
</div>

<style>
.hobbies-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(320px, 1fr));
  gap: 2rem;
  margin: 2rem 0;
}

.hobby-card-link {
  text-decoration: none;
  color: inherit;
  display: block;
}

.hobby-card {
  background: var(--vrv-cream);
  border-radius: 8px;
  overflow: hidden;
  transition: transform 0.2s ease, box-shadow 0.2s ease;
  cursor: pointer;
  border: 2px solid transparent;
}

.hobby-card-link:hover .hobby-card {
  transform: translateY(-2px);
  box-shadow: 0 4px 12px rgba(0,0,0,0.15);
  border-color: var(--vrv-gold);
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
  color: var(--vrv-navy);
}

.hobby-card-link:hover h3 {
  color: var(--vrv-steel);
}

.hobby-content p {
  color: #666;
  margin-bottom: 0;
  line-height: 1.6;
}
</style>