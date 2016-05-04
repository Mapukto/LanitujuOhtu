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
    s << "\tvolume = {" << self.volume << "},\n" unless self.volume == "" unless self.volume.nil?
    s << "\tnumber = {" << self.number << "},\n" unless self.number == "" unless self.number.nil?
    s << "\tpages = {" << self.pages << "},\n" unless self.pages == ""    unless self.pages.nil?
    s << "\tmonth = {" << self.month << "},\n" unless self.month == ""    unless self.month.nil?
    s << "\tnote = {" << self.note << "},\n" unless self.note == ""       unless self.note.nil?
    s << "\tkey = {" << self.akey << "},\n" unless self.akey == ""        unless self.akey.nil?
    s << "}\n"
    

  end

end
