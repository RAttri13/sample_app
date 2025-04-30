class UserMailer < ApplicationMailer
    def account_activation(user)
      @user = user
      # @activation_link = edit_account_activation_url(user.email, user.activation_token)
      mail to: @user.email, subject: "Account activation"
    end
 
  def password_reset
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
