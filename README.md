# dwmtemplate: Macro system for dwm

This program allows dwm users to create, store, and run macros in dwm,
which are useful if the user switches between similar programs and window
layouts often.

## Usage

* `sudo make install`
* Create the directory `~/.local/share/dwmtemplate` and store template files in
there.
* Each macro template is a list of `xdotool` commands, which will be run at
once.
* Run a macro by executing `dwmtemplate [filename]` (using relative path to
`~/.local/share/dwmtemplate`).

## Example

The following will open Firefox in tag 1 (using Super key as default modifier
and default keybindings) and open github.com:

```
key Super_L+1
exec firefox "https://github.com"
```

## TODO

* Add support for shell variables in template files
* Add support for comments
