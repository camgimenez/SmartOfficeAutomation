Given /this is running/ do
  # A test failure might look something like this
  if 1 + 1 != 2
    raise('Math has stopped working.')
  end
end

Then /hurray!/ do
  puts "Hooray!"
end