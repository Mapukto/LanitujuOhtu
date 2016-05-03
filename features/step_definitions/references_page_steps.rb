When /^there exists references in the database$/ do
  Article.create author:"Rotta", title:"Pilaantuneiden elintarvikkeiden hyötykäyttö", journal:"Kaatopaikka ympäristöystävällisen kierrätyksen lähtökohtana", year:1998
  Book.create title: "Nimi", publisher:"Joku", year:1999, author:"Kirjailija"
  Inproceeding.create author:"Kivi", title:"Muuttolinnut pohjoisen pallonpuoliskon illassa", booktitle:"Jeesus", year:2004
  visit root_path
end

Then /^Page should show bibtexts for all references$/ do
  expect(page).to have_content("@article{Rotta:1998:art1, author = {Rotta}, title = {Pilaantuneiden elintarvikkeiden hyötykäyttö}, journal = {Kaatopaikka ympäristöystävällisen kierrätyksen lähtökohtana}, year = {1998}")
  expect(page).to have_content("@book{Kirjailija:1999:boo1, author = {Kirjailija}, title = {Nimi}, publisher = {Joku}, year = {1999}, }")
  expect(page).to have_content("@inproceeding{Kivi:2004:inp1, author = {Kivi}, title = {Muuttolinnut pohjoisen pallonpuoliskon illassa}, booktitle = {Jeesus}, year = {2004}")
end

Then /^Page should show all references$/ do
  expect(page).to have_content("Listing References")
  expect(page).to have_content("Total number of References: 3")
end

Given /^I press 'show all'$/ do
  click_link('show all')
end