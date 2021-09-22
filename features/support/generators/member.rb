module Generators
  module Member
    def generate_member(status = 'active')

      # security_questions = status == "active" ? three_security_questions : []

      params = {
        group_id: @group['group_id'],
        gender_cd: 'GENDER_MALE',
        language_cd: 'LANGUAGE_EN',
        state_cd: 'CT',
        status: status,
        primary: true,
        minor: false,
        primary_member_id: nil,
        primary_relationship: nil,
        security_questions: []
      }

      create_member_api(:member, params)
    end

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
end

World(Generators::Member)