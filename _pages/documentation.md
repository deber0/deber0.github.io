---
layout: page
title: Documentation
permalink: /documentation/
---

Documentation and insights on building technology ventures, business development, and scaling strategies.

<div class="documentation-grid">
  {% for doc in site.documentation %}
  <div class="documentation-card">
    <h3><a href="{{ doc.url }}">{{ doc.title }}</a></h3>
    <p>{{ doc.description }}</p>
    {% if doc.category %}
    <span class="doc-category">{{ doc.category }}</span>
    {% endif %}
    {% if doc.external_links %}
    <div class="doc-links">
      {% for link in doc.external_links %}
      <a href="{{ link.url }}" target="_blank" rel="noopener" class="external-link-small">{{ link.title }}</a>
      {% endfor %}
    </div>
    {% endif %}
  </div>
  {% endfor %}
</div>

<style>
.documentation-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(350px, 1fr));
  gap: 2rem;
  margin: 2rem 0;
}

.documentation-card {
  padding: 2rem;
  background: #ffffff;
  border-radius: 8px;
  border-left: 4px solid #0A2540;
  box-shadow: 0 2px 4px rgba(0,0,0,0.1);
  transition: transform 0.2s ease, box-shadow 0.2s ease, border-left-color 0.2s ease;
}

.documentation-card:hover {
  transform: translateY(-2px);
  box-shadow: 0 4px 12px rgba(0,0,0,0.15);
  border-left-color: #D4AF37;
}

.documentation-card h3 {
  margin-top: 0;
  margin-bottom: 0.5rem;
}

.documentation-card h3 a {
  color: #0A2540;
  text-decoration: none;
}

.documentation-card h3 a:hover {
  color: #3A6EA5;
}

.documentation-card p {
  color: #6c7b7f;
  line-height: 1.6;
  margin-bottom: 1rem;
}

.doc-category {
  display: inline-block;
  background: #0A2540;
  color: #FAF7F2;
  padding: 0.2rem 0.5rem;
  border-radius: 4px;
  font-size: 0.8rem;
  font-weight: 500;
  margin-bottom: 0.5rem;
}

.doc-links {
  margin-top: 1rem;
}

.external-link-small {
  display: inline-block;
  background: #3A6EA5;
  color: #D4AF37 !important;
  padding: 0.2rem 0.5rem;
  border-radius: 4px;
  text-decoration: none;
  font-size: 0.8rem;
  margin: 0.2rem 0.2rem 0.2rem 0;
  transition: all 0.2s ease;
  font-weight: 600;
}

.external-link-small:hover {
  background: #0A2540;
  text-decoration: none;
  color: #D4AF37 !important;
  transform: translateY(-1px);
  box-shadow: 0 2px 6px rgba(212, 175, 55, 0.25);
}

.external-link-small:visited {
  color: #D4AF37 !important;
}

.external-link-small:active {
  color: #D4AF37 !important;
}

.external-link-small::after {
  content: " ↗";
  font-size: 0.7rem;
  color: #D4AF37 !important;
}
</style>