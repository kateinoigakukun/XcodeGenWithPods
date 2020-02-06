bootstrap:
	diff Podfile.lock Pods/Manifest.lock >& /dev/null || \
		bundle exec pod install || \
		bundle exec pod install --repo-update || \
		(bundle exec pod repo remove master && bundle exec pod install)
	xcodegen
