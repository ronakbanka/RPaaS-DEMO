# encoding: utf-8

module TopicsHelper

  def insert_slash(topics, topic)
    if topics.first != topic && topics.last != topic
      " ／ "
    end
  end
end
