# == Schema Information
#
# Table name: tarefas
#
#  id         :bigint           not null, primary key
#  title      :string
#  body       :text
#  date       :date
#  user_id    :bigint
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'rails_helper'

RSpec.describe Tarefa, type: :model do

  context 'associations' do
    it {should belong_to(:user)}
  end

  context 'validates' do
    it { should validate_length_of(:title).is_at_least(5) }
  end
end
