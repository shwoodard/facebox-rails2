require 'spec_helper'

describe FaceboxRailsController do
  render_views

  it 'should render index' do
    get :index
    response.should be_success
  end
end
