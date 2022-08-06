class Diary
    def initialize
        @entries = []
    end

    def addDiary(entry)
        @entries << entry
    end

    def phoneNumbers
        @entries.map{|entry| entry.phoneNumber}
    end

    def selectDiary(wpm, mins)
        words = mins / wpm
        @entries.select{|entry| entry.contents
            .split(' ')
            .size <= words } 
    end

    def allEntries
        @entries
    end
end
