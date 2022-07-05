# frozen_string_literal: true

require 'httparty'
require 'json'

module CampaignByMsg91
  # Campaign Class
  class Campaign
    CAMPAIGNS_BASE_URL = 'https://control.msg91.com/api/v5/campaign/api/campaigns'

    def initialize
      @authkey = CampaignByMsg91.configuration.auth_key
    end

    def authkey_present?
      if !@authkey || @authkey.empty?
        'Authkey Not Found'
      else
        'Authkey Found'
      end
    end

    def index
      uri = '/'
      headers = {
        authkey: @authkey
      }

      HTTParty.get("#{CAMPAIGNS_BASE_URL}#{uri}", headers: headers).parsed_response
    end

    def index_fields(campaign_slug)
      uri = "/#{campaign_slug}/fields"
      headers = {
        authkey: @authkey
      }

      HTTParty.get("#{CAMPAIGNS_BASE_URL}#{uri}", headers: headers).parsed_response
    end

    def show_request_body(campaign_slug)
      uri = "/#{campaign_slug}/snippets"
      headers = {
        authkey: @authkey
      }

      HTTParty.get("#{CAMPAIGNS_BASE_URL}#{uri}", headers: headers).parsed_response
    end
  end
end
