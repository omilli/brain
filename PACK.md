# Pack manifest

The folders below are managed by this pack. To update, replace **only** these; to remove, delete **only** these. Anything else in a consumer's `.agents/skills/` is their own and must not be touched on update.

Isolation is by **name** (the `brain-` prefix), not by sub-folder — discovery is one level deep (`skills/<name>/SKILL.md`), so nesting hides skills. The ten `brain-*` names are canonical; a consumer's project skills take other names and cannot collide.

## Managed folders

- `brain-prime/`
- `brain-idea/`
- `brain-audit/`
- `brain-feature/`
- `brain-plan/`
- `brain-worker/`
- `brain-feedback/`
- `brain-memory/`
- `brain-skill/`
- `brain-author/`

## Data (NOT managed — consumer-owned)

- `<repo>/memory/` — the knowledge base (entries, index, archive). Lives at the repo root, not in the `brain-memory/` skill folder, so a pack update never clobbers live memory data.

## Rename map (from a personal/global skill set → this pack)

If porting from a personal/global skill set, these renames apply:

| Source name | Pack name |
|---|---|
| `planner` | `brain-plan` |
| `reviewer` | `brain-audit` |

All cross-references inside the pack use the `brain-*` names.
