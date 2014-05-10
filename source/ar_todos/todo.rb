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
    # system "clear"

    case option
    when '1'
      @view.name_list
      @user = User.new
      @user.update(name: gets.chomp)
      system "clear"
      task_menu
    when '2'
      User.all.each {|user| p user}
      @view.select_user
      @user_id = gets.chomp.to_i
      # system "clear"
      @user = User.find(@user_id)
      task_menu
    when '3'
      return exit
    end
  end

  def task_menu
    @view.task_menu
     task_option = gets.chomp
     # system "clear"

    case task_option
    when '1'
      @view.name_task
      # @task = Task.new
      @task = @user.tasks.create(name: gets.chomp)
      # system "clear"
      @user.tasks << @task
      task_actions

    when '2'
      task = Task.where(user_id: @user_id)
      @view.display_tasks(task)
      @view.select_task
      @task = Task.find(gets.chomp.to_i)
      # system "clear"
      task_actions
    when '3'
      menu
    end
    task_menu
  end

  def task_actions
    @view.task_actions
    reply = gets.chomp
    # system "clear"
    case reply
      when '1'
        task_start
      when '2'
        task_stop
      when '3'
        task_total_time
      when '4'
        task_menu
    end
    task_actions
  end

  def task_start
    @task.update(start_time: Time.now) if @task.start_time == nil
  end

  def task_stop
    @task.update(end_time: Time.now)
  end

  def task_total_time
    @task.update(total_time: @task.end_time - @task.start_time)
    @t_time = @task.total_time
    time_calc
    # @view.total_time(t_time)
  end

  def time_calc
    hours_seconds = @t_time.divmod(3600)
    hours = hours_seconds[0]
    minutes_seconds = hours_seconds[1].divmod(60)
    minutes = minutes_seconds[0]
    seconds = minutes_seconds[1]
    @view.total_time(hours, minutes, seconds)
  end

end

#Controller.new

