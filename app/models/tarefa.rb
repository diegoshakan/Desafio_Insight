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
# class DatetimeValidator < ActiveModel::Validator
#   def validate(record)
#       # if record.date == nil
#       #     record.errors[:base] << "Time and Date must be defined."
#       if record.date < Date.current()
#           record.errors[:base] << "A Data Não Pode Ser Anterior a Hoje!"
#       end
#   end
# end

class Tarefa < ApplicationRecord
  belongs_to :user
  validate :task_just_after_today
  validates :title, presence: true
  validates_length_of :title, minimum: 5, too_short: 'O Título Deve Conter Mais que 5 Caracteres!'

  def task_just_after_today
    if self.date < Date.today
      errors.add(:date, "Data tem que ser a partir de hoje!")
    end
  end

  # validates_with DatetimeValidator

end
