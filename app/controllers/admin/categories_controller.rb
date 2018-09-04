class Admin::CategoriesController < ApplicationController #nested controller inside admin controller
  before_action :require_admin

  def index
  end

  private
    def require_admin
      render file: "/public/404" unless current_admin? # before any action, run this method first, if not true, render 404
    end
end
