require 'todoist'

describe 'Todoist' do
  before(:each) do
    # todoist test account
    @todoist = Todoist.new("0d5ff62e9484557df34325eb53597fc51e5312a2")
  end

  describe 'empty account' do
    after(:each) do
      #Cleanup after test, implement later
      #@todoist.destroy_all_projects	
    end

    it "should have an array of projects" do
      @todoist.projects.should be_kind_of(Array)
    end

    it "should have empty list of projects" do
      @todoist.projects.size.should == 0
    end

    it "should have an array of labels" do
      @todoist.labels.should be_kind_of(Hash)
    end

    it "should have empty list of labels" do
      @todoist.labels.size.should == 0
    end

    it "should have one project after adding one" 
  end
end
