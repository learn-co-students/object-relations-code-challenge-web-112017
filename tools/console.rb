require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

bob = Customer.new("bob", "joe")
jack = Customer.new("jack", "joe")
jim = Customer.new("jim", "joe")
ron = Customer.new("ron", "joe")
ron1 = Customer.new("ron", "joe")
ron2 = Customer.new("ron", "joe")


qwe = Restaurant.new("qwe")

bob.add_review(qwe, "WASSUP")
jack.add_review(qwe, "WASSUP")
jim.add_review(qwe, "WASSUP")
ron.add_review(qwe, "WASSUP")
ron1.add_review(qwe, "WASSUP")
ron2.add_review(qwe, "WASSUP")

Customer.find_by_name("jim joe")
Customer.find_by_first_name("jim")


binding.pry
a = "Hello World"
