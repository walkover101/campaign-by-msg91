# frozen_string_literal: true

require 'campaign_by_msg91'
require 'dotenv'
Dotenv.load('.env')

describe CampaignByMsg91::Campaign do
  describe '#configure' do
    let(:slug) { ENV['CAMPAIGN_TEST_SLUG'] }

    before(:each) do
      CampaignByMsg91.configure do |config|
        config.auth_key = ENV['CAMPAIGN_TEST_AUTHKEY']
      end
    end

    it 'authkey exists' do
      expect(CampaignByMsg91::Campaign.new.authkey_present?).to eql('Authkey Found')
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
  end
end
