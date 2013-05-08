class Pin < ActiveRecord::Base
  attr_accessible :description, :location, :SurfConditions, :SizeOfWaves, :NumberOfWaves, 
                  :date, :SessionSurfScore, :OverallSurfScore, 
                  :image, :image_remote_url, :surfdate

  validates :description, presence: true, :length => { :minimum => 5 }
  validates :location, presence: true, :length => { :minimum => 2 }
  validates :SurfConditions, presence: true, :length => { :minimum => 5}
  validates :SizeOfWaves, presence: true
  validates :NumberOfWaves, presence: true
  validates :surfdate, presence: true
  validates :user_id, presence: true
  validates_attachment :image, presence: true,
  								content_type: { content_type: ['image/jpeg', 'image/jpg', 'image/png', 'image/gif'] },
  								size: { less_than: 5.megabytes }

# CREATING A SUM FOR NUMBEROFWAVES
  


# values = NumberOfWaves.sum(:value, :group => :Total_NumberOfWaves)

# values.each do |Total_NumberOfWaves, value|
#   aggregate_NumberOfWaves = NumberOfWaves.new(:Total_NumberOfWaves => Total_NumberOfWaves, :value => value, :resource_id => 3)
#   @aggregates_NumberOfWaves.push(aggregate_NumberOfWaves)
# end




  belongs_to :user
  has_attached_file :image, styles: { medium: "520x440>", :thumb => "167x147>" }

  def image_remote_url=(url_value)
  	self.image = URI.parse(url_value) unless url_value.blank?
  	super
  end
end







