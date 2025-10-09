# Deber0's Journey - Jekyll Portfolio

This repository contains Drew Brown's personal portfolio website, successfully migrated from Sphinx to Jekyll for better GitHub Pages integration and modern web standards.

## 🌟 Live Site

Visit the portfolio at: [https://deber0.github.io](https://deber0.github.io)

## 📋 About This Migration

This site was converted from a Sphinx-based documentation site to a Jekyll static site generator. The migration provides:

- **GitHub Pages Native Support**: No more custom build processes
- **Modern Responsive Design**: Mobile-first, accessible layouts
- **Markdown Simplicity**: Easier content management than reStructuredText
- **Enhanced User Experience**: Better navigation and visual design
- **SEO Optimization**: Built-in SEO features and social sharing

## 🚀 Quick Start

### Prerequisites

- Ruby 2.7 or higher
- Bundler gem installed

### Local Development

1. **Clone the repository**
   ```bash
   git clone https://github.com/deber0/deber0.github.io.git
   cd deber0.github.io
   ```

2. **Install dependencies**
   ```bash
   bundle install
   ```

3. **Serve locally**
   ```bash
   bundle exec jekyll serve
   ```

4. **View the site**
   Open [http://localhost:4000](http://localhost:4000) in your browser

### Building for Production

```bash
bundle exec jekyll build
```

The site will be built to the `_site` directory.

## 📁 Site Structure

```
deber0.github.io/
├── _config.yml          # Jekyll configuration
├── Gemfile              # Ruby dependencies
├── index.html           # Homepage
├── _layouts/            # Page templates
│   ├── default.html     # Base layout
│   ├── page.html        # Static pages
│   ├── project.html     # Project pages
│   ├── course.html      # Course pages
│   └── hobby.html       # Hobby pages
├── _pages/              # Static pages
│   ├── resume.md        # Resume page
│   ├── courses.md       # Course listing
│   ├── projects.md      # Project listing
│   └── hobbies.md       # Hobby listing
├── _projects/           # Project collection
├── _courses/            # Course collection
├── _hobbies/            # Hobby collection
├── assets/
│   ├── css/             # Stylesheets
│   └── images/          # Images and PDFs
└── CNAME                # Domain configuration
```

## ✨ Content Management

### Adding New Content

#### Projects
Create a new Markdown file in `_projects/`:

```yaml
---
title: "Project Name"
description: "Brief description of the project"
status: "Completed" # Options: Completed, In Progress, Planned
technologies: ["JavaScript", "Python", "AWS"]
external_link: "https://github.com/username/repo" # Optional
---

Your project content in Markdown...
```

#### Courses
Create a new Markdown file in `_courses/`:

```yaml
---
title: "Course Name"
description: "Course description"
level: "graduate" # Options: graduate, undergraduate
course_code: "COURSE123"
institution: "Institution Name"
documents: 
  - "document1.pdf"
  - "document2.pdf"
---

Your course content in Markdown...
```

#### Hobbies
Create a new Markdown file in `_hobbies/`:

```yaml
---
title: "Hobby Name"
description: "Brief description"
image: "/assets/images/hobby-image.jpg" # Optional
category: "Category Name"
---

Your hobby content in Markdown...
```

### Managing Assets

- Place images in `assets/images/`
- Place PDFs and documents in `assets/images/` (maintaining original structure)
- Reference assets using `/assets/images/filename.ext`

## 🎨 Customization

### Styling
- Main styles are in `assets/css/style.scss`
- Built on top of the Minima theme with custom enhancements
- Responsive design with mobile-first approach

### Configuration
- Site settings in `_config.yml`
- Navigation menu items configured in `_config.yml` under `navigation:`
- Collections settings for projects, courses, and hobbies

### Layouts
- Customize page layouts in `_layouts/`
- Each content type has its own specialized layout
- All layouts extend the base `default.html` layout

## 🔧 Technical Details

### Built With
- **Jekyll**: Static site generator
- **GitHub Pages**: Hosting platform
- **Minima Theme**: Base theme with custom modifications
- **Kramdown**: Markdown processor
- **Rouge**: Syntax highlighting

### Features
- Responsive navigation with mobile hamburger menu
- PDF document embedding
- SEO optimization with jekyll-seo-tag
- RSS feed generation
- Sitemap generation
- Social media integration

### Browser Support
- Modern browsers (Chrome, Firefox, Safari, Edge)
- Mobile responsive design
- Progressive enhancement approach

## 📈 Deployment

The site automatically deploys to GitHub Pages when changes are pushed to the `main` branch. No additional build steps required.

### Custom Domain
The site uses a custom domain configured via the `CNAME` file.

## 🤝 Contributing

While this is a personal portfolio, suggestions and improvements are welcome:

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Submit a pull request

## 📄 License

This project is open source and available under the [MIT License](LICENSE).

## 🙏 Acknowledgments

- Original Sphinx-based portfolio provided the foundation
- Jekyll community for excellent documentation
- GitHub Pages for seamless hosting
- ODU for educational opportunities and recognition

---

## 📞 Contact

**Drew E. Brown**
- Portfolio: [deber0.github.io](https://deber0.github.io)
- GitHub: [@deber0](https://github.com/deber0)

*"Perseverance leads creation"*