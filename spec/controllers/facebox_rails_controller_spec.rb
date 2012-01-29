require 'spec_helper'

describe FaceboxRailsController do
  it 'should render index' do
    get :index
    response.should be_success
  end
end
