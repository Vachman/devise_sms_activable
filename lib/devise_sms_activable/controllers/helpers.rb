module DeviseSmsActivable::Controllers::Helpers
  protected
  
  # Convenience helper to che ck if user has confirmed the token (and the phone) or not.
  def require_sms_activated!
    puts 'Require_sms_activated!'
    if( send(:"authenticate_#{resource_name}!") )
      res=send(:"current_#{resource_name}")
      puts "res.confirmed_sms? #{res.confirmed_sms?}"
      redirect_to insert_sms_activation_path(res) if (!res) || (!res.confirmed_sms?)
    end
  end
  
  
end


ActionController::Base.send :include, DeviseSmsActivable::Controllers::Helpers