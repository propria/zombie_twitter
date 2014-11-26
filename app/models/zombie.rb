class Zombie< ActiveRecord::Base
has_many :tweets

validates_presence_of :status
validates_numericality_of :fingers
validates_uniqueness_of :toothmarks
validates_confirmation_of :password
validates_acceptance_of :zomification
validates_length_of :password, :minimum=> 3
validates_format_of :email, :with => /regex/i
validates_inclusion_of :age, :in => 21..99
validates_exclusion_of :age, :in => 0…21,
message=> "Sorry you must be over 21"
end
