## Installation

Gemfile

    gem 'liquid-rails-extensions', '~> 0.0.3'

config/initializers/liquid_template_handler.rb

    require 'liquid'
    require 'liquid4-rails'
    require 'liquid-rails-extensions'

## Usage

Path filter - provides relative path
```html
# It will render /
{{ 'root'|path }}

# It will render /my-path/foo/bar
{{ 'my_route'|path: 'foo', 'bar' }}
```

Url filter - provides absolute path.
```html
# It will render http://mydomain.com/
{{ 'root'|url }}

# It will render http://mydomain.com/my-path/foo/bar
{{ 'my_route'|url: 'foo', 'bar' }}
```

ERB block - execute and render ERB code

```html
{% erb %}
    <% if true %>
        <p>It's works.</p>
    <% end %>
{% enderb %}
```

## More things

This gem is an extension of Liquid-Rails. It's depends on `'liquid4-rails', '~> 0.2.0'`.

- [Liquid-Rails](https://github.com/mikoweb/liquid4-rails)
- [Liquid Templating Engine](https://shopify.github.io/liquid/)