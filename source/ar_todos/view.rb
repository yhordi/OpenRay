class View
  def menu
    text
    puts "Select an Option by typing a number:"
    puts "1. Create username"
    puts "2. Select existing username"
    puts "3. Exit Application"
    puts "*"*50
  end

  def name_list
    puts "Enter your username:"
    puts "*"*50

  end

  def task_menu
    puts "Select an Option by pressing a number:"
    puts "1. Create Task"
    puts "2. View Tasks"
    puts "3. Exit to command line"
    puts "*"*50

  end

  def task_actions
    puts "Select option by typing a number."
    puts "1. Start Task-time."
    puts "2. Stop Task-time."
    puts "3. See total time"
    puts "4. Exit to main menu."
    puts "*"*50

  end

  def name_task
    puts "Type in your task."
    puts "*"*50

  end

  def select_user
      puts "Select user ID:"
    puts "*"*50

  end

  def select_task
    puts "Select task ID"
    puts "*"*50

  end

  def display_tasks(task)
    task.each {|task|p task}
  end

  def total_time(h, m, s)
    puts "You have lost #{h} hours #{m} minutes #{s} seconds of your precious life to this task."
  end

  def text
  @text = <<END
               .--.
          .-._;.--.;_.-.
         (_.'_..--.._'._)
          /.' . 60 . '.\\
         // .      / . \\\\
        |; .      /   . |;
        ||45    ()    15||
        |; .          . |;
        \\\\ .          . //
         \\'._'  30 '_.'//
      jgs  '-._'--'_.-'
               `""`


END
puts @text
end

end
