require "helping_hand/version"

# Override the error templates path from Rails to serve our modified versions
ActionDispatch::DebugExceptions::RESCUES_TEMPLATE_PATH = File.expand_path('../templates', __FILE__)

module HelpingHand
  HOST = "https://helpinghand-rails.herokuapp.com/"
end
