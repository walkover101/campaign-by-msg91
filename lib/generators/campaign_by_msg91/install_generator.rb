# frozen_string_literal: true

module CampaignByMsg91
  # Generators for LokaliseRails
  module Generators
    # Installs LokaliseRails config
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path('../templates', __dir__)

      desc 'Creates a campaign_by_msg91 initializer file.'

      def copy_initializer
        template 'campaign_by_msg91_initializer.rb', 'config/initializers/campaign_by_msg91.rb'
        puts 'Install complete!'
      end
    end
  end
end
