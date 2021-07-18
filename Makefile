.DEFAULT_GOAL := check

start:
	@echo "🏃‍♀️ Starting project"
	@yarn start

init:
	@echo "Initialising the project"
	@yarn

test:
	@echo "Testing..."
	@yarn test

build:
	@echo "👩‍🏭 Building..."
	@yarn build

check: --pre_check test build
	@echo "✅"

clean:
	@echo "🛁 Cleaning..."
	@yarn clean

clean_all: clean
	@echo "🧨 Clean all"
	@rm -Rf node_modules package-lock.json coverage dist docs

--pre_check:
	@yarn clean
	@yarn install
	@yarn lint
