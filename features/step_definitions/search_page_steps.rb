Given /^I fill 'Jeesus' in search field$/ do
  fill_in 'search', :with => "Jeesus"
end

When /^I press search button$/ do
  click_button('Search')
end

Then /^I should see right references and bibtexts on page$/ do
  expect(page).to have_content("")
end