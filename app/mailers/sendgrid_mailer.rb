require 'sendgrid-ruby'
include SendGrid

class SendgridMailer
  def self.sendmail(user)
    return unless user&.email.present?

    from = Email.new(email: 'ritu.attri@poplify.com')  # MUST be verified in SendGrid
    to = Email.new(email: user.email)
    subject = 'Account Activation'
    content = Content.new(type: 'text/plain', value: 'Welcome to the Sample App! Activate your account.')
    mail = Mail.new(from, subject, to, content)

    sg = SendGrid::API.new(api_key: ENV['SENDGRID_API_KEY'])
    response = sg.client.mail._('send').post(request_body: mail.to_json)

    puts "Status: #{response.status_code}"
    puts "Body: #{response.body}"
    puts "Headers: #{response.headers}"
  end
end
