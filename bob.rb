class Bob

  def initialize
  end

  def asking_a_question(remark)
    # check if the remark ends with question mark
    remark.end_with?("?")
  end

  def yelling(remark)
    # check if it is all caps
    (remark.index(/[a-z]/) == nil) && (remark.index(/[A-Z]/) != nil)
  end

  def say_nothing(remark)
    #check if there is nothing in remark other that white space
    remark.strip == ""
  end

  def hey(remark)
    # Bob answers 'Whoa, chill out!' if you yell at him.
    # He answers 'Sure.' if you ask him a question.
    # He says 'Fine. Be that way!' if you address him without actually saying anything.
    # He answers 'Whatever.' to anything else.

    if yelling(remark)
      "Whoa, chill out!"
    elsif asking_a_question(remark)
      "Sure."
    elsif say_nothing(remark)
      "Fine. Be that way!"
    else
      "Whatever."
    end
  end
end
