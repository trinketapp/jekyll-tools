Trinket Jekyll Tools
====================

Include interactive trinkets in your Jekyll site with 2 lines of code.  Why?  Because static sites are better when they're interactive!  Trinkets are designed for teaching but you can use them whenever you want your readers to see your code work interactively.  As of Sept 2014 we support Python and HTML/CSS.

## Python

This code:
```
{% include trinket-open type='python' %}
import turtle

tina = turtle.Turtle()

for c in ['red', 'green', 'yellow', 'blue']:
    tina.color(c)
    tina.forward(75)
    tina.left(90)

tina.penup()
tina.backward(100)
tina.write("Hello world!")
{% include trinket-close %}

```
Gives you this interactive Python trinket on your Jekyll site:

<script type="text/javascript">
(function(d,l,s,i,p){function n(e){e=e.nextSibling;return (!e||e.nodeType===1)?e:n(e);};function r(f){/in/.test(d.readyState) ? setTimeout(function(){r(f);},9):f()};l=d.getElementsByTagName('script');s=l[l.length-1];r(function(){i=n(s),p=n(i);i.src='https://trinket.io/tools/1.0/jekyll/embed/{% if include.type %}{{ include.type }}{% else %}python{% endif %}#code='+encodeURIComponent(p.innerHTML);});})(document)
</script>
<iframe width="{% if include.width %}{{ include.width }}{% else %}100%{% endif %}" height="{% if include.height %}{{ include.height }}{% else %}400{% endif %}"></iframe>
<pre style="display:none;">
import turtle

tina = turtle.Turtle()

for c in ['red', 'green', 'yellow', 'blue']:
    tina.color(c)
    tina.forward(75)
    tina.left(90)

tina.penup()
tina.backward(100)
tina.write("Hello world!")
</pre>

## HTML

```
{% include trinket-open type='html' %}
<html>
<head>
    <style type="text/css">
        body {
            background-color: #008aff;
            text-align: center;
        }
        .logo {
            position: relative;
            top: 50%;
            transform: translateY(-60%);
        }
        .logo img {
            max-width: 90%;
        }
    </style>
</head>
<body>
    <div class="logo">
        <img src="https://trinket.io/img/trinket-logo-big.png" />
    </div>
</body>
</html>
{% include trinket-close %}

```
Gives you this interactive HTML trinket  on your Jekyll site:

<iframe src="https://trinket.io/embed/html/47807974be" width="100%" height="356" frameborder="0" marginwidth="0" marginheight="0" allowfullscreen></iframe>

These trinkets support most of HTML and CSS, but not Javascript (yet).

## Customize!

Make your trinkets the right height:
```
{% include trinket-open type='python' height='100'%}
for i in range(10):
    print "Only the lines you need"
{% include trinket-close %}

```
Gives you this interactive Python trinket:

<iframe src="https://trinket.io/embed/python/dc8647c7b3" width="100%" height="180" frameborder="0" marginwidth="0" marginheight="0" allowfullscreen></iframe>

## Installation

Drop the `trinket-open` and `trinket-close` files into the `_includes` folder of your Jekyll site.

If you're lazy, here's a one-liner you can run from the root of your Jekyll project:

```bash
wget -P _includes https://raw.githubusercontent.com/trinketapp/jekyll-tools/master/_includes/trinket-close https://raw.githubusercontent.com/trinketapp/jekyll-tools/master/_includes/trinket-open
```

## Acknowledgements

Our interactive Python trinket makes heavy use of the awesome [Skulpt project](http://skulpt.org), which uses client side Javascript to interpret Python in your browser.  Check em out and [contribute on Github](http://github.com/skulpt/skulpt)!  

The interactive HTML trinket is soulmates with [Mozilla Thimble](https://thimble.webmaker.org), which is another awesome project that you can [contribute to on Github](https://github.com/mozilla/thimble.webmaker.org).

## Contributions

Contributions to these tools are welcome.  [Contact us](hello@trinket.io) or open an issue to discuss what you want to do.

## License

Released under the MIT License. (C) 2014 Ben Wheeler.  See LICENSE for details.
