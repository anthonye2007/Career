#!/bin/bash
success_text() {
	echo -e "\x1B[32m -- SUCCESS: ${1}\x1B[0m"
}

fail_text() {
	echo -e "\x1B[31m -- FAIL: ${1}\x1B[0m"
}

open_test_text() {
	echo "=================================================="
	echo -e "\x1B[1m${1}\x1B[0m"
	echo "--------------------------------------------------"
}

close_test_text() {
	echo "=================================================="
	echo
}

open_test_text "Check that Ruby is installed"
if $( ruby -v > /dev/null ); then
	success_text "Ruby version $(ruby -v | awk '{ print $2 }') installed"
else
	fail_text "ruby -v failed. Make sure Ruby is installed and set up"
	exit 1
fi
close_test_text

open_test_text "Check that Xcode is installed"
if $( xcodebuild -version > /dev/null 2>&1 ); then
	success_text "$(xcodebuild -version | head -n 1) installed"
else
	fail_text "xcodebuild failed. Make sure Xcode is installed."
	exit 1
fi
close_test_text

open_test_text "Check for Bundler"
if ! $( gem list | grep "bundler" > /dev/null ); then
	echo "-- Bundler not detected. Attempting to install Bundler..."
	gem install bundler || exit 1
fi

bundler_version=$(gem list | grep "bundler" | awk '{ print $2 }' | tr -d '()')
success_text "Bundler version $bundler_version is installed."
close_test_text

open_test_text "Install RubyGems"
bundle install
close_test_text

echo "=================================================="
echo -e "\x1B[32mINITIAL SETUP SUCCESSFUL\x1B[0m"
echo "=================================================="
