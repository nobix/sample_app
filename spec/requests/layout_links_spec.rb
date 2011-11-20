require 'spec_helper'


describe "Page LayoutLinks" do

  it "should have a default page at '/'" do
    get '/'
    response.should have_selector("title", :content => "Home")
  end

  it "should have a home page at '/home'" do
    get '/home'
    response.should have_selector("title", :content => "Home")
  end

  it "should have a home page at '/contact'" do
    get '/contact'
    response.should have_selector("title", :content => "Contact")
  end

  it "should have a home page at '/about'" do
    get '/about'
    response.should have_selector("title", :content => "About")
  end

  it "should have a help page at '/help'" do
    get 'help'
    response.should have_selector("title", :content => "Help")
  end
end

describe "User LayoutLinks" do

  it "should have a signup page at '/signup'" do
    get '/signup'
    response.should have_selector("title", :content => "Sign up")
  end
end

