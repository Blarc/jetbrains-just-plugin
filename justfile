#!/usr/bin/env just --justfile

# Generate Parser and Lexer
generate:
  rm -rf src/main/gen/org/mvnsearch
  ./gradlew generateLexer generateParser

# Build just plugin
build-plugin: clean generate
  ./gradlew patchPluginXml buildPlugin

# clean
clean:
  rm -rf build/distributions
  rm -rf build/resources
  rm -rf build/classes
