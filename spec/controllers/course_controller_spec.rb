require "rails_helper"

RSpec.describe CoursesController, type: :controller do
  describe "GET index" do
    it "assigns @courses" do
      user = create :user
      sign_in(user)
      course = create :course
      get :index
      expect(assigns(:courses)).to eq([course])
    end

    it "renders the index template" do
      user = create :user
      sign_in(user)
      get :index
      expect(response).to render_template("index")
    end
  end
end