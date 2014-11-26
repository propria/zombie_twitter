class Tweet< ActiveRecord::Base
belongs_to :zombie

validates_presence_of :status
validates :attribute, :validation=> true
validates :status, :presence => true
validates :status, :length=> { :minimum=> 3 }
validates :status, :presence => true, :length=> { :minimum=>3 }
:presence=> true
:uniqueness=> true
:numericality=> true
:length=> { :minimum=> 0, :maximum=> 2000}
format=> { :with => /.*/}
:inclusion=> { :in=> [1,2,3] }
:exclusion=> { :in=> [1,2,3] }
:acceptance=> true
:confirmation=> true

end
