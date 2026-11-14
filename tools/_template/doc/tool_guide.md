# 📖 Tool Template Guide

This document describes how to build, test, and document auxiliary tools for BlaiseNotebook.

## Components
1. `tool.json`: Metadata, versioning, author, entry script.
2. `run.py`: Script executed when invoking `bvnb tools run <name> [args...]`.
3. `uToolTemplate.pas`: Optional Pascal unit available for notebook cells.
4. `examples/demo_tool.bynb`: Interactive notebook demonstrating the tool.
