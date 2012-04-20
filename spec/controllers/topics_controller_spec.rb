require 'spec_helper'

describe TopicsController do

  describe "GET 'index'" do
    before(:each) do
      FactoryGirl.create_list(:topic,10)
    end
    it "returns http success" do
      get 'index'
      response.should be_success
    end
    it "gets all of topics" do
      get 'index'
      assigns(:topics).first.title.should == "test topic name"
      assigns(:topics).size.should == 10
      assigns(:topics).first.comments.size.should == 1
    end
  end

  describe "GET 'new'" do
    it "returns http success" do
      get 'new'
      response.should be_success
    end
  end

  describe "Post 'create'" do
    it "returns http success" do
      lambda {
        post 'create', :topic => { :comment => { :name => "", :content => "aaaaaaaa" }, :title => "aiueo-" }
      }.should change(Topic, :count).by(1)
    end
  end

end
