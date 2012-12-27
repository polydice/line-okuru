require 'uri'

module Line
  module Okuru
    module ButtonHelper

      FILES = {
                    small: {
                      width: 20,
                      height: 20,
                    },
                    medium: {
                      width: 30,
                      height: 30
                    },
                    large: {
                      width: 40,
                      height: 40
                    },
                    wide: {
                      width: 86,
                      height: 20
                    },
                    tall: {
                      width: 36,
                      height: 60
                    }
      }

      def line_share_button(text, attrs = {})
        style = attrs.delete(:button_style) || :medium

        raise InvalidButtonStyleError, "button_style argument should be one of [:small, :medium, :large, :wide, :tall] " unless FILES.has_key? style

        share_link(text, attrs) do
          image_tag("linebutton_#{FILES[style][:width]}x#{FILES[style][:height]}.png", :width => FILES[style][:width], :height => FILES[style][:height])
        end
      end

      protected

      def share_link(text, attrs = {}, &block)
        link_to("http://line.naver.jp/R/msg/text/?#{URI.escape(text)}", attrs, &block)
      end

      class InvalidButtonStyleError < StandardError; end

    end
  end
end
