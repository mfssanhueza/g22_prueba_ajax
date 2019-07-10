class Claim < ApplicationRecord
  belongs_to :enterprise
  belongs_to :user
end
