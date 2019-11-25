require('minitest/autorun')
require('minitest/reporters')
require_relative('../codeclan_student')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestCodeclanStudent < MiniTest::Test

  def test_can_get_student_name
    student = CodeclanStudent.new("Jen", "E36")
    assert_equal("Jen", student.student_name())
  end



end
