.DEFAULT_GOAL := build

init:
	@echo "Initialising the project"
	@./.scripts/init.sh

build_arch: check test
	@echo "✅"

clean:
	@echo "🛁 Cleaning..."
	@npm run clean

clean_all:
	@echo "🧨 Clean all"
	@rm -Rf node_modules package-lock.json .architecture/node_modules .architecture/package-lock.json

test:
	@echo "Testing..."
	@./.scripts/test.sh

build:
	@echo "👩‍🏭 Building..."
	@./.scripts/build.sh

plan: check build
	@echo "🌱 Plan architecture"
	@./.scripts/plan.sh

check:
	@npm run clean
