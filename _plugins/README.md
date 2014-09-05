trinket plugin
============

If you are manually publishing your Jekyll site, you may prefer using this plugin rather than the include files.  An important note, if you are using GitHub Pages and are commiting your source code and allowing GitHub to compile your site, we recommend using the includes since GitHub runs in 'safe' mode and will not process third-party plugins.

To use the plugin, simply include the following lines inside of your liquid templates:

```liquid
{% trinket python height=300 %}
print "interactive python for the win!"
{% endtrinket %}
```
It doesn't get any easier than that!