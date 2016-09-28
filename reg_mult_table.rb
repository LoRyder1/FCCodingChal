

x = (1..12)
y = (1..12)

print '     '
x.each {|i| print "%-3d  " % i}
print "\n     "
x.each {|i| print '---- '}
print "\n"

y.each do |j| 
    print "%-3d| " % j
    x.each {|i| print "%-3d  " % (i*j)}
    print "\n"
end


