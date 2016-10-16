class CheckStatusWorker
  include Sidekiq::Worker
  def perform(task_id)
    task = Task.find(task_id)
    task.finished! if task.solved?
  end
end