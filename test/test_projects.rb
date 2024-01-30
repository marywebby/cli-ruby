require 'minitest/autorun'
# removed the require './app' 
require './new_idea' 
require './projects' 

class TestProjects < Minitest::Test 
  def test_new_idea 
    new_idea = New_Idea.new("Cardigan","5mm", "Purple") 
    
    assert_equal "Cardigan", task.style, "Style should match"
    assert_equal "5mm", task.hook_size, "Hook size should match"
    assert_equal "Purple", task.color, "Color should match"
  end 
  
  def test_projects
    projects = Projects.new 
    
    assert_match "New project successfully added!", projects.add_new_idea("Cardigan","5mm", "Purple"), "New idea method failed"
  end 
end
