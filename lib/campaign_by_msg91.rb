# frozen_string_literal: true

require 'campaign_by_msg91/version'
require 'campaign_by_msg91/configuration'
require 'campaign_by_msg91/campaign'

# CampaignByMsg91
module CampaignByMsg91
  class Error < StandardError; end

  class << self
    attr_accessor :configuration
  end

  def self.configuration
    @configuration ||= Configuration.new
  end

  def self.configure
    yield(configuration)
  end
end
