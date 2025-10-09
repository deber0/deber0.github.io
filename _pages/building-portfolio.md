---
layout: page
title: "Building the Portfolio"
permalink: /building-portfolio/
---

## Migration from Sphinx to Jekyll

This portfolio has been successfully migrated from Sphinx (Python-based documentation generator) to Jekyll (Ruby-based static site generator). This migration provides several advantages:

### Why Jekyll?

1. **GitHub Pages Native Support**: Jekyll is natively supported by GitHub Pages, eliminating the need for external CI/CD processes
2. **Markdown Simplicity**: Markdown is more widely adopted and easier to work with than reStructuredText
3. **Modern Web Standards**: Better mobile responsiveness and modern CSS capabilities
4. **Community & Themes**: Large ecosystem of themes and plugins
5. **Performance**: Faster build times and optimized output

### Migration Process

#### 1. Configuration Setup
- Created `_config.yml` with site settings and collections
- Set up `Gemfile` for dependency management
- Configured navigation and site structure

#### 2. Content Conversion
- Converted RST files to Markdown format
- Migrated images and assets to Jekyll's assets directory
- Preserved all PDF documents and downloadable content
- Reorganized content into Jekyll collections (projects, courses, hobbies)

#### 3. Layout System
Created custom layouts for different content types:
- **Default Layout**: Base template with navigation and footer
- **Page Layout**: For static pages like resume and guides
- **Project Layout**: Enhanced with status indicators and technology tags
- **Course Layout**: Academic content with institution and level metadata
- **Hobby Layout**: Personal interests with category organization

#### 4. Styling & Design
- Modern, responsive CSS built on top of the Minima theme
- Mobile-first design approach
- Consistent color scheme and typography
- Enhanced user experience with hover effects and smooth transitions

### Site Structure

```
deber0.github.io/
├── _config.yml          # Jekyll configuration
├── Gemfile              # Ruby dependencies
├── index.html           # Homepage
├── _layouts/            # Page templates
├── _pages/              # Static pages
├── _projects/           # Project collection
├── _courses/            # Course collection
├── _hobbies/            # Hobby collection
├── assets/
│   ├── css/             # Stylesheets
│   └── images/          # Images and PDFs
└── CNAME                # Domain configuration
```

### Features Implemented

- **Responsive Navigation**: Mobile-friendly hamburger menu
- **PDF Embedding**: Maintained ability to display PDF documents inline
- **Collection Organization**: Logical grouping of content by type
- **SEO Optimization**: Meta tags and structured data
- **Social Sharing**: Open Graph and Twitter Card support

### Development Workflow

#### Local Development
```bash
# Install dependencies
bundle install

# Serve locally
bundle exec jekyll serve

# Build for production
bundle exec jekyll build
```

#### Deployment
The site automatically deploys to GitHub Pages when changes are pushed to the main branch.

### Content Management

#### Adding New Projects
Create a new file in `_projects/` with frontmatter:
```yaml
---
title: "Project Name"
description: "Brief description"
status: "Completed" # or "In Progress", "Planned"
technologies: ["Tech1", "Tech2"]
---
```

#### Adding New Courses
Create a new file in `_courses/` with frontmatter:
```yaml
---
title: "Course Name"
course_code: "COURSE123"
level: "graduate" # or "undergraduate"
institution: "Institution Name"
---
```

#### Adding New Hobbies
Create a new file in `_hobbies/` with frontmatter:
```yaml
---
title: "Hobby Name"
description: "Brief description"
category: "Category Name"
image: "/assets/images/hobby-image.jpg"
---
```

### Performance Optimizations

- Optimized images for web delivery
- Minified CSS and JavaScript
- Lazy loading for images
- Efficient caching strategies
- Clean, semantic HTML structure

### Accessibility Features

- Semantic HTML elements
- Proper heading hierarchy
- Alt text for all images
- Keyboard navigation support
- High contrast color schemes
- Screen reader friendly navigation

This migration represents a significant upgrade in both technology stack and user experience while preserving all the valuable content and functionality of the original portfolio.