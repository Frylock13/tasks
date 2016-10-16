class Task < ApplicationRecord

  enum status: %i(created in_progress solved finished)
end
