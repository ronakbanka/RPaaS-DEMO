# coding: utf-8

class TopicsController < ApplicationController
  def index
    @topics = Topic.all.to_a
    @comment = Comment.new
  end

  def new
    @topic   = Topic.new
    @comment = Comment.new
  end

  def create
    @topic = Topic.new(params[:topic])
    params[:topic][:comment][:name] = '名無しさん' if  params[:topic][:comment][:name] == ""
    @topic.comments << Comment.new(params[:topic][:comment])
    @topic.save
    redirect_to topics_url
  end
end
