# frozen_string_literal: true

class SlotMachine
  POINTS = {
    joker: 50,
    star: 40,
    bell: 30,
    seven: 20,
    cherry: 10
  }.freeze
  def def(initialize); end

  def score(options)
    # PSEUDOCODE
    # 1. Know the point for each options
    # 2. Check how many repetead options I get in the array
    # 3. Calculate the points and return them

    if options.uniq.count == 1
      # WHEN THREE OF THE SAME

      # return POINTS[:joker] if options.first == 'joker'
      # return POINTS[:star] if options.first == 'star'
      # return POINTS[:bell] if options.first == 'bell'
      # return POINTS[:seven] if options.first == 'seven'
      # return POINTS[:cherry] if options.first == 'cherry'

      POINTS[options.first.to_sym]
    elsif options.uniq.count == 2 && options.uniq.include?('joker')
      # WHEN TWO OF THE SAME AND A JOKER

      if options.count('joker') == 2
        # WHEN 2 JOKERS
        POINTS[:joker] / 2
      else
        # WHEN 2 OTHERS AND A JOKER
        options.delete('joker')
        POINTS[options.first.to_sym] / 2
      end
    else
      # WHEN YOU LOOSE
      0
    end
  end
end
