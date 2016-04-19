module Liquid
  module Rails
    module Extensions
      module UrlFilter
        def url(name, *args)
          if @context.registers[:view].respond_to?(name + '_url')
            @context.registers[:view].send(name + '_url', *args)
          end
        end
      end
    end
  end
end

Liquid::Template.register_filter(Liquid::Rails::Extensions::UrlFilter)
