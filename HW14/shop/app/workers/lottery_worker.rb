require 'sidekiq-scheduler'

class LotteryWorker
  include Sidekiq::Worker

  def perform
    WinnerService.new(lottery_winners: 'Winner').call
  end
end
