require "helping_hand/version"
require "helping_hand/railtie"

# Override the error templates path from Rails to serve our modified versions
ActionDispatch::DebugExceptions::RESCUES_TEMPLATE_PATH = File.expand_path('../templates', __FILE__)

module HelpingHand
  HOST = "https://helpinghand-rails.herokuapp.com/"
end
