require 'todo'
require 'todo_list'

RSpec.describe TodoList do
    it 'shows completed todos' do
        todolist = TodoList.new
        todo1 = Todo.new('Do dishes')
        todo2 = Todo.new('Finish makers assignment')
        todolist.add(todo1)
        todolist.add(todo2)
        todo1.markComplete!
        result = todolist.completedTodos
        expect(result).to eq [todo1.todo]
    end

    it 'returns a list of incomplete todos' do
        todolist = TodoList.new
        todo1 = Todo.new('Do dishes')
        todo2 = Todo.new('Finish makers assignment')
        todolist.add(todo1)
        todolist.add(todo2)
        todo1.markComplete!
        result = todolist.incompleteTodos
        expect(result).to eq [todo2.todo]
    end
end
