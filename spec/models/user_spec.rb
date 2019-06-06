require 'rails_helper'

describe User do 
 it "é válido quando nome, último nome e email estão presentes" do 
  user = User.new( first_name: 'Bruce', 
   last_name: 'Dickinson', 
   email: 'teste@teste.com', 
   password: '123456',
   password_confirmation: '123456') 
   
   expect(user).to be_valid 
  end 
end