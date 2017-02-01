class Landmark <ActiveRecord::Base
  belongs_to :figure
  belongs_to :figure_titles
  has_many :landmarks
end
