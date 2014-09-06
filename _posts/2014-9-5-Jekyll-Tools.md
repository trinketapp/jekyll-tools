Include interactive trinkets in your Jekyll site with 2 lines of code.  Why?  Because static sites are better when they're interactive!  

Trinkets are designed for teaching but you can use them whenever you want your readers to see your code work interactively.  

## Usage

After installation, make your code blocks interactive and awesome with just two additional lines:

{% highlight liquid %}
{% raw %}
{% include trinket-open %}
# your code here
{% include trinket-close %}
{% endraw %}

That's it!  As of Sept 2014 Jekyll Tools supports Python and HTML/CSS.

## Python

This code:
{% highlight liquid %}
{% raw %}{% include trinket-open type='python' %}{% endraw %}
import turtle

tina = turtle.Turtle()

for c in ['red', 'green', 'yellow', 'blue']:
    tina.color(c)
    tina.forward(75)
    tina.left(90)

tina.penup()
tina.backward(100)
tina.write("Hello world!")
{% raw %}{% include trinket-close %}{% endraw %}
{% endhighlight %}

Gives you this interactive Python trinket on your Jekyll site:

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

## HTML

This code:

{% highlight liquid %}
{% raw %}{% include trinket-open type='html' %}{% endraw %}
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
{% raw %}{% include trinket-close %}{% endraw %}
{% endhighlight %}

Gives you this interactive HTML trinket  on your Jekyll site:

{% include trinket-open type="html" %}
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

Note: These trinkets support most of HTML and CSS, but not Javascript (yet).  Also, you can find a live version of the trinket above [here](https://trinket.io/html/47807974be).

## Customize!

Make your trinkets the right height:
{% highlight liquid %}
{% raw %}{% include trinket-open type='python' height='100' %}{% endraw %}
for i in range(10):
    print "Only the lines you need"
{% raw %}{% include trinket-close %}{% endraw %}
{% endhighlight %}
Gives you this interactive Python trinket:

{% include trinket-open type='python' height='100'%}
for i in range(10):
    print "Only the lines you need"
{% include trinket-close %}

## Installation

Drop the `trinket-open` and `trinket-close` files into the `_includes` folder of your Jekyll site.

If you're lazy, here's a one-liner you can run from the root of your Jekyll project:

{% highlight bash %}
wget -P _includes https://raw.githubusercontent.com/trinketapp/jekyll-tools/master/_includes/trinket-close https://raw.githubusercontent.com/trinketapp/jekyll-tools/master/_includes/trinket-open
{% endhighlight %}

## Acknowledgements

Our interactive Python trinket makes heavy use of the awesome [Skulpt project](http://skulpt.org), which uses client side Javascript to interpret Python in your browser.  Check em out and [contribute on Github](http://github.com/skulpt/skulpt)!  

The interactive HTML trinket is soulmates with [Mozilla Thimble](https://thimble.webmaker.org), which is another awesome project that you can [contribute to on Github](https://github.com/mozilla/thimble.webmaker.org).

## Contributions

Contributions to these tools are welcome.  [Contact us](hello@trinket.io) or open an issue to discuss what you want to do.

## License

Released under the MIT License. (C) 2014 Ben Wheeler.  See LICENSE for details.
