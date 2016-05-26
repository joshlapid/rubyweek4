# Starting User Stories
#
# Story: As a developer, I can create a Task.
#
# Story: As a developer, I can give a Task a title and retrieve it.
#
# Story: As a developer, I can give a Task a description and retrieve it.
#
# Story: As a developer, I can print a Task with field labels and values.
#
# Story: As a developer, I can mark a Task done.
#
# Story: As a developer, when I print a Task is done status is shown.
#
# Story: As a developer, I can add all of my Tasks to a TaskList.
#
# Story: As a developer with a TaskList, I can show all the completed items.
#
# Story: As a developer with a TaskList, I can show all the not completed items.
#
require 'rspec'
require_relative 'task'

#  As a developer, I can create a Task.
describe Task do
  it 'should not break when we create a new task ' do
    expect { Task.new }.to_not raise_error
  end
  # As a developer, I can give a Task a title
  it 'should have a title' do
    a_task = Task.new
    expect(a_task.gets_title).to be_a String
  end
  # Lets us change the task and retrive its new title
  it 'lets us change the task a title' do
    a_task = Task.new
    a_task.title_change 'dishes'
    expect(a_task.gets_title).to eq 'dishes'
  end
  # I can give a Task a description and retrieve it.
  it 'can give a Task a description and retrieve it.' do
    a_task = Task.new
    expect(a_task.description).to be_a String
  end

  # Should be able to change or add to description
  it 'can change or add to description' do
    a_task = Task.new
    a_task.change_description 'put dishes in dish washer'
    expect(a_task.description).to eq 'put dishes in dish washer'
  end
  # Story: As a developer, I can print a Task with field labels and values.
  it 'can return labels and values' do
    a_task = Task.new
    a_task.gets_labels
    expect(a_task.gets_labels).to eq a_task.gets_title + ': ' + a_task.description
  end
  # each task starts with a value of false or 'undone'
  it 'each task has a status' do
    a_task = Task.new
    expect(a_task.task_done?).to be_a FalseClass
  end
  # I can mark a Task done. changing the status to true
  it 'each task status can change from undone to done' do
    a_task = Task.new
    a_task.task_done = true
    expect(a_task.task_done?).to eq true
  end
end
