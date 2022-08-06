require 'diary'
require 'diary_entry'

RSpec.describe 'Diary/Diary Entry Integration' do
    it 'adds a diary entry to the diary' do
        diary = Diary.new
        diary_entry1 = DiaryEntry.new('Met Ronaldinho')
        diary.addDiary(diary_entry1)
    end
end