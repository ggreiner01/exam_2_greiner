class Committee < ApplicationRecord
	belongs_to  :administration

	has_many	:faculty
end
