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
    laundry = Task.new
    dishes = Task.new
    laundry.title_change 'laundry'
    dishes.title_change 'dishes'
    a_tasklist.add_task laundry
    a_tasklist.add_task dishes
    expect(a_tasklist.tasklist_array).to eq [laundry, dishes]
  end

  #  I can show all the completed items.
  it 'shows the completed tasks in the array' do
    a_tasklist = TaskList.new
    laundry = Task.new
    clean_house = Task.new
    laundry.title_change 'Laundry'
    clean_house.title_change 'Clean house'
    laundry.task_done = true
    a_tasklist.add_task laundry
    a_tasklist.add_task clean_house
    expect(a_tasklist.sort! { |x| x.task_done == true}).to eq [laundry]
  end
end
