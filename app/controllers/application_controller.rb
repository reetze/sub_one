class ApplicationController < ActionController::Base
  before_action(:load_current_user)
  before_action(:force_user_sign_in)
  
  def load_current_user
    the_id = session.fetch(:user_id)
    @current_user = User.where({ :id => the_id }).at(0)
  end
  
  def force_user_sign_in
    if @current_user == nil
      redirect_to("/user_sign_in", { :notice => "You have to sign in first." })
    end
  end

  def send_sub_found_email
    mg_api_key = ENV.fetch("mailgun_token")
    mg_client = Mailgun::Client.new(mg_api_key)

    message_params =  {
      :from => "mailgun@mail.volleyballsub1.com",
      :to => "erica.reetz@gmail.com",
      :subject => "You have a sub!",
      :text => "testing... testing..."
    }

    # Send your message through the client
    mg_client.send_message("mail.volleyballsub1.com", message_params)

  end

end
