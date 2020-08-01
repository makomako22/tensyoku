class DesiredConditon < ApplicationRecord
  belongs_to :user, optional: true
end
