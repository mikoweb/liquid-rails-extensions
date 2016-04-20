module Liquid
  module Rails
    module Extensions
      module JsonFilter
        require 'json'

        def json_parse(source)
          JSON.parse(source)
        end
      end
    end
  end
end

Liquid::Template.register_filter(Liquid::Rails::Extensions::JsonFilter)
