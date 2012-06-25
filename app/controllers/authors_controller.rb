class AuthorsController < ApplicationController

  def new
    @author = Author.new
  end
end
