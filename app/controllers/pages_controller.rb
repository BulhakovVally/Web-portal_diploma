class PagesController < ApplicationController    

before_filter :authenticate_user!, :except => [:show, :index]


def about_us
end

def contacts
end

private
end
