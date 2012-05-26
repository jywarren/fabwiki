class Wiki < ActiveRecord::Base

  validates_presence_of :title, :author, :body

  def validate
    self.title = self.title.gsub(" ","-")
    self.title = self.title.gsub(",","")
    self.title = self.title.gsub(".","")
    self.title = self.title.gsub("'","")
    self.title = self.title.gsub('"',"")
    self.title = self.title.gsub("--","-")
    self.title = self.title.gsub("--","-")
    self.title = self.title.downcase
  end  

  def current_revision
    Wiki.find_by_title self.title, :conditions => {:current => true}
  end

  def new_revision(args)
    new_wiki = Wiki.new
    new_wiki.author = args[:author]
    new_wiki.author = "anonymous" if args[:author] == ""
    new_wiki.title = self.title
    new_wiki.body = args[:body]
    new_wiki.revision = self.revision+1
    self.current = false
    self.save
    new_wiki.save!
  end

  def revisions
    Wiki.find_all_by_title(self.title,:order => "created_at DESC")
  end

  def nicebody
    self.body.gsub("\n","<br />").gsub(/\[([a-z\-]+)\]/) {'[<a href="/wiki/'+$1+'">'+$1+'</a>]'}
  end

end
