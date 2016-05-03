require 'rails_helper'

RSpec.describe "books/index", type: :view do
  before(:each) do
    assign(:books, [
      Book.create!(
        :author => "Author",
        :title => "Title",
        :publisher => "Publisher",
        :year => 1
      ),
      Book.create!(
        :author => "Author",
        :title => "Title",
        :publisher => "Publisher",
        :year => 1
      )
    ])
  end
end
