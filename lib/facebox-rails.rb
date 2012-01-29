require "facebox-rails/version"
require 'facebox-rails/engine'

module FaceboxRails
  class << self
    def configure(&blk)
      @configuration ||= ActiveSupport::OrderedOptions.new
      yield(@configuration) if block_given?
      @configuration
    end
    alias_method :configuration, :configure
  end
end

FaceboxRails.configure do |conf|
  conf.loading_image_path = '/assets/facebox-rails/loading.gif'
  conf.closelabel_image_path = '/assets/facebox-rails/closelabel.png'
end
