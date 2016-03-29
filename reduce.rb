[1,2,3].reduce{|sum,x| sum+x}

#better to do this way
[1,2,3].reduce(0){|sum,x| sum+x}