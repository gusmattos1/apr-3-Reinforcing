class Task

  @@tasks = []
  @@due_date = Time.now

  def initialize (task, date)
    @task = task
    @due_date = (@@due_date + date)
  end

  def self.create (task, date)
    new_task = Task.new (task, date)
    @@task << new_task
    return new_task
  end

  def self.all_tasks
  p  @@tasks
  end

  def task
    @task
  end

  def due_date
    @due_date
  end

  def task=(task)
    @task=task
  end

  def due_date=(date)
    @due_date=date
  end

end

novo = Task.create("levar", 3600)

Task.all_tasks
