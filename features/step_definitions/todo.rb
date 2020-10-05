require 'watir'
require 'rspec'

browser = Watir::Browser.new :chrome

Given (/^I am on the todo app example page$/)do
  browser.goto 'http://todomvc.com/examples/angular2/'
end

When (/^I enter name for todo item$/)do
  browser.text_field(placeholder: 'What needs to be done?').wait_while(&:present?).set('Todo1')
  browser.send_keys :enter
end

Then (/^I confirm new todo item was added to the list$/)do
  expect(browser.label(text: 'Todo1').exist?).to eq(true)
end

When (/^I complete todo item$/)do
  browser.checkbox(xpath: '/html/body/todo-app/section/section/ul/li/div/input').click
end

Then (/^I confirm new todo item was completed$/)do
  browser.checkbox(xpath: '/html/body/todo-app/section/section/ul/li/div/input').set?
end

When (/^I delete todo item$/)do
  browser.label(text: 'Todo1').hover
  browser.button(class: 'destroy').click
end

Then (/^I confirm new todo item was deleted$/)do
  expect(browser.label(text: 'Todo1').exist?).to eq(false)
  browser.close
end
