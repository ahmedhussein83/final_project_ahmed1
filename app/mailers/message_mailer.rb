    class MessageMailer < ActionMailer::Base
  default from: "ahmed.hussein.safa@gmail.com"
  default to: "ahmed.hussein.safa@gmail.com"
  def new_message(message)
    @message = message
    mail subject: "Message from #{message.name}"
  end
end
 
