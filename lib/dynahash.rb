# = DynaHash
# (c) 2010 Tony Heupel
#
# An extension to Ruby's Hash class that allows for dot-notation
# access to a Hash's keys as if they were just properties on the 
# object.
# It ignores:
#  *  @ (xml-simple gem attribute prefix)
#  *  : (symbol notation)
#  *  - (dash in name)
#
# It replaces spaces with underscores to more closely resemble
# a property name.
#
# Based off of my .NET/C# HyperDynamo work at 
# http://github.com/tonyheupel/hypercore
#
class Hash
  
  def method_missing(m, *args, &block)
    self.fetch(find_member(m))
  end
  
  private

  def find_member(m)
    # get the first key that matches the test
    # if none of the keys match, just return
    # the original name passed in and let the
    # caller handle it.
    name = m.to_s
    self.keys.find(name) { |key| key.to_s.gsub(/(@|:|\-)/, '').gsub(' ', '_').casecmp(name) == 0 }
  end
end