require_relative './concerns/memorable'
require_relative './concerns/findable'
require_relative './concerns/paramable'
require 'pry'

class Song
  extend Memorable
  extend Findable
  include Paramable
  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def initialize
    self.class.all << self
  end

  def self.all
    @@songs
  end

  def artist=(artist)
    @artist = artist
  end

end
