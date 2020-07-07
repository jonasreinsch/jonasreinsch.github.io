## TIL

2020-07-07

#### How to make the font larger or smaller in Emacs

- To increase font size for the current buffer in Emacs, use `C-x C-+`
- To decrease font size for the current buffer in Emacs, use `C-x C--`
- To reset font size to the default, use `C-x C-0`

In practice, I hit `C-x`, hold the control key pressed, then just press `+` and `-`
repeatedly (much like `Cmd-+` / `Cmd--` for Mac apps works).

#emacs

---

#### Tell Emacs to make script files executable upon saving

```
(add-hook 'after-save-hook
    'executable-make-buffer-file-executable-if-script-p)
```

This will add a hook that checks if a the text contained in a buffer
looks like a script (it does this by testing if the text starts with a shebang).
If yes and the corresponding file is not executable yet it will
make it executable.

#emacs