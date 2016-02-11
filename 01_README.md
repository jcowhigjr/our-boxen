# Boxen as an App Manager

Dowside to boxen is the community of supporters. It's a popular project, but nowhere near as popular as Homebrew (Casks) are. After two years of using only Boxen modules, I gave up. Updates were too slow, lots of overhead to get modules approved, and I still ended up writing a good number of modules myself. Not really a value-add, if I'm just adding an abstraction layer that I still need to manage. Ideally, I'd like to leverage the skills of the larger community and rely on herd-mentality to keep my system updated.

To that end, I wanted a quick and easy way to add/remove applications to my system to be managed without worrying about the future of the computer. Here is what my system looks like:

* All data stored in GitHub, Dropbox or BTSync. Boxen creates Symlinks from popular folders to ~/ as needed.
* All apps are installed via Boxen. Very few exceptions. Boxen manages App Store, Homebrew Installs, and Symlinks only.

## Flow

```
$ boxen-edit hiera
$ boxen-save "commit message"
$ boxen
```

The scripts exist to remove friction and ensure good habits. This means real commit messages and ensuring everything is saved in SCM and stored offsite as soon as a save occurs.

That's it! Anytime I want a new application, I'll do a quick search for it via Homebrew, edit the files as needed, and move on with life. If I have a failure of a laptop, I simply download Boxen on a new machine, and depending on Internet speed I have my environment back in about 2 hours, and all my data back in under 24. I can get work done after the 2 hour mark, and I'm moving again after the data restore.

Who cares about the laptop? It's not a :snowflake: anymore. It's just my computing device. I'll take a new one, anytime.
