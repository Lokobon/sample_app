class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to user
      #Войти и перенаправить на страницу пользователя
    else
      #Сообщение об ошибке
      flash.now[:danger] = 'Неверный логин или пароль'
    render 'new'
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end
end
