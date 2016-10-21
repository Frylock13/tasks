class CheckStatusWorker
  include Sidekiq::Worker
  def perform(task_id)
    task = Task.find(task_id)

    if task.solved?
      task.finished!
      SendSlackNotification.call("#{task.title} has finished")
    end
  end
end