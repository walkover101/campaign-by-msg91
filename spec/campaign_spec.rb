require 'campaign_by_msg91'

describe CampaignByMsg91::Campaign do
  let(:authkey){ ENV['CAMPAIGN_TEST_AUTHKEY'] }
  let(:slug){ ENV['CAMPAIGN_TEST_SLUG'] }

  it "authkey exists" do
    expect(CampaignByMsg91::Campaign.new(authkey).authkey_present?).to eql("Authkey Found")
  end

  it "authkey not exists" do
    expect(CampaignByMsg91::Campaign.new("").authkey_present?).to eql("Authkey Not Found")
  end

  it "list campaigns" do
    CampaignByMsg91::Campaign.new(authkey).index
  end

  it "list campaign fields" do
    CampaignByMsg91::Campaign.new(authkey).index_fields(slug)
  end

  it "show campaign request body" do
    CampaignByMsg91::Campaign.new(authkey).show_request_body(slug)
  end
end