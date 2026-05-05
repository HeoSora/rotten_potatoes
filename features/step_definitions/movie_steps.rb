Given("I am on the RottenPotatoes home page") do
  visit movies_path
end

Given("I add a new movie with title {string}") do |title|
  Movie.create!(title: title, release_date: "2000-01-01", rating: "PG")
end

When("I follow {string}") do |link|
  click_link(link)
end

Then("I should see {string} before {string}") do |first, second|
  unless page.body =~ /#{first}.*#{second}/m
    raise "#{first} does not appear before #{second}"
  end
end