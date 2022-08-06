class Todo
    def initialize(todo)
        @todo = todo 
        @complete = false 
    end

    def markComplete!
        @complete = true
    end

    def done?
        @complete
    end

    def todo 
        @todo
    end
end