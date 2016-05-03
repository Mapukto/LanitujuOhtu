class Book < ActiveRecord::Base

	validates :author, presence: true
	validates :title, presence: true
	validates :publisher, presence: true
	validates :year, numericality: { only_integer: true, less_than_or_equal_to: Date.today.year,
                                   greater_than_or_equal_to: 0 }

  def key
    s = "" << self.author.downcase.first(2) << ":" << self.year.to_s << ":" << "boo" << self.id.to_s
  end

  def generateBibtex
	   s= "@book{" << self.key << ",\n" << "\tauthor = {" 
     s << self.author << "},\n" 
     s << "\ttitle = {" << self.title << "},\n" 
     s << "\tpublisher = {" 
     s << self.publisher 
     s << "},\n" 
     s << "\tyear = {" 
     s << self.year.to_s 
     s << "},\n"
     s << "\tvolume = {" << self.volume << "},\n" unless self.volume == ""
     s << "\tseries = {" << self.series << "},\n" unless self.series == ""
     s << "\taddress = {" << self.address << "},\n" unless self.address == ""
     s << "\tedition = {" << self.edition << "},\n" unless self.edition == ""
     s << "\tmonth = {" << self.month << "},\n" unless self.month == ""
     s << "\tnote = {" << self.note << "},\n" unless self.note == ""
     s << "\tkey = {" << self.bkey << "},\n" unless self.bkey == ""


     
     s << "}\n"
     
  end
end
