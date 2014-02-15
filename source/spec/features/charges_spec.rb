require 'spec_helper'

describe "Charges" do
  describe "GET /charges" do
    it "Should return correct number of records" do

      visit '/charges'
      page.find('ul.successful').all('li').count.should eql(10)
      page.find('ul.failed').all('li').count.should eql(5)
      page.find('ul.disputed').all('li').count.should eql(5)
    end
  end
end
