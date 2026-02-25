# Homebrew Tap for Quint

Security gateway for AI agents — RBAC, risk scoring, signed audit trails.

## Install

```bash
brew install quint-security/tap/quint
```

## Upgrade

```bash
brew upgrade quint
```

## Usage

```bash
quint init          # Detect MCP configs and generate policy
quint init --apply  # Apply gateway config
quint start         # Start the MCP gateway
quint dashboard     # Open the web dashboard
quint status        # Check audit log and agent status
quint connect       # Manage OAuth credentials
```

## More

- [Documentation](https://github.com/Quint-Security/proxy)
- [Website](https://quintai.dev)
