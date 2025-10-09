// Site optimization JavaScript
(function() {
  'use strict';

  // Performance monitoring
  if ('performance' in window) {
    window.addEventListener('load', function() {
      // Log performance metrics for debugging
      const perfData = performance.getEntriesByType('navigation')[0];
      if (perfData && window.gtag) {
        gtag('event', 'timing_complete', {
          name: 'load',
          value: Math.round(perfData.loadEventEnd - perfData.loadEventStart)
        });
      }
    });
  }

  // Lazy loading for images without native support
  function lazyLoadImages() {
    const images = document.querySelectorAll('img[loading="lazy"]');
    
    if ('IntersectionObserver' in window) {
      const imageObserver = new IntersectionObserver(function(entries, observer) {
        entries.forEach(function(entry) {
          if (entry.isIntersecting) {
            const img = entry.target;
            img.classList.add('loaded');
            observer.unobserve(img);
          }
        });
      });

      images.forEach(function(img) {
        imageObserver.observe(img);
      });
    } else {
      // Fallback for browsers without IntersectionObserver
      images.forEach(function(img) {
        img.classList.add('loaded');
      });
    }
  }

  // Optimize external links
  function optimizeExternalLinks() {
    const externalLinks = document.querySelectorAll('a[href^="http"]:not([href*="' + window.location.hostname + '"])');
    
    externalLinks.forEach(function(link) {
      // Add security attributes
      if (!link.hasAttribute('rel')) {
        link.setAttribute('rel', 'noopener noreferrer');
      }
      
      // Add target blank if not set
      if (!link.hasAttribute('target')) {
        link.setAttribute('target', '_blank');
      }
      
      // Track external link clicks
      link.addEventListener('click', function() {
        if (window.gtag) {
          gtag('event', 'click', {
            event_category: 'external_link',
            event_label: this.href,
            transport_type: 'beacon'
          });
        }
      });
    });
  }

  // Accessibility enhancements
  function enhanceAccessibility() {
    // Add skip link functionality
    const skipLink = document.querySelector('.skip-link');
    if (skipLink) {
      skipLink.addEventListener('click', function(e) {
        e.preventDefault();
        const target = document.querySelector(this.getAttribute('href'));
        if (target) {
          target.focus();
          target.scrollIntoView({ behavior: 'smooth' });
        }
      });
    }

    // Enhance keyboard navigation for cards
    const cardLinks = document.querySelectorAll('.documentation-card-link, .project-card-link, .hobby-card-link, .course-item-link');
    cardLinks.forEach(function(card) {
      card.addEventListener('keydown', function(e) {
        if (e.key === 'Enter' || e.key === ' ') {
          e.preventDefault();
          this.click();
        }
      });
    });
  }

  // Service Worker registration for caching
  function registerServiceWorker() {
    if ('serviceWorker' in navigator) {
      window.addEventListener('load', function() {
        navigator.serviceWorker.register('/sw.js').then(function(registration) {
          console.log('ServiceWorker registration successful');
        }).catch(function(err) {
          console.log('ServiceWorker registration failed');
        });
      });
    }
  }

  // Critical CSS loading optimization
  function loadNonCriticalCSS() {
    const criticalCSS = document.querySelector('link[rel="preload"][as="style"]');
    if (criticalCSS) {
      criticalCSS.addEventListener('load', function() {
        this.rel = 'stylesheet';
      });
    }
  }

  // Initialize optimizations when DOM is ready
  if (document.readyState === 'loading') {
    document.addEventListener('DOMContentLoaded', function() {
      lazyLoadImages();
      optimizeExternalLinks();
      enhanceAccessibility();
      loadNonCriticalCSS();
    });
  } else {
    lazyLoadImages();
    optimizeExternalLinks();
    enhanceAccessibility();
    loadNonCriticalCSS();
  }

  // Register service worker after page load
  registerServiceWorker();

})();