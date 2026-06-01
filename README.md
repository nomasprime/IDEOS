# IDEOS

Ansible configuration for IDEOS workstations.

## Profiles

- `human_workstations`: full interactive workstation setup for machines used
  directly by humans.
- `agent_workstations`: non-GUI developer/tooling subset for machines used by
  AI agents and automation.

Both groups are children of `ideos` in `etc/hosts`.

## Local Setup

Install command line developer tools:

```
xcode-select --install
```

Create an Ansible Vault password file:

```
echo p455w0rd >> ~/.ansible_password
```

For a local human workstation, run:

```
bin/bootstrap --limit localhost
```

## Mac Mini SAM

`SAM` is an `agent_workstations` host reached over Tailscale.

Bootstrap `SAM` manually first:

```
xcode-select --install
```

Then install Homebrew and the Tailscale macOS app, sign in to Tailscale, and
enable SSH for the `sam` account. Put the Tailscale IPv4 address in
`etc/hosts` as `SAM`'s `ansible_host`.

Verify Ansible can reach it:

```
ansible SAM -i etc/hosts -m ping
```

Preview changes:

```
ansible-playbook -i etc/hosts site.yml --limit SAM --check --diff
```

Apply changes:

```
ansible-playbook -i etc/hosts site.yml --limit SAM --diff
```

The playbook installs `Codex.app` on `SAM`. The remaining Codex host setup is
interactive because it requires the Codex GUI and the intended ChatGPT/Codex
workspace identity:

1. Open `Codex.app`
2. Sign in with the intended ChatGPT/Codex workspace identity
3. Enable Codex remote access in the app
4. Pair phones from the ChatGPT mobile app using the QR-code flow shown by
   Codex on `SAM`
5. Confirm `SAM` remains awake, online, and signed in to Tailscale

Other Macs can still connect to `SAM` over Tailscale for shell access:

```
ssh sam@SAM
```

## Useful Commands

List the inventory:

```
ansible-inventory -i etc/hosts --list
```

Run only human workstations:

```
ansible-playbook -i etc/hosts site.yml --limit human_workstations --diff
```

Run only agent workstations:

```
ansible-playbook -i etc/hosts site.yml --limit agent_workstations --diff
```
