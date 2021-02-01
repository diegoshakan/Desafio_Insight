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

  let(:user) { FactoryBot.create(:user)}
  let(:tarefa) { FactoryBot.create(:tarefa, date: Date.today, user_id: user.id)}

  context 'associations' do
    it {should belong_to(:user)}
  end

  context 'validates' do
    it { should validate_presence_of(:title) }
    it { should validate_length_of(:title).is_at_least(5).with_message('O Título Deve Conter Mais que 5 Caracteres!') }

    it 'date must today or after today' do
      date_equal_today = FactoryBot.create(:tarefa, date: Date.today, user_id: user.id)
      expect(date_equal_today.date).to eq(Date.today)
    end

    it 'date not be before today' do
      record = create(:tarefa)
      record.date = 2.days.ago
      record.save
      expect(record.errors[:date]).to include("Data tem que ser a partir de hoje!")
    end
  end
end
