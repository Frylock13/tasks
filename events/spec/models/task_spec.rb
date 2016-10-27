require 'spec_helper'
require 'sidekiq/testing'

describe Task do
  context 'workers' do
    before(:each) do
      Sidekiq::Worker.clear_all
    end

    let!(:task) { create(:task) }

    it 'checks a default count of workers after task has been created' do
      assert_equal 0, CheckStatusWorker.jobs.size
    end

    it 'checks that workers count equal zero if a status has been changed to `in_progress`' do
      task.in_progress!
      assert_equal 0, CheckStatusWorker.jobs.size
    end

    it 'checks creating of a worker after a status has been changed to `solved`' do
      task.solved!
      assert_equal 1, CheckStatusWorker.jobs.size
    end

    it 'checks that a task finished after a worker has executed' do
      task.solved!
      CheckStatusWorker.drain
      assert_equal 0, CheckStatusWorker.jobs.size
      expect(task.status).to eq 'finished'
    end
  end
end
