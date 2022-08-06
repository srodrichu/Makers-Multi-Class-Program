require 'todo'
require 'todo_list'

RSpec.describe 'TodoList integration' do 
    it 'adds to todo to todolist' do
        todolist = TodoList.new
        todo = Todo.new('Do dishes')
        todolist.add(todo)
    end
end
