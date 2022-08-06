include .env

.PHONY: list-players
list-players:
	docker run --rm --network host aoirint/rcon:20220806.1 rcon -H 127.0.0.1 -p 27020 -P "${ADMIN_PASSWORD}" --minecraft ListPlayers

