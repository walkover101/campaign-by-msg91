# frozen_string_literal: true

# CampaignByMsg91
module CampaignByMsg91
  class Configuration
    attr_accessor :auth_key
  end

  def initialize
    @auth_key = nil
  end
end