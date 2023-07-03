class TagSerializer < ActiveModel::Serializer
    attributes :name, :posts
  
  
    def posts
       object.posts.map do |post|
        {
          title: post.title,
          content: post.content
        }
      end
    end
  end