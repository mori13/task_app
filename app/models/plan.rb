class Plan < ApplicationRecord
  validate :title, presence: true
  validate :start, presence: true
  validate :end, presence: true
  validate :date_before_start
  validate :date_bofore_finish

    def date_before_start
      if not start.blank
        if start < Date.today
          erros.add(:start,"は今日以降のものを選択してください")
        end
      end
    end

    def date_bofore_finish
      if not :end.blank
        if :end < start  
          errors.add(:end, "は開始日以降のものを選択してください")
        end
      end
    end

end
