# Makefile for Flutter Project Management
#
# This file provides a set of commands to simplify the development,
# build, and maintenance process for the Flutter application.
#
# Usage:
#   make <command>
#
# Example:
#   make run_staging
#   make brb

# ==============================================================================
# HELP
# ==============================================================================
.PHONY: help
help:
	@echo "Commands:"
	@echo "  run_staging          : Run the app in the STAGING environment."
	@echo "  run_prod             : Run the app in the PRODUCTION environment."
	@echo "  build_apk_staging    : Build a STAGING APK."
	@echo "  build_appbundle_prod : Build a PRODUCTION App Bundle."
	@echo "  brb                  : Run build_runner build."
	@echo "  brw                  : Run build_runner watch."
	@echo "  brclean              : Clean the build_runner cache."
	@echo "  get                  : Run 'flutter pub get'."
	@echo "  clean                : Run 'flutter clean'."


# ==============================================================================
# FLUTTER RUNNERS
# ==============================================================================
.PHONY: run_staging run_prod

# Run the app in STAGING environment
run_staging:
	@echo "🚀 Running Flutter app in STAGING environment..."
	flutter run --dart-define=APP_ENV=staging

# Run the app in PRODUCTION environment
run_prod:
	@echo "🚀 Running Flutter app in PRODUCTION environment..."
	flutter run --dart-define=APP_ENV=prod


# ==============================================================================
# FLUTTER BUILDS
# ==============================================================================
.PHONY: build_apk_staging build_apk_prod build_appbundle_staging build_appbundle_prod

# Build a staging APK
build_apk_staging:
	@echo "📦 Building STAGING APK..."
	flutter build apk --dart-define=APP_ENV=staging

# Build a production APK
build_apk_prod:
	@echo "📦 Building PRODUCTION APK..."
	flutter build apk --dart-define=APP_ENV=prod

# Build a staging App Bundle
build_appbundle_staging:
	@echo "📦 Building STAGING App Bundle..."
	flutter build appbundle --dart-define=APP_ENV=staging

# Build a production App Bundle
build_appbundle_prod:
	@echo "📦 Building PRODUCTION App Bundle..."
	flutter build appbundle --dart-define=APP_ENV=prod


# ==============================================================================
# BUILD RUNNER
# ==============================================================================
.PHONY: brb brw brclean

# Run build_runner build with conflict resolution
brb:
	@echo "🛠️  Running build_runner build..."
	flutter pub run build_runner build --delete-conflicting-outputs

# Run build_runner watch with conflict resolution
brw:
	@echo "👀  Watching for file changes with build_runner..."
	flutter pub run build_runner watch --delete-conflicting-outputs

# Clean build_runner cache
brclean:
	@echo "🧹  Cleaning build_runner cache..."
	flutter pub run build_runner clean


# ==============================================================================
# PROJECT MAINTENANCE
# ==============================================================================
.PHONY: get clean

# Get Flutter dependencies
get:
	@echo "📦  Getting pub dependencies..."
	flutter pub get

# Clean the Flutter project
clean:
	@echo "🧹  Cleaning Flutter build files..."
	flutter clean


