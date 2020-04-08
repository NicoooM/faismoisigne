class Event < ActiveRecord::Base
  belongs_to :user
  validates_presence_of :nom, :start_at, :lieu

  scope :future, -> { where('start_at >= ?', DateTime.now)}
  scope :past, -> { where('start_at < ?', DateTime.now)}
  default_scope { order(:start_at)}
  scope :pastorder, -> { reorder(start_at: :desc) }

  enum category: {
    bar: 0,
    cafe: 10,
    bibliotheque: 20,
    parc: 30,
    theatre: 40,
    sport: 50,
    restaurant: 60,
    jeux: 70
  }

  scope :by_category, -> { where('category = ?', 60 )}

  def to_s
    "#{nom}"
  end
end
