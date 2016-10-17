class Task < ApplicationRecord

  enum status: %i(created in_progress solved finished)

  before_save :create_worker_if_status_changed_to_solved, if: :status_changed?

  def create_worker_if_status_changed_to_solved
    CheckStatusWorker.perform_in(5.days, id) if solved?
  end
end
