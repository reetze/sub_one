class ApplicationMailer < ActionMailer::Base
  default from: 'from@example.com'
  layout 'mailer'

  def send_sub_found_email
    mg_api_key = ENV.fetch("mailgun_token")
    mg_client = Mailgun::Client.new(mg_api_key)

    message_params =  {
      :from => "info@sending_domain.com",
      :to => "erica.reetz@gmail.com",
      :subject => "You have a sub!",
      :text => "It is really easy to send a message!"
    }

    # Send your message through the client
    mg_client.send_message("sending_domain.com", message_params)

  end
  
end
