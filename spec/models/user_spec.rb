require 'spec_helper'

describe User do
  # pending "add some examples to (or delete) #{__FILE__}"
  before(:each) do
    @attr ={
      :name => "nobix", 
      :email => "User@example.com",
      :password => "123456"
    }
  
  end
   
   
  describe "password encryption" do
    before(:each) do
      @user = User.create!(@attr)
    end 
    it "should have an encrypted_password attribute" do
      @user.should respond_to(:encrypted_password)
    end
    it "should set the encrypted password  not be blank" do
      @user.encrypted_password.should_not be_blank
      
    end
    
    it "should be true if the passwords match" do
      @user.has_password?(@attr[:password]).should be_true
	  
    end
     
    describe "authentication method" do
      it "should return nil on email/password mismatch" do
        wrong_password_user = User.authenticate(@attr[:email],"wrongpass")
        wrong_password_user.should be_nil
      end
      
      it "should return nil for an email address with no user" do
        nonexistent_user = User.authenticate("bar@foo.com", @attr[:password])
        nonexistent_user.should be_nil
      end
      
      it "should return the user on email/password match" do
        matching_user = User.authenticate(@attr[:email],@attr[:password])
        matching_user.should == @user
      end
    end
          
  end
  
  
  
   # name field validation 
  describe "name field validations" do
    it "should require a name" do
      user_no_name = User.new(@attr.merge(:name=>""))
      user_no_name.should_not  be_valid
    end
  
    it "should reject names that are too long" do
      long_name = "a" * 6
      long_name_user = User.new(@attr.merge(:name=>long_name))
      long_name_user.should_not be_valid
    end
  end

  # email field validation  
  describe "email field validations" do
    it "should accept valid email address" do
      addresses = %w[user@foo.com THE_USER@foo.bar.rog first.last@foo.jp]
      addresses.each do |address|
        valid_email_user = User.create(@attr.merge(:email=>address))
        valid_email_user.should be_valid
      end
    end
    
    it "should reject duplicate email addresses" do
      # put a user with given email address into the database
      User.create!(@attr)
      user_with_duplicate_email = User.new(@attr)
      user_with_duplicate_email.should_not be_valid
    end  
    
    it "should reject email addresses identical up to case" do
      upcased_email = @attr[:email].upcase
      User.create!(@attr.merge(:email=>upcased_email))
      user_with_duplicate_user = User.new(@attr)
      user_with_duplicate_user.should_not be_valid
    end
  end
  
  # password field validation
  describe "password validations" do 
    it "should require a password" do
      User.new(@attr.merge(:password =>"")).should_not be_valid
    end
    it "should reject short passwords" do
      short = "a" * 2
      hash = @attr.merge(:password =>short)
      User.new(hash).should_not be_valid
    end
  end
end
