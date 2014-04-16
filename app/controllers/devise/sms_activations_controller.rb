class Devise::SmsActivationsController < DeviseController
  skip_before_filter :require_sms_activated!
  append_before_filter :authenticate_scope!

  # GET /resource/sms_activation/new
  def new
    render :new
  end

  # POST /resource/sms_activation
  def create
    self.resource = resource_class.send_sms_token(params[resource_name])
    
    if resource.errors.empty?
      set_flash_message :notice, :send_token, :phone => self.resource.phone
      redirect_to new_session_path(resource_name)
    else
      render :new
    end
  end
  
  # GET /resource/sms_activation/insert
  def insert
    render :insert
  end
  
  # GET or POST /resource/sms_activation/consume?sms_token=abcdef
  def consume
    self.resource = resource_class.confirm_by_sms_token(params[:sms_token])

    if resource.errors.empty?
      set_flash_message :notice, :confirmed
      sign_in_and_redirect(resource_name, resource)
    else
      render :new
    end
  end
  
  protected
    # Authenticates the current scope and gets the current resource from the session.
    def authenticate_scope!
      send(:"authenticate_#{resource_name}!", force: true)
      self.resource = send(:"current_#{resource_name}")
    end
end
