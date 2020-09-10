class Museum
  attr_reader :name, :exhibits, :patrons
  def initialize(name)
    @name = name
    @exhibits = []
    @patrons = []
  end

  def add_exhibit(exhibit)
    @exhibits << exhibit
  end

  def recommend_exhibits(patron)
    matches = []
    @exhibits.each do |exhibit|
      patron.interests.each do |interest|
        if exhibit.name == interest
        matches << exhibit
        end
      end
    end
    matches
  end

  def admit(patron)
    @patrons << patron
  end


  def patrons_by_exhibit_interest
    interest_hash = Hash.new { |key, value| key[value] = [] }
      @exhibits.each do |exhibit|
        @patrons.each do |patron|
          if interest_hash[exhibit].nil?
            interest_hash[exhibit] = patron
          elsif !interest_hash[exhibit.name].include?(patron.interests)
        



  end
