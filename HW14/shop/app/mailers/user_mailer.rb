class UserMailer < ApplicationMailer
  def order_confirmation(user, order)
    @user = user
    @order = order

    mail(to: @user.email, subject: 'Order confirmation')
  end

  def winners_mailing(users)
    mail(to: users.pluck(:email), subject: 'You won in our lottery!')
  end
end
