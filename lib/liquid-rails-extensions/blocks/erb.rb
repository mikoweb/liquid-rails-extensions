module Liquid
  module Rails
    module Extensions
      require 'erb'
      class ErbBlock < Liquid::Raw
        # @param context [Liquid::Context]
        def render(context)
          ERB.new(@body).result(context.registers[:view].instance_eval{binding})
        end
      end
    end
  end
end

Liquid::Template.register_tag('erb', Liquid::Rails::Extensions::ErbBlock)
