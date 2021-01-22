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
  let(:tarefa) { FactoryBot.create(:tarefa, date: Date.current - 1.day)}
  context 'associations' do
    it {should belong_to(:user)}
  end

  context 'validates' do
    it { should validate_presence_of(:title) }
    it { should validate_length_of(:title).is_at_least(5).with_message('O Título Deve Conter Mais que 5 Caracteres!') }
    # it { is_expected.to validates_date(:date).on_or_after(:today) }
  end
end
