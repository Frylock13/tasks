class SendSlackNotification

  require 'slack-notifier'

  def self.call(task_title)
    notifier = Slack::Notifier.new "#{ENV["SLACK_WEBHOOK_URL"]}", channel: '#general',
                                              username: 'notifier'

    notifier.ping "#{task_title} has finished"
  end
end