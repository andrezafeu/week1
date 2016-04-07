# lib/pawn.rb

class Pawn < Piece
  def initialize(pos_x, pos_y, color, is_first = true)
    @pos_x = pos_x
    @pos_y = pos_y
    @color = color
    @is_first = is_first
  end

  def move?(dst_x, dst_y)
    @dx = (dst_x - @pos_x).abs
    @dy = dst_y - @pos_y

    if @dx == 0 &&
       direction_correct? &&
       amount_of_spaces_correct?
      true
    else
      false
    end
  end

  def direction_correct?
    if @color == "white" && @dy > 0
      true
    elsif @color == "black" && @dy < 0
      true
    else
      false
    end
  end

  def amount_of_spaces_correct?
    if @dy.abs == 1
      true
    elsif @is_first && @dy.abs == 2
      true
    else
      false
    end
  end
end
