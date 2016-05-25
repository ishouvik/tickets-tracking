class V1::BaseController < ApplicationController
  include DeviseTokenAuth::Concerns::SetUserByToken
end
