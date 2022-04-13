
def return_origin(str)
  coor = {N: 0, E: 0, S: 0, W: 0}
  curr_dir = 'N'

  str.each_char do |char|
    case char
    when 'G'
      coor[curr_dir.to_sym] += 1
    when 'L'
      case curr_dir
      when 'N'
        curr_dir = 'W'
      when 'E'
        curr_dir = 'N'
      when 'S'
        curr_dir = 'E'
      when 'W'
        curr_dir = 'S'
      end
    when 'R'
      case curr_dir
      when 'N'
        curr_dir = 'E'
      when 'E'
        curr_dir = 'S'
      when 'S'
        curr_dir = 'W'
      when 'W'
        curr_dir = 'N'
      end
    end
  end

  if (coor[:N] - coor[:S]) == 0 && (coor[:E] - coor[:W]) == 0
    return true
  else
    return false
  end
end