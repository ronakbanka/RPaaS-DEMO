# coding: utf-8

class Comment
  include Mongoid::Document
  field :name, :default => '名無しさん'
  field :posted_at, :type => DateTime, :default => DateTime.now
  field :content
  embedded_in :topic, :inverse_of => :comments

  validates_presence_of :name, :posted_at, :content
  validates_length_of   :name, :minimum => 4, :maximum => 100
  validates_length_of   :content, :minimum => 4, :maximum => 500
end

