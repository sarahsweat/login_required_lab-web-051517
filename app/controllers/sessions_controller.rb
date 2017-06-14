class SessionsController < ApplicationController


    def create
      session[:name] = params[:name]
      return redirect_to '/login' if !session[:name] || session[:name].empty?
      redirect_to '/application/hello'
    end

    def destroy
      session.delete :name
      redirect_to '/application/hello'
    end
end
