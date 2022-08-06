class TodoList
    def initialize
        @list = []
    end

    def add(todo)
        @list << todo
    end

    def completedTodos
        @list.select{|todo| todo.done?}
        .map{|todo| todo.todo}
    end

    def incompleteTodos
        @list.select{|todo| !todo.done?}
        .map{|todo| todo.todo}
    end
end