class PagesController < ApplicationController
    def home
      @basic_membershiptype = Membershiptype.find(1)
      @pro_membershiptype = Membershiptype.find(2)  
    end
    def about
    end
end  