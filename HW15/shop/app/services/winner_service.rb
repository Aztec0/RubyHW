class WinnerService
  attr_reader :lottery_winners

  def initialize(lottery_winners)
    @lottery_winners = lottery_winners
  end

  def call
    users = orders_per_month.map(&:user).uniq.sample(2)
    UserMailer.winners_mailing(users).deliver_later
  end

  private

  def orders_per_month
    month_start = DateTime.now - 1.month
    Order.where(created_at: month_start..DateTime.now, status: 'paid')
  end
end