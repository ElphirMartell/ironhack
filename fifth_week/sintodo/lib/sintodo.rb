require 'pry'
#module Sintodo
  # Your code goes here...
  class TaskList

  	def initialize
  		@tasklist = []
  	end


  	def add_task(name)
  		@tasklist.push(Task.new(name))
  	end

  	def remove_task
  		@tasklist.delete[@index]
  	end

  	def find_task(input)
  		@index = @tasklist.index {|task| task.name == input}
  		return "#{input} is the task #{@index}"
  		@index
  	end

  end

  class Task
  	attr_reader :name

  	def initialize(name)
  		@name = name
  	end

  end

#end


tasklist = TaskList.new
tasklist.add_task("hacer la compra")
tasklist.add_task("hacer la colada")
tasklist.add_task("jugar al fútbol")
tasklist.add_task("matar a Bart")
tasklist.find_task("matar a Bart")
