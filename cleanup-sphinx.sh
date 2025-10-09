#!/bin/bash

# Sphinx to Jekyll Cleanup Script
# This script safely removes old Sphinx files after migration to Jekyll

echo "🧹 Sphinx to Jekyll Cleanup Script"
echo "=================================="
echo ""

# Function to show what would be deleted (dry run)
show_cleanup() {
    echo "📋 Files/directories that would be removed:"
    echo ""
    echo "🗂️  Sphinx Build Directories:"
    echo "   - _build/           (Sphinx build output)"
    echo "   - docs/             (GitHub Pages output from Sphinx)"
    echo ""
    echo "📝 Sphinx Source Files:"
    echo "   - _source/          (Original RST source files)"
    echo ""
    echo "🔧 Sphinx Configuration:"
    echo "   - Makefile          (Sphinx build commands)"
    echo "   - make.bat          (Windows Sphinx build commands)"
    echo ""
    echo "📦 Python Dependencies:"
    echo "   - _source/requirements.txt (Sphinx Python packages)"
    echo ""
    echo "🌐 GitHub Pages Files (if using Jekyll):"
    echo "   - CNAME will be KEPT (needed for custom domain)"
    echo "   - .nojekyll will be REMOVED (not needed for Jekyll)"
    echo ""
    echo "⚠️  Files that will be PRESERVED:"
    echo "   - All Jekyll files (_config.yml, Gemfile, etc.)"
    echo "   - All assets in assets/images/"
    echo "   - README.md"
    echo "   - .git/ directory"
    echo "   - CNAME file"
    echo ""
}

# Function to perform the cleanup
perform_cleanup() {
    echo "🚀 Starting cleanup process..."
    echo ""
    
    # Remove Sphinx build directories
    if [ -d "_build" ]; then
        echo "🗑️  Removing _build/ directory..."
        rm -rf "_build"
        echo "   ✅ _build/ removed"
    else
        echo "   ℹ️  _build/ directory not found (already clean)"
    fi
    
    if [ -d "docs" ]; then
        echo "🗑️  Removing docs/ directory..."
        rm -rf "docs"
        echo "   ✅ docs/ removed"
    else
        echo "   ℹ️  docs/ directory not found (already clean)"
    fi
    
    # Remove Sphinx source directory
    if [ -d "_source" ]; then
        echo "🗑️  Removing _source/ directory..."
        rm -rf "_source"
        echo "   ✅ _source/ removed"
    else
        echo "   ℹ️  _source/ directory not found (already clean)"
    fi
    
    # Remove Sphinx configuration files
    if [ -f "Makefile" ]; then
        echo "🗑️  Removing Makefile..."
        rm "Makefile"
        echo "   ✅ Makefile removed"
    else
        echo "   ℹ️  Makefile not found (already clean)"
    fi
    
    if [ -f "make.bat" ]; then
        echo "🗑️  Removing make.bat..."
        rm "make.bat"
        echo "   ✅ make.bat removed"
    else
        echo "   ℹ️  make.bat not found (already clean)"
    fi
    
    # Remove .nojekyll if it exists (not needed for Jekyll sites)
    if [ -f ".nojekyll" ]; then
        echo "🗑️  Removing .nojekyll..."
        rm ".nojekyll"
        echo "   ✅ .nojekyll removed"
    else
        echo "   ℹ️  .nojekyll not found (already clean)"
    fi
    
    echo ""
    echo "✨ Cleanup completed!"
    echo ""
    echo "📊 Summary:"
    echo "   - All Sphinx-related files have been removed"
    echo "   - Jekyll files remain intact"
    echo "   - Assets have been preserved"
    echo "   - CNAME file preserved for custom domain"
    echo ""
    echo "🎉 Your repository is now clean and ready for Jekyll!"
}

# Function to backup important files before cleanup
create_backup() {
    echo "💾 Creating backup of important files..."
    
    BACKUP_DIR="sphinx_backup_$(date +%Y%m%d_%H%M%S)"
    mkdir -p "$BACKUP_DIR"
    
    # Backup key Sphinx files for reference
    if [ -f "_source/conf.py" ]; then
        cp "_source/conf.py" "$BACKUP_DIR/"
        echo "   ✅ Backed up conf.py"
    fi
    
    if [ -f "_source/requirements.txt" ]; then
        cp "_source/requirements.txt" "$BACKUP_DIR/"
        echo "   ✅ Backed up requirements.txt"
    fi
    
    if [ -f "Makefile" ]; then
        cp "Makefile" "$BACKUP_DIR/"
        echo "   ✅ Backed up Makefile"
    fi
    
    echo "   📁 Backup created in: $BACKUP_DIR"
    echo ""
}

# Function to verify Jekyll setup
verify_jekyll() {
    echo "🔍 Verifying Jekyll setup..."
    echo ""
    
    # Check for essential Jekyll files
    ERRORS=0
    
    if [ ! -f "_config.yml" ]; then
        echo "   ❌ _config.yml not found"
        ERRORS=$((ERRORS + 1))
    else
        echo "   ✅ _config.yml found"
    fi
    
    if [ ! -f "Gemfile" ]; then
        echo "   ❌ Gemfile not found"
        ERRORS=$((ERRORS + 1))
    else
        echo "   ✅ Gemfile found"
    fi
    
    if [ ! -f "index.html" ] && [ ! -f "index.md" ]; then
        echo "   ❌ index.html or index.md not found"
        ERRORS=$((ERRORS + 1))
    else
        echo "   ✅ Homepage found"
    fi
    
    if [ ! -d "_layouts" ]; then
        echo "   ❌ _layouts directory not found"
        ERRORS=$((ERRORS + 1))
    else
        echo "   ✅ _layouts directory found"
    fi
    
    if [ ! -d "assets" ]; then
        echo "   ❌ assets directory not found"
        ERRORS=$((ERRORS + 1))
    else
        echo "   ✅ assets directory found"
    fi
    
    echo ""
    if [ $ERRORS -eq 0 ]; then
        echo "🎉 Jekyll setup looks good! Ready for cleanup."
        return 0
    else
        echo "⚠️  Found $ERRORS issues with Jekyll setup."
        echo "   Please ensure Jekyll migration is complete before cleanup."
        return 1
    fi
}

# Main script logic
case "$1" in
    "preview"|"dry-run"|"show")
        show_cleanup
        ;;
    "verify")
        verify_jekyll
        ;;
    "backup")
        create_backup
        ;;
    "clean"|"cleanup")
        if verify_jekyll; then
            echo ""
            read -p "⚠️  Are you sure you want to delete all Sphinx files? This cannot be undone. (y/N): " -n 1 -r
            echo ""
            if [[ $REPLY =~ ^[Yy]$ ]]; then
                create_backup
                perform_cleanup
            else
                echo "❌ Cleanup cancelled."
            fi
        else
            echo "❌ Cannot proceed with cleanup due to Jekyll setup issues."
        fi
        ;;
    "force")
        echo "⚠️  FORCE MODE: Skipping verification..."
        create_backup
        perform_cleanup
        ;;
    "help"|"")
        echo "Available commands:"
        echo "  preview     Show what files would be deleted (dry run)"
        echo "  verify      Check if Jekyll setup is complete"
        echo "  backup      Create backup of important Sphinx files"
        echo "  clean       Perform cleanup (with verification and backup)"
        echo "  force       Force cleanup without verification"
        echo "  help        Show this help message"
        echo ""
        echo "Usage: ./cleanup-sphinx.sh [command]"
        echo ""
        echo "Recommended workflow:"
        echo "  1. ./cleanup-sphinx.sh preview"
        echo "  2. ./cleanup-sphinx.sh verify"
        echo "  3. ./cleanup-sphinx.sh clean"
        ;;
    *)
        echo "❌ Unknown command: $1"
        echo "Use './cleanup-sphinx.sh help' for available commands"
        exit 1
        ;;
esac