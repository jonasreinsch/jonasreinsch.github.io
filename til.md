## TIL

2020-07-08

#### Focus tip

As preparation, before high concentration is required:

1. Put on headphones
2. Start the [Brain.fm](https://www.brain.fm/) app, select one of the 'Focus' tracks.
3. Will you be able to work without internet for 15-30min? And are you on a Mac?
   Then use the [SelfControl](https://selfcontrolapp.com/) app in whitelist mode.

If you think 2 and 3 contradict each other (not able to use Brain.fm if no internet): I
use the Brain.fm iOS app and use SelfControl on the Mac.

#focus

---

2020-07-07

#### Generate an image with Imagemagick

```
convert -size 1000x1000 canvas:tomato canvas_tomato.png
```

[Reference](http://www.imagemagick.org/Usage/canvas/#solid)

#imagemagick

---

#### Follow redirects with curl

```
curl -L
```

or `curl --location`. Mnemonic: the `Location: `-header together with a `3xx` response code is set if a redirect is active.

#curl

---

#### Set the standard board in the Trello Mac app

```
Shift-Cmd-d
```

The standard board is loaded when the Mac app is started, you can
also quickly switch to it via `Cmd-d`.

#trello

---

#### Good favicon generator / checker

[RealFaviconGenerator](https://realfavicongenerator.net/)

#bookmarks

---


#### Print the default Html template for Pandoc

````
pandoc --print-default-template html
````

Redirect it to a file, then adapt the template (e.g. to add a favicon).
Then later include the template with

```
pandoc --template=FILE
```

#pandoc

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

---

#### How to make the font larger or smaller in Emacs

- To increase font size for the current buffer in Emacs, use `C-x C-+`
- To decrease font size for the current buffer in Emacs, use `C-x C--`
- To reset font size to the default, use `C-x C-0`

In practice, I hit `C-x`, hold the control key pressed, then just press `+` and `-`
repeatedly (much like `Cmd-+` / `Cmd--` for Mac apps works).

#emacs

