class Foobar
  # ENTER CODE FOR Q2 HERE
  #  foo = Foobar.new "baz"
  #  @baz = foo.bar :cat, sat: :dat, dat: :sat
  def initialize(baz)
    @baz = baz
  end
  
  def bar(a, b_hash)
    @baz = a.to_s + @baz + b_hash[:sat].to_s
  end
end
