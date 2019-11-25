require('minitest/autorun')
require('minitest/reporters')
require_relative('../codeclan_student')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestCodeclanStudent < MiniTest::Test

  def test_can_get_student_name
    student = CodeclanStudent.new("Jen", "E36", "Ruby")
    assert_equal("Jen", student.student_name())
  end

  def test_can_get_cohort
    student = CodeclanStudent.new("Steve", "E37", "Ruby")
    assert_equal("E37", student.student_cohort())
  end

  def test_can_set_student_name
    student = CodeclanStudent.new("Jen", "E36", "Ruby")
    student.set_student_name("Erin")
    assert_equal("Erin", student.student_name())
  end

  def test_can_set_cohort
    student = CodeclanStudent.new("Alex", "E35", "Ruby")
    student.set_cohort("E34")
    assert_equal("E34", student.student_cohort())
  end

  def test_can_make_student_talk
    student = CodeclanStudent.new("James", "E36", "Ruby")
    phrase = "I can talk!"
    assert_equal("I can talk!", student.make_student_talk(phrase))
  end

  def test_get_student_favourite_language
    student = CodeclanStudent.new("James", "E36", "Ruby")
    assert_equal("I love Ruby", student.favourite_language())
  end

end
