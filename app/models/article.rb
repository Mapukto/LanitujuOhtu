class Article < ActiveRecord::Base

  validates :author, presence: true
  validates :title, presence: true
  validates :journal, presence: true
  validates :year, numericality: { only_integer: true, less_than_or_equal_to: Date.today.year,
                                   greater_than_or_equal_to: 0 }

  def key
    s = "" << self.author.downcase.first(2) << ":" << self.year.to_s << ":" << "art" << self.id.to_s
  end

  def generateBibtex
	  s= "@article{" << self.key << ",\n" 
    s << "\tauthor = {" << self.author << "},\n" 
    s << "\ttitle = {" << self.title << "},\n" 
    s << "\tjournal = {" << self.journal << "},\n" 
    s << "\tyear = {" << self.year.to_s << "},\n"
    s << "\tvolume = {" << self.volume << "},\n" unless self.volume == ""
    s << "\tnumber = {" << self.number << "},\n" unless self.number == ""
    s << "\tpages = {" << self.pages << "},\n" unless self.pages == ""
    s << "\tmonth = {" << self.month << "},\n" unless self.month == ""
    s << "\tnote = {" << self.note << "},\n" unless self.note == ""
    s << "\tkey = {" << self.akey << "},\n" unless self.akey == ""
    s << "    }\n"
    

  end

end
