10.times do
	User.create(
		username: Faker::Internet.user_name,
    	password: Faker::Internet.password(4)
    )
end

20.times do
	Question.create(
		title: Faker::Lorem.sentence,
		description: Faker::Lorem.paragraph,
		user_id: User.pluck(:id).sample
	)
end

200.times do
	Answer.create(
		description: Faker::Lorem.paragraph,
		user_id: User.pluck(:id).sample,
		question_id: Question.pluck(:id).sample
	)
end

200.times do
	Response.create(
		description: Faker::Lorem.sentence,
		user_id: User.pluck(:id).sample,
		responseable_id: Question.pluck(:id).sample,
		responseable_type: "Question"
	)
end

200.times do
	Response.create(
		description: Faker::Lorem.sentence,
		user_id: User.pluck(:id).sample,
		responseable_id: Answer.pluck(:id).sample,
		responseable_type: "Answer"
	)
end


