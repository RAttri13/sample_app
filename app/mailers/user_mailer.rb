class UserMailer < SendGridMailer
    def account_activation(user)
      # debugger
      @user = user
    # SendgridMailer.sendmail(user)

      mail to: @user.email, subject: "Account activation"
    end
 
  def password_reset
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
