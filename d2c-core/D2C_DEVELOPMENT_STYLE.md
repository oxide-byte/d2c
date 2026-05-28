D2C Development Style (Docs-First)

Overview:
- A documentation-first approach inspired by Spec Driven Development.
- Emphasize living documentation: book.toml, mermaid diagrams, and narrative docs drive implementation.
- Agents (prefix d2c-) automate repository scaffolding, documentation updates, and verification.

Agents:
- All agents are placed under d2c-core/agents and named with the d2c- prefix.
- Agents are small, focused, and can be run locally or integrated with automation.

Principles:
- Documentation is the first-class artifact.
- Code (src/) is created or ignored as needed; many agents scaffold docs and metadata only.
