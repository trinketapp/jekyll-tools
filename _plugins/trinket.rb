require 'cgi'

class TrinketTag < Liquid::Block

  SYNTAX = /^([a-zA-Z0-9.+#-]+)((\s+\w+(=(\S+))?)*)$/

  def initialize(tag_name, opts, tokens)
    super
    if opts.strip =~ SYNTAX
      @type = $1.downcase
      @options = {
        :width  => '100%',
        :height => '400'
      }
      if defined?($2) && $2 != ''
        # Split along key=value
        opts.scan(/(?:\w+=\S+)/) do |opt|
          key, value = opt.split('=')
          @options[key.to_sym] = value.to_s
        end
      end
    else
      raise SyntaxError.new <<-eos
Syntax Error in tag 'trinket' while parsing the following options:

  #{opts}

Valid syntax: trinket <type> [width=?] [height=?]
eos
    end
  end

  def render(context)
    code       = super.to_s.strip
    puts @options[:width], @options[:height]
    compressed = CGI.escape code
    "<iframe width='#{@options[:width]}' height='#{@options[:height]}' src='https://trinket.io/tools/1.0/jekyll/embed/#{@type}##{compressed}'></iframe>"
  end
end

Liquid::Template.register_tag('trinket', TrinketTag)