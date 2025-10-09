#!/bin/bash

# Jekyll Migration Helper Script
# This script helps with common tasks after migrating from Sphinx to Jekyll

echo "🚀 Jekyll Migration Helper"
echo "=========================="

# Function to install dependencies
install_deps() {
    echo "📦 Installing Jekyll dependencies..."
    if command -v bundle &> /dev/null; then
        bundle install
        echo "✅ Dependencies installed successfully!"
    else
        echo "❌ Bundler not found. Please install Ruby and Bundler first."
        echo "   Visit: https://jekyllrb.com/docs/installation/"
    fi
}

# Function to serve the site locally
serve_site() {
    echo "🌐 Starting Jekyll development server..."
    bundle exec jekyll serve --livereload
}

# Function to build the site
build_site() {
    echo "🔨 Building Jekyll site..."
    bundle exec jekyll build
    echo "✅ Site built to _site/ directory"
}

# Function to clean the site
clean_site() {
    echo "🧹 Cleaning Jekyll site..."
    bundle exec jekyll clean
    echo "✅ Site cleaned"
}

# Function to validate the site
validate_site() {
    echo "🔍 Validating Jekyll configuration..."
    bundle exec jekyll doctor
}

# Function to show help
show_help() {
    echo "Available commands:"
    echo "  install     Install Jekyll dependencies"
    echo "  serve       Start development server with live reload"
    echo "  build       Build site for production"
    echo "  clean       Clean generated files"
    echo "  validate    Check Jekyll configuration"
    echo "  help        Show this help message"
    echo ""
    echo "Usage: ./jekyll-helper.sh [command]"
}

# Main script logic
case "$1" in
    "install")
        install_deps
        ;;
    "serve")
        serve_site
        ;;
    "build")
        build_site
        ;;
    "clean")
        clean_site
        ;;
    "validate")
        validate_site
        ;;
    "help"|"")
        show_help
        ;;
    *)
        echo "❌ Unknown command: $1"
        show_help
        exit 1
        ;;
esac