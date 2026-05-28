d2c-initialize

Purpose:
- Scaffold a new project repository focused on documentation.
- Generate book.toml, mermaid.md and doc.md placeholders for documentation-first development.

Usage:
1. Run ./init.sh <project-name> [template-dir] from this directory to produce a new project in ./<project-name>
2. The agent manifest is agent.toml and the init script performs the actual scaffold.

Notes:
- Agent files live under d2c-core/agents and are discoverable by automation tooling.
- The agent intentionally ignores any src/ content; focus is on documentation and book configuration.