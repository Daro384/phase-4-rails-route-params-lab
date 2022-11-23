class Student < ApplicationRecord

  def to_s
    "#{first_name} #{last_name}"
  end

  def self.by_name(name)
    first_name = Student.find_by(first_name: name.capitalize)
    student = first_name ? first_name : Student.find_by(last_name: name.capitalize)
  end

end
