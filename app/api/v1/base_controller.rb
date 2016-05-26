class V1::BaseController < ApplicationController
  include DeviseTokenAuth::Concerns::SetUserByToken
  before_action :doorkeeper_authorize!
end
