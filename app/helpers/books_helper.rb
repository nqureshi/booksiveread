module BooksHelper
  def books_read_this_year
    @books = Book.all
    thisyear = []
    d = Date.today
    @books.each do |b|      
      thisyear << b if b.created_at.between?(d.beginning_of_year, d+1.day)
    end
    thisyear.count  
  end
  
  def books_per_week
    d = Date.today
    days = (d - d.beginning_of_year).to_i
    weeks = (days / 7).to_f
    (books_read_this_year / weeks).to_f.round(2)
  end  
end
