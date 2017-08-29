module Mailgun
  def self.send(to, subject, message)
    `
    curl -s --user 'api:#{ENV.fetch("MAILGUN_API_KEY")}' \
    https://api.mailgun.net/v3/mail.elanthia.online/messages \
    -F from='Matt Daemon <mailgun@mail.elanthia.online>' \
    -F to=matt.daemon@mail.elanthia.online \
    -F to=#{to} \
    -F subject='#{subject}' \
    -F text='#{message}'
    `
  end
end