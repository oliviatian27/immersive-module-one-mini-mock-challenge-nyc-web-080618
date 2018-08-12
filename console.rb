require 'pry'
require_relative './book'
require_relative './author'

a1=Author.new('a1')
a2=Author.new('a2')
a3=Author.new('a3')
a4=Author.new('a4')

a1.write_book("b1",300)
a1.write_book("b2",320)
a2.write_book("b3",3200)
a2.write_book("b4",1300)
a3.write_book("b5",30000)
a4.write_book("b6",300)
a1.write_book("b7",300)
a3.write_book("b8",300)
a4.write_book("b9",3000000)




binding.pry
