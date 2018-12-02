class Faculty < ApplicationRecord
	belongs_to  :administration

	has_many	:programs
	has_many	:assessments
end
