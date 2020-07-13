## TIL

2020-07-12

#### Length of strings and list-like data structures in different programming languages

Python:

```
a = [1, 2, 3, 4]
t = 1, 2, 3, 4
s = "blub"
print(len(a))
print(len(s))
print(len(t)) # length of a tuple
```

Perl:
```
my @a = (1, 2, 3, 4);
my $s = "blub";
say scalar @a;
say length $s;
# list assignment, in scalar context, returns number of scalars on RHS
my $length = () = (1, 2, 3); 
say $length;
# In one line
say scalar(() = (1, 2, 3));

```
See [here](https://stackoverflow.com/a/57336399), [here](https://stackoverflow.com/a/54564429), and [here](https://metacpan.org/pod/distribution/perlsecret/lib/perlsecret.pod#Goatse).


Elisp:
```
(length '(1 2 3))
(length "blub")
```

Javascript:

```
"blub".length;
[1, 2, 3, 4].length;
```

Swift:
```
"blub".count
[1, 2, 3, 4].count

```

#python #perl #elisp #javascript #swift

---

2020-07-10

#### Given an email address, get the UID of the corresponding Firebase user

```
#!/usr/bin/env python
import sys
import firebase_admin
from firebase_admin import auth
from email_validator import validate_email, EmailNotValidError
import google.auth.exceptions

cred = firebase_admin.credentials.Certificate(
    'SERVICE_ACCOUNT.json'
)
firebase_admin.initialize_app(cred)

if len(sys.argv) != 2:
    print("Usage: " + sys.argv[0] + " EMAIL")
    sys.exit(1)

email = sys.argv[1]

# make a syntax-only check if the mail address is valid
try:
    validate_email(email, check_deliverability=False)
except EmailNotValidError as e:
    print(email + " is not a valid email address")
    print(str(e))
    sys.exit(1)

try:
    user = auth.get_user_by_email(email)
    print(user.uid)
except google.auth.exceptions.TransportError:
    print("TransportError - do you have a working internet connection?")
except firebase_admin._auth_utils.UserNotFoundError:
    print("UserNotFoundError - no Firebase user with email " + email + " found in this instance")
```

#python #firebase

---

2020-07-09

#### Validate an email address with Python

The `email_validator` module by Joshua Tauberer is simple to use
and provides good error messages.

Install with

```
pip install email_validator
```

Then use like this for email syntax check:


```
from email_validator import validate_email, EmailNotValidError

try:
    validate_email('EMAIL_TO_VALIDATE', check_deliverability=False)
except EmailNotValidError as e:
    print(str(e)) # nice error message
```

#python

---

2020-07-08

#### Focus tip: Brain.fm and SelfControl apps

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

