module Generators
  module Member
    def generate_member(status = 'active')
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
  end
end

World(Generators::Member)