# AstroBlog Makefile
# Convenient commands for development and deployment

.PHONY: help run dev start build preview check clean install lint format

# Default target - show help
help:
	@echo "AstroBlog Development Commands:"
	@echo ""
	@echo "Development:"
	@echo "  make run      - Start development server (alias for dev)"
	@echo "  make dev      - Start development server with hot reload"
	@echo "  make start    - Start development server (same as dev)"
	@echo ""
	@echo "Build & Preview:"
	@echo "  make build    - Build the project for production"
	@echo "  make preview  - Preview the production build"
	@echo "  make check    - Run Astro checks (type checking, etc.)"
	@echo ""
	@echo "Maintenance:"
	@echo "  make install  - Install dependencies"
	@echo "  make clean    - Clean build artifacts and node_modules"
	@echo "  make lint     - Run linting (if configured)"
	@echo "  make format   - Format code (if configured)"
	@echo ""
	@echo "Usage: make <target>"

# Development targets
run: dev

dev:
	@echo "🚀 Starting AstroBlog development server..."
	npm run dev

start: dev

# Build targets
build:
	@echo "🏗️  Building AstroBlog for production..."
	npm run build

preview:
	@echo "👀 Starting preview server..."
	npm run preview

check:
	@echo "✅ Running Astro checks..."
	npm run check

# Maintenance targets
install:
	@echo "📦 Installing dependencies..."
	npm install

clean:
	@echo "🧹 Cleaning build artifacts and dependencies..."
	rm -rf dist/
	rm -rf node_modules/
	rm -rf .astro/
	@echo "✨ Clean complete! Run 'make install' to reinstall dependencies."

lint:
	@echo "🔍 Running linter..."
	@if [ -f "package.json" ] && grep -q "lint" package.json; then \
		npm run lint; \
	else \
		echo "No lint script found in package.json"; \
	fi

format:
	@echo "💅 Formatting code..."
	@if [ -f "package.json" ] && grep -q "format" package.json; then \
		npm run format; \
	else \
		echo "No format script found in package.json"; \
	fi

# Quick development workflow
fresh: clean install dev
	@echo "🆕 Fresh development environment ready!"

# Show current status
status:
	@echo "📊 AstroBlog Status:"
	@echo ""
	@echo "Node.js version: $(shell node --version 2>/dev/null || echo 'Not installed')"
	@echo "npm version: $(shell npm --version 2>/dev/null || echo 'Not installed')"
	@echo ""
	@if [ -f "package.json" ]; then \
		echo "Package.json found ✅"; \
		echo "Project: $(shell node -p "require('./package.json').name" 2>/dev/null)"; \
		echo "Version: $(shell node -p "require('./package.json').version" 2>/dev/null)"; \
	else \
		echo "Package.json not found ❌"; \
	fi
	@echo ""
	@if [ -d "node_modules" ]; then \
		echo "Dependencies installed ✅"; \
	else \
		echo "Dependencies not installed ❌ (run 'make install')"; \
	fi
	@echo ""
	@if [ -d "dist" ]; then \
		echo "Build artifacts present ✅"; \
	else \
		echo "No build artifacts (run 'make build' to create)"; \
	fi