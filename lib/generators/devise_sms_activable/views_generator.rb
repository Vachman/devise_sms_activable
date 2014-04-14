require 'generators/devise/views_generator'

module DeviseSmsActivable
  module Generators
    class ViewsGenerator < Rails::Generators::Base
      source_root File.expand_path("../../../../app/views/devise", __FILE__)
      desc 'Copies all DeviseSmsActivable views to your application.'
      
      def copy_views
        directory 'sms_activations', target_path
      end 
      
      def target_path
        "app/views/devise/sms_activations"
      end
    end
  end
end