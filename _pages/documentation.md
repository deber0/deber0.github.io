---
layout: page
title: Documentation
permalink: /documentation/
---

Documentation and insights on building technology ventures, business development, and scaling strategies.

<div class="documentation-grid">
  {% for doc in site.documentation %}
  <a href="{{ doc.url }}" class="documentation-card-link">
    <div class="documentation-card">
      <h3>{{ doc.title }}</h3>
      <p>{{ doc.description }}</p>
      {% if doc.category %}
      <span class="doc-category">{{ doc.category }}</span>
      {% endif %}
      {% if doc.external_links %}
      <div class="doc-links">
        {% for link in doc.external_links %}
        <span class="external-link-small" data-url="{{ link.url }}">{{ link.title }}</span>
        {% endfor %}
      </div>
      {% endif %}
    </div>
  </a>
  {% endfor %}
</div>

<style>
.documentation-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(350px, 1fr));
  gap: 2rem;
  margin: 2rem 0;
}

.documentation-card-link {
  text-decoration: none;
  color: inherit;
  display: block;
}

.documentation-card {
  padding: 2rem;
  background: #ffffff;
  border-radius: 8px;
  border-left: 4px solid #3A6EA5;
  box-shadow: 0 2px 4px rgba(0,0,0,0.1);
  transition: transform 0.2s ease, box-shadow 0.2s ease, border-left-color 0.2s ease;
  cursor: pointer;
}

.documentation-card-link:hover .documentation-card {
  transform: translateY(-2px);
  box-shadow: 0 4px 12px rgba(0,0,0,0.15);
  border-left-color: #D4AF37;
}

.documentation-card h3 {
  margin-top: 0;
  margin-bottom: 0.5rem;
  color: #0A2540;
}

.documentation-card-link:hover h3 {
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
  cursor: pointer;
  position: relative;
  z-index: 10;
}

.external-link-small:hover {
  background: #0A2540;
  text-decoration: none;
  color: #D4AF37 !important;
  transform: translateY(-1px);
  box-shadow: 0 2px 6px rgba(212, 175, 55, 0.25);
}

.external-link-small::after {
  content: " ↗";
  font-size: 0.7rem;
  color: #D4AF37 !important;
}

.doc-links {
  margin-top: 1rem;
  position: relative;
  z-index: 5;
}
</style>

<script>
document.addEventListener('DOMContentLoaded', function() {
  // Handle external link clicks (prevent card navigation)
  const externalLinks = document.querySelectorAll('.external-link-small');
  externalLinks.forEach(link => {
    link.addEventListener('click', function(e) {
      e.preventDefault();
      e.stopPropagation();
      const url = this.getAttribute('data-url');
      window.open(url, '_blank', 'noopener,noreferrer');
    });
  });
});
</script>