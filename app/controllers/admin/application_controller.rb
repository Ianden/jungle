class Admin::ApplicationController < ApplicationController

   http_basic_authenticate_with name: ENV['USERNAME'], password: ENV['PASSWORD'], only: [:index, :create, :new, :destroy, :show]

 end