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

FactoryBot.define do
  factory :tarefa do
    title { FFaker::CheesyLingo.title }
    body { FFaker::Lorem.paragraph }
    date { Date.current }

    association :user
  end
end
