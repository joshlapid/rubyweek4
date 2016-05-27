require 'rspec'
require_relative 'task'

# create a new class called tasklist
class TaskList
  def initialize
    @task_group = []
  end

  def tasklist_array
    @task_group
  end

  def add_task(new_task)
    @task_group << new_task
  end

  def completed_tasks
    @completed_task_array
  end
end

# Make two tasks one for laundry one for dishes
# Make a tasklist to store tasks
# Add tasks to tasklist


laundry = Task.new
dishes = Task.new
house_tasks = TaskList.new
laundry.title_change('laundry')
dishes.title_change('dishes')
dishes.task_done = true

house_tasks.add_task(laundry)
house_tasks.add_task(dishes)
p house_tasks.tasklist_array.map { |task| task.gets_title + " " + task.task_done?.to_s}

# @completed_tasks=house_tasks.tasklist_array.map { |task| task.gets_title + " " + task.task_done?.to_s}
# p @completed_tasks[1]
