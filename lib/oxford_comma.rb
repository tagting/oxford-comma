def oxford_comma(array)
  if array.count < 2
    return r = array.join(", "){ |e| "#{e}"}
  elsif array.count == 2
    #r = array.delete_at(array.index(","))
    #return r.join()
    return r = array.join(" and "){ |e| "#{e}"}
  else
    r = array.insert((array.count - 1),"and ")
    r = r.map {|x| [x, ", "]}.flatten
        #r = r.map {|x| [x, ","]}.flatten
    r.pop()
    r.delete_at(-2)
    r.delete_at(r.length())
    return r.join()
    end
end