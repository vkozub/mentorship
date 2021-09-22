module DataHelpers
  def three_security_questions
    $answers_for_city_born = 'Mars'
    $answers_for_last_4_social = '1234'
    $answers_for_fav_color = 'Red'
    [
      {security_question_cd: 'CITYBORN', security_response: $answers_for_city_born},
      {security_question_cd: 'LAST4SOCIAL', security_response: $answers_for_last_4_social},
      {security_question_cd: 'FAVCOLOR', security_response: $answers_for_fav_color}
    ]
  end
end

World(DataHelpers)