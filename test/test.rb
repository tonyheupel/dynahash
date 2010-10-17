# !/usr/bin/env/ ruby
require "test/unit"

require "../lib/dynahash"

class TestDynaHash < Test::Unit::TestCase
  def test_case_matches
    h = {'UserName' => 'tonyheupel', 'Password' => 'yeah, right'}
    
    assert_equal('tonyheupel', h.UserName)
    assert_equal(h['UserName'], h.UserName)
    
    assert_equal('yeah, right', h.Password) 
    assert_equal(h['Password'], h.Password)
    
  end
  
  def test_case_insensitive
    h = {'UserName' => 'tonyheupel', 'Password' => 'yeah, right'}
    
    assert_equal('tonyheupel', h.username)
    assert_equal('tonyheupel', h.uSERnaMe)
    
    assert_equal('yeah, right', h.password)
    assert_equal('yeah, right', h.pASSwOrD)
  end
  
  def test_replace_space_with_underscore
    h = {'Tony Heupel' => 'cool', 'Zed Shaw' => 'coolest'}
    
    assert_equal('cool', h.Tony_Heupel)
    assert_equal(h['Tony Heupel'], h.Tony_Heupel)
    
    assert_equal('coolest', h.Zed_Shaw)
    assert_equal(h['Zed Shaw'], h.Zed_Shaw)
  end
  
  def test_remove_at_symbol
    h = {'@name' => 'Tony', 'gen@der' => :male}
    
    assert_equal('Tony', h.name)
    assert_equal(:male, h.gender)
  end
  
  def test_remove_colon_symbol
    h = {:name => 'Tony', 'gen:der' => :male}

    assert_equal('Tony', h.name)
    assert_equal(:male, h.gender)
  end
  
  def test_remove_dash_symbol
    h = {'My-Name-Is' => 'Slim Shady', '-gender-' => :male}

    assert_equal('Slim Shady', h.MyNameIs)
    assert_equal(:male, h.gender)
  end
  
  def test_all_removals_and_replacements_together
    h = {'@name' => 'Tony', 'Person Gender' => :male, :dude_type => 'coolness', '-w:T@@F--' => 'um, ok' }
    
    assert_equal('Tony', h.name)
    assert_equal(:male, h.person_gender)
    assert_equal('coolness', h.dude_type)
    assert_equal('um, ok', h.WTF)
    
  end
end