require "securerandom"

provider_names = %w[Alex Jordan Taylor Morgan Casey Riley Avery Cameron]
client_names = %w[Jamie Quinn Parker Reese Skyler Dakota Rowan Finley Emerson Hayden]
journal_entries = [
	"Feeling more energized this week and sleeping consistently.",
	"Worked through a challenging moment and used the breathing exercises.",
	"Made time for a walk and noticed an improvement in my mood.",
	"I am still feeling overwhelmed, but the new routine is helping.",
	"Had a productive week and want to keep building on this progress."
]

Journal.delete_all
Plan.delete_all
Client.delete_all
Provider.delete_all

provider_names.sample(rand(3..5)).each_with_index do |provider_name, provider_index|
	provider = Provider.create!(
		name: "#{provider_name} #{%w[Lee Patel Garcia Smith].sample}",
		email_address: "provider#{provider_index + 1}-#{SecureRandom.hex(4)}@example.com"
	)

	client_names.sample(rand(2..5)).each_with_index do |client_name, client_index|
		client = Client.create!(
			name: "#{client_name} #{%w[Lee Patel Garcia Smith].sample}",
			email_address: "client#{provider_index + 1}-#{client_index + 1}-#{SecureRandom.hex(4)}@example.com"
		)

		Plan.create!(provider: provider, client: client, classification: "Care Plan")

		rand(2..4).times do
			Journal.create!(client: client, text: journal_entries.sample)
		end
	end
end

puts "Created #{Provider.count} providers, #{Client.count} clients, and #{Journal.count} journal entries."
