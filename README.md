# brain

A portable, namespaced pack of agent skills — a behavioural backbone (`brain-prime`), a discovery→plan→worker→feedback→memory loop, a repo-local memory layer, and the meta skills that maintain the system. All skills share the `brain-` prefix, so they coexist with any project skills without name collisions. Designed for **any coding agent** that reads `AGENTS.md` and discovers skills one level under a `skills/` folder.

This pack is **pure content**: ten `brain-*` skill folders, this README, and `PACK.md`. No build tooling, no sync script — *how it gets into a repo is the consumer's choice*. Drift control is the consumer's concern.

## Skills

| Skill | Role |
|---|---|
| `brain-prime` | The operating backbone — ethos, the loop, methodology, the non-negotiables. **Loaded first**, on every substantive task. |
| `brain-idea` | Stress-test an idea/plan before building; resolve load-bearing forks. Entry point. |
| `brain-audit` | Review/grade files against the repo's own rules; grounded findings. Entry point. |
| `brain-feature` | Surface grounded enhancement ideas, hand each to `brain-plan` as an evidence map. Entry point. |
| `brain-plan` | Turn a goal or evidence map into a task-contract (Files, delta, scenarios, DoD). |
| `brain-worker` | Execute a plan task-by-task; tick each DoD only with cited evidence. |
| `brain-feedback` | After a run with friction, conservatively propose config/skill edits. |
| `brain-memory` | Persist verified decisions/facts to the repo's knowledge base; refresh/supersede. |
| `brain-skill` | Author new skills or revise existing ones. Standalone. |
| `brain-author` | Author/revise `AGENTS.md`, agent prompts, rules files. Standalone. |

**The loop:** `brain-idea` / `brain-audit` / `brain-feature` (entry) → `brain-plan` → `brain-worker` (back to `brain-plan` on a gap, `brain-idea` on a fork) → `brain-feedback` → `brain-memory`.

## Consume

1. Copy the ten `brain-*/` folders into your repo's `.agents/skills/`. They sit one level deep (`skills/brain-<name>/SKILL.md`) — that is the discovery contract, so do not nest them in a sub-folder. The `brain-` prefix is the isolation: no collision with your project skills, no sub-folder needed.
   - Simplest tracked pull: `git subtree add --prefix=.agents/skills <this-repo> main` into a fresh `.agents/skills/`, or copy the `brain-*/` dirs into an existing one. (`README.md`/`PACK.md` are inert if they come along — they are not `SKILL.md` and are never discovered.)
   - A submodule is **not** suitable: it nests one level too deep and hides the skills from discovery.
2. Add **one line** to your repo's `AGENTS.md`:

   ```
   Load the `brain-prime` skill before any substantive task.
   ```

   That line is the entire always-on coupling. `brain-prime` carries the loop + methodology; the verbs are discovered on demand.
3. (Optional) `brain-memory` writes to a knowledge base at `<repo>/memory/`. The maintenance script lives at `.agents/skills/brain-memory/memory.py` and resolves the repo KB automatically (`<git-toplevel>/memory`). No global store is assumed — a personal global KB is your own global config, outside this pack.

`PACK.md` lists the managed `brain-*` folders — the contract for clean updates (replace only those) and removal.

## Why the `brain-` prefix

Flat skill discovery (`skills/<name>/SKILL.md`) means names must be unique within a consumer's skills folder. The bare verbs (`plan`, `worker`, `memory`, `audit`, …) are generic and would silently overwrite a consumer's own skill of the same name on copy — and this pack is pure content with no tooling to guard that. The `brain-` prefix makes collisions impossible and doubles as the isolation marker: every `brain-*` skill is visibly part of this pack.

## Authoring

Every skill is repo-agnostic: no absolute paths, no `~/.config` references, no operator-specific assumptions. To extend, edit a `brain-*/SKILL.md` and keep the genericize rule: anything you add must hold in any repo. `brain-skill` and `brain-author` enforce anatomy, progressive disclosure, and cross-reference sync.
