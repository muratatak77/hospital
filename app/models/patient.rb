class Patient < ActiveRecord::Base

  def regards(arg = 3)
    "#{full_name} #{check(arg)} nish medical"
  end



  private
  def check(arg)

    case arg # a_variable is the variable we want to compare
    when 1    #compare to 1
      "Gunaydin hasta"
    when 2    #compare to 2
      "Gecmis olsun. Turp gibisin"
    else
      "Sizi kaybettik. gule gule"
    end
  end

  def full_name
    "#{name} #{surname}"
  end



end
