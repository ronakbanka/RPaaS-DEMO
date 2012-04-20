# coding: utf-8

class CommentsController < ApplicationController
  def index
    @topic = Topic.find(params[:topic_id])
    @comment = Comment.new
  end

  def create
    @topic   = Topic.find(params[:topic_id])
    params[:comment][:name] = '名無しさん' if  params[:comment][:name] == ""
    @comment = Comment.new(params[:comment])
    @topic.comments << @comment
    @topic.save
    redirect_to topic_comments_url(@topic) 
  end
end
