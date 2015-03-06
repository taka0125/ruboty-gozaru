require "ruboty"
require "ruboty/gozaru/version"

module Ruboty
  module Handlers
    class Gozaru < Base
      on(
        /gozaru\s+(.*)/m,
        name: 'gozaru',
        description: 'append ござる'
      )

      def gozaru(message)
        message.reply(message.match_data[1] + 'でござる')
      end
    end
  end
end
