require 'todo_list'
require 'diary_todo'
require 'diary'

RSpec.describe 'Todo List / Diary integration' do
    it 'constructs' do
        diary = Diary.new
        todolist = TodoList.new
        diarytodo = DiaryTodo.new(diary, todolist)
    end

    it 'returns the diary object' do
        diary = Diary.new
        todolist = TodoList.new
        diarytodo = DiaryTodo.new(diary, todolist)
        result = diarytodo.diary
        expect(result).to eq diary 
    end

    it 'returns the todolist object' do
        diary = Diary.new
        todolist = TodoList.new
        diarytodo = DiaryTodo.new(diary, todolist)
        result = diarytodo.list
        expect(result).to eq todolist
    end

end

