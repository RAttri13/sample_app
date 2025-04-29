require 'net/smtp'

smtp = Net::SMTP.new('smtp.sendgrid.net', 587)
smtp.enable_starttls

begin
  smtp.start('localhost', 'apikey', 'YOUR_SENDGRID_API_KEY', :plain) do |connection|
    puts "✅ SMTP Authentication succeeded!"
  end
rescue Net::SMTPAuthenticationError => e
  puts "❌ Authentication failed: #{e.message}"
rescue => e
  puts "❌ Error: #{e.class} - #{e.message}"
end
