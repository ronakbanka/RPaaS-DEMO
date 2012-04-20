class Topic
  include Mongoid::Document
  field :title
  embeds_many :comments

  validates_presence_of :title
  validates_length_of :title, :minimum => 4, :maximum => 100
end

