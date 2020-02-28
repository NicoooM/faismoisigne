class Event < ActiveRecord::Base
  belongs_to :user
  validates_presence_of :nom, :start_at, :lieu

  scope :future, -> { where('start_at >= ?', DateTime.now)}
  scope :past, -> { where('start_at < ?', DateTime.now)}
  default_scope { order(start_at: :desc) }

  def to_s
    "#{nom}"
  end
end
