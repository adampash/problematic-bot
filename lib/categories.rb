module Categories
  NERDS = %w[
    nerd nerds baby wimp weiner crybaby loser
    whiner bartending bully bullying bullies Bullying
  ]

  def self.terms(category)
    self.const_get(category.upcase).join " OR "
  end

end
