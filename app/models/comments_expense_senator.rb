class CommentsExpenseSenator < ApplicationRecord
  belongs_to :senator
  belongs_to :user
  belongs_to :red_flag_expense_senator
end
