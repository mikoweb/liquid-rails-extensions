module Liquid
  module Rails
    module Extensions
      module PathFilter
        def path(name, *args)
          if @context.registers[:view].respond_to?(name + '_path')
            @context.registers[:view].send(name + '_path', *args)
          end
        end
      end
    end
  end
end

Liquid::Template.register_filter(Liquid::Rails::Extensions::PathFilter)
