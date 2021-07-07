class ClickbaitValidator < ActiveModel::Validator
    def validate(record)
        if record.title
            unless record.title.include?("Won't Believe") || record.title.include?("Secret") || record.title.include?("Top") || record.title.include?("Guess")
                record.errors[:clickbait] << "Not click-baity enough! Needs some more exaggeration!"
            end
        end
    end
end