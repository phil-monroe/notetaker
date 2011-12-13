class Subnote < ActiveRecord::Base
  belongs_to :note
  include MarkdownHelper
  
  def md_content
    markdown(self.content)
  end
end
