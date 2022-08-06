require 'diary'
require 'todo_list'

class DiaryTodo
    
    def initialize(diary, todolist)
        @diary = diary
        @todolist = todolist
    end

    def list
        @todolist
    end

    def diary
        @diary
    end
end