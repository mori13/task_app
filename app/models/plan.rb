class Plan < ApplicationRecord
  validates :title, presence: true, length: {in:1..15}
  validate :date_before_start
  validate :date_before_finish


  def date_before_start
    return if start.blank?
    errors.add("開始日は今日以降のものを選択してください") if start < Date.today
  end

  def date_before_finish
    return if finish.blank? || start.blank?
    errors.add("終了日は開始日以降のものを選択してください") if finish < start
  end
end
