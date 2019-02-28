require 'rails_helper'

RSpec.describe User, type: :model do
    context "Testando o user" do
        it "Usuário válido?" do
            user = User.new
            user.email = 'teste@teste.com'
            user.password = 123456

            expect(user.valid?).to be_truthy
        end
    end
end
