require 'rspec'
require_relative 'tasklist'

# I can add all of my Tasks to a TaskList.

# create a new class called tasklist
describe TaskList do
  it 'should be able to create a tasklist to contain all the tasks' do
    expect { TaskList.new }.to_not raise_error
  end

  # Create an array to hold Tasks
  it 'has an array to hold classes' do
    a_tasklist = TaskList.new
    expect(a_tasklist.tasklist_array).to be_a Array
  end

  # I can add a task to the task array
  it 'able to add task to task_array' do
    a_tasklist = TaskList.new
    a_tasklist.add_task 'laundry'
    expect(a_tasklist.task_array).to eq ['laundry']
  end
end
