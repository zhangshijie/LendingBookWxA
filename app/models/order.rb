class Order < ApplicationRecord

	# status:0 申请借出  1 同意借出   2 借出中  3 归还成功 4 失效

	belongs_to :user
end
