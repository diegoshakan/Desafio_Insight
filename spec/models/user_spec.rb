# == Schema Information
#
# Table name: users
#
#  id                     :bigint           not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  admin                  :boolean          default(FALSE)
#
require 'rails_helper'

RSpec.describe User, type: :model do

  context 'associations' do
    it { should have_many(:tarefas).dependent(:destroy) }
  end

  context 'validates' do
    it { should validate_presence_of(:email) }
  end
end
