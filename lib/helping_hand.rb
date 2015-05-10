require "helping_hand/version"

# Override the error templates path from Rails to serve our modified versions
ActionDispatch::DebugExceptions.send(:remove_const, :RESCUES_TEMPLATE_PATH)
ActionDispatch::DebugExceptions.const_set(:RESCUES_TEMPLATE_PATH, File.expand_path('../templates', __FILE__))

module HelpingHand
  class << self
    attr_accessor :configuration
  end

  def self.config
    self.configuration ||= Configuration.new
    yield(configuration) if block_given?
    self.configuration
  end

  class Configuration
    attr_accessor :host

    def initialize
      @host = "https://helpinghand-rails.herokuapp.com/"
    end
  end
end
