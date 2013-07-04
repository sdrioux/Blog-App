require 'spec_helper'

describe Post do
  describe "validations" do
    before :each do
      @post = FactoryGirl.build(:post)
binding.pry
      @post.should be_valid
    end

    after :each do
      @post.destroy
    end

    it "should not be valid without a title" do
      @post.title = nil
      @post.should_not be_valid
      @post.errors[:title].should_not be_blank
    end

    it "should not be valid without an author" do
      @post.author = nil
      @post.should_not be_valid
      @post.errors[:author].should_not be_blank
    end

    it "should not be valid without a body" do
      @post.body = nil
      @post.should_not be_valid
      @post.errors[:body].should_not be_blank
    end
  end

  describe "creation" do
    before :each do
      @post = FactoryGirl.build(:post)
    end

    after :each do
      @post.destroy
    end

    it "should create a post" do
      expect {
        @post.should be_valid
        @post.save
      }.to change(Post, :count).by(1)
    end
  end	
end