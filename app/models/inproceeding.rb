class Inproceeding < ActiveRecord::Base

  validates :author, presence: true
  validates :title, presence: true
  validates :booktitle, presence: true
  validates :year, numericality: { only_integer: true, less_than_or_equal_to: Date.today.year,
                                   greater_than_or_equal_to: 0 }

  def key
    s = "" << self.author.downcase.first(2) << ":" << self.year.to_s << ":" << "inp" << self.id.to_s
  end

  def generateBibtex
	s= "@inproceeding{" << self.key << ",\n" 
  s << "\tauthor = {" << self.author << "},\n" 
  s << "\ttitle = {" << self.title << "},\n" 
  s << "\tbooktitle = {" << self.booktitle << "},\n" 
  s << "\tyear = {" << self.year.to_s << "},\n"
  s << "\teditor = {" << self.editor << "},\n" unless self.editor == ""
  s << "\tpages = {" << self.pages << "},\n"   unless self.pages == ""
  s << "\torganization = {" << self.organization << "},\n" unless self.organization == ""
  s << "\tpublisher = {" << self.publisher << "},\n" unless self.publisher == ""
  s << "\taddress = {" << self.address << "},\n" unless self.address == ""
  s << "\tmonth = {" << self.month << "},\n" unless self.month == ""
  s << "\tnote = {" << self.note << "},\n" unless self.note == ""
  s << "\tikey = {" << self.ikey << "},\n" unless self.ikey == ""
  
  s << "}\n"
  
  end
end
