# frozen_string_literal: true

require 'campaign_by_msg91/version'
require 'campaign_by_msg91/configuration'
require 'campaign_by_msg91/campaign'

# CampaignByMsg91
module CampaignByMsg91
  class Error < StandardError; end

  def self.configuration
    @config ||= Configuration.new
  end

  def self.configure
    yield(configuration)
  end
end
