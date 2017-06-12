class CommentsExpenseDeputy < ApplicationRecord
  belongs_to :deputy
  belongs_to :user
  belongs_to :red_flag_expense_deputy
end
