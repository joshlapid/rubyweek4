# create a new class called task
class Task
  def initialize
    @title = ''
    @description = ''
    @status = false
  end

  def gets_title
    @title
  end

  def title_change(new_task_title)
    @title = new_task_title
  end

  def description
    @description
  end

  def change_description(new_description)
    @description = new_description
  end

  def gets_labels
    @title + ': ' + @description
  end

  def task_done=(boolean)
    @status = boolean
  end

  def task_done?
    @status
  end

end
