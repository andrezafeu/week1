class Authenticator
  def initialize(correct_username, correct_password)
    @correct_username = correct_username
    @correct_password = correct_password
  end

  def verify?(input_username, input_password)
    if input_username == @correct_username && input_password == @correct_password
      true
    else
      false
    end
  end
end