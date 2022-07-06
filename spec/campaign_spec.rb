# frozen_string_literal: true

require 'campaign_by_msg91'
require 'dotenv'
Dotenv.load('.env')

describe CampaignByMsg91::Campaign do
  describe '#configure' do
    let(:slug) { ENV['CAMPAIGN_TEST_SLUG'] }
    let(:request_body) { File.read('./spec/request_body.json') }

    before(:each) do
      CampaignByMsg91.configure do |config|
        config.auth_key = ENV['CAMPAIGN_TEST_AUTHKEY']
      end
    end

    it 'list campaigns' do
      CampaignByMsg91::Campaign.new.index
    end

    it 'list campaign fields' do
      CampaignByMsg91::Campaign.new.index_fields(slug)
    end

    it 'show campaign request body' do
      CampaignByMsg91::Campaign.new.show_request_body(slug)
    end

    it 'run campaign' do
      p CampaignByMsg91::Campaign.new.run_campaign(slug, request_body)
    end
  end
end
