class PagesController < ApplicationController
  def home
    foo = Foobar.new "baz"
    @baz = foo.bar :cat, sat: :dat, dat: :sat
  end

  def stringify
    @text = "You are nothing!"
  end

  def age
  end

  def person
    @user = Person.new(params[:name], params[:age])
  end
  
  def me
    @my_name = "Provi"
    @fun_fact = "I really like the word Full-stack!"
  end
end
