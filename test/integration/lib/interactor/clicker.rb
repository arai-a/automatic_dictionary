require 'interactor/shared'

module Interactor
  module Clicker
    class << self
      include Shared

      def click_on(position)
        run("xdotool mousemove --sync #{position.first} #{position.last} "\
            "click -c 1")
      end
    end
  end
end
