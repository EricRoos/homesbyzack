class CustomMandrillMailer < MandrillMailer::TemplateMailer

  def contact_form(name,email,message)
    mandrill_mail(
      template: 'contact-form',
      from: email,
      from_name: name,
      subject: "#{email} has sent you a message",
      to: "zack@praxishomestx.com",
      vars: {
        'EMAIL' =>  email,
        'MESSAGE' => message
      },
      important: true,
      inline_css: true,
     )
  end
end
