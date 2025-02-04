class SecretsController < ApplicationController 
    before_action :login_required 

    def show 
        render 'halloween'
    end 

    private 
    def login_required 
        redirect_to '/login' unless session.include? :name
    end 
end 