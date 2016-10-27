module SendSlackNotification

  require 'slack-notifier'

  def self.call(message)
    notifier = Slack::Notifier.new(ENV["SLACK_WEBHOOK_URL"], channel: '#general', username: 'notifier')

    notifier.ping(message)
  end
end