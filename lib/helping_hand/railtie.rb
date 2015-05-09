require 'rails/railtie'

module WebConsole
  class Railtie < ::Rails::Railtie
    config.helping_hand = ActiveSupport::OrderedOptions.new
    config.helping_hand.host = "https://helpinghand-rails.herokuapp.com/"
  end
end

