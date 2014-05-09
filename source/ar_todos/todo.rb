require_relative 'config/application'
require_relative 'view'
require_relative 'app/models/user'
require_relative 'app/models/task'


puts "Put your application code in #{File.expand_path(__FILE__)}"


class Controller

  def initialize
    @view = View.new
    menu
  end

  def menu
    @view.menu
    option = gets.chomp

    case option
    when '1'
      @view.name_list
      @user = User.new
      @user.update(name: gets.chomp)
      task_menu
    when '2'
      User.all.each {|user| p user}
      @view.select_user
      @user_id = gets.chomp.to_i
      @user = User.find(@user_id)
      task_menu
    when '3'
      return exit
    end
  end

  def task_menu
    @view.task_menu
     task_option = gets.chomp

    case task_option
    when '1'
      @view.name_task
      # @task = Task.new
      @task = @user.tasks.create(name: gets.chomp)
      # @task.update(name: gets.chomp)
      @user.tasks << @task
      task_actions

    when '2'
      task = Task.where(user_id: @user_id)
      @view.display_tasks(task)
    when '3'
      menu
    end
    task_menu
  end

  def task_actions
    @view.task_actions
    reply = gets.chomp
    case reply
      when '1'
        task_start
      when '2'
        task_stop
      when '3'
        task_menu
    end
    menu
  end

  def task_start
    @task.update(start_time: Time.now)
  end

  def task_stop
    @task.update(end_time: Time.now)
  end

end

# x = Controller.new

