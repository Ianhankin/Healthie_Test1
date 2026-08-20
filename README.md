# README

In order to test this app, simply run the migrations with rails db: migrate, optionally running rails db:seed to create some random data, and then run rails c to test the calls.
Fetching all clients for a given provider is as simple as calling .clients on that provider, and fetching all providers for a given client is just .providers.
For all journals in order of time for a given client or provider, simply call .all_journals on either the client or provider to get all journals for that client, or all journals for all clients of that provider.