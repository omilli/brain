# demo.tape — source for demo.gif. Render with `vhs demo.tape` from the repo root.
#
# Self-contained: the hidden block assembles a throwaway demo project from this
# repo's own brain-* folders. No external setup script required.

Output demo.gif

Set Shell "bash"
Set Theme "Catppuccin Mocha"
Set FontFamily "JetBrainsMono Nerd Font"
Set FontSize 15
Set Width 1200
Set Height 800
Set Padding 22
Set Margin 18
Set MarginFill "#181825"
Set BorderRadius 12
Set WindowBar Colorful
Set WindowBarSize 40
Set Framerate 24
Set TypingSpeed 55ms

Hide
Type `demo=$(mktemp -d); mkdir -p "$demo/.agents/skills"; cp -r brain-* "$demo/.agents/skills/"; printf 'Load the brain-prime skill before any substantive task.\n' > "$demo/AGENTS.md"; cd "$demo"`
Enter
Type "export PS1='brain > '"
Enter
Type "clear"
Enter
Show

Type "ls .agents/skills/"
Sleep 400ms
Enter
Sleep 2s

Type "cat AGENTS.md"
Sleep 400ms
Enter
Sleep 2s

Type `grep -A 8 'The loop' .agents/skills/brain-prime/SKILL.md`
Sleep 400ms
Enter
Sleep 3s

Type `grep -A 4 'Non-negotiables' .agents/skills/brain-prime/SKILL.md`
Sleep 400ms
Enter
Sleep 3.5s
