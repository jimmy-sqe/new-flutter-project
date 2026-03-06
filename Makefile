sync:
	@melos bootstrap
	@melos run l10n
	@melos run force_build_all

gen_env:
	dart pub get --directory=tools/gen_env
	dart run tools/gen_env/lib/main.dart

test:
	@melos run test

format:
	@melos run format

analyze:
	@melos run analyze

lint:
	@melos run lint

clean_all:
	@melos run clean_all

force_build_all:
	@melos run force_build_all

force_build_app:
	@melos run force_build_app

force_build_domain:
	@melos run force_build_domain

force_build_data:
	@melos run force_build_data

force_build_shared:
	@melos run force_build_shared

l10n:
	@melos run l10n
