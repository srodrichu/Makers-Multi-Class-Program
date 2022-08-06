require 'diary'
require 'diary_entry'

RSpec.describe Diary do
    it 'returns all the phone numbers in the diary' do
        diary = Diary.new
        diary_entry1 = DiaryEntry.new('Met Ronaldinho', '132124')
        diary_entry2 = DiaryEntry.new('Met Ronaldo', '11238724')
        diary.addDiary(diary_entry1)
        diary.addDiary(diary_entry2)
        result = diary.phoneNumbers
        expect(result).to eq ['132124', '11238724']
    end

    it 'returns a list of diary entries based on the users reading time and how much time they have' do
        diary = Diary.new
        diary_entry1 = DiaryEntry.new('1 2 3 4 5 6 7 8 9 10 11')
        diary_entry2 = DiaryEntry.new('1 2 3 4 5 6 7')
        diary.addDiary(diary_entry1)
        diary.addDiary(diary_entry2)
        result = diary.selectDiary(1, 8)
        expect(result).to eq [diary_entry2]
    end

    it 'returns all diary entries' do
        diary = Diary.new
        diary_entry1 = DiaryEntry.new('1 2 3 4 5 6 7 8 9 10 11')
        diary_entry2 = DiaryEntry.new('1 2 3 4 5 6 7')
        diary.addDiary(diary_entry1)
        diary.addDiary(diary_entry2)
        result = diary.allEntries
        expect(result).to eq [diary_entry1, diary_entry2]
    end
end
