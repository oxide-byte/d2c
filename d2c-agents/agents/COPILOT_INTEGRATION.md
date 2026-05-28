Including d2c agents in GitHub Copilot

To make d2c agents available to GitHub Copilot (Copilot Labs / Copilot for Business workflows):

1. Commit the d2c-agents/agents directory to the repository and push to GitHub.
2. (Copilot CLI / Copilot Extensions) Register agent manifests by adding an index or agent registry file (e.g., d2c-agents/agents/agents.json) listing available agents and their manifests.
3. For Copilot in IDE: create a README with usage instructions so Copilot can surface actions via Copilot Actions / Suggestions.
4. For Copilot Spaces: add the agents folder to the Space content or package agents as part of a Copilot-configured workspace so they are discoverable.

Recommended minimal registry (example):
- d2c-agents/agents/agents.json -> [{"name":"d2c-initialize","path":"d2c-initialize/agent.toml"}]

Security:
- Avoid embedding secrets in agent manifests.
- Validate any scripts before running them in CI or user machines.

If desired, an automation workflow (GitHub Action) can be added to expose agents as runnable commands from PRs or issue comments.