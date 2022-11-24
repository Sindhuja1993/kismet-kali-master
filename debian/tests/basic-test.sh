#!/bin/sh

set -e

test_install_python3_kismetcapturefreaklabszigbee() {

    echo "Testing python3 package"
    for py in $(py3versions -r 2>/dev/null) ; do
	cd "$AUTOPKGTEST_TMP" ;
	echo "Testing with $py:" ;
	$py -c "import KismetCaptureFreaklabsZigbee; print(KismetCaptureFreaklabsZigbee)" ;
    done

}

test_install_python3_kismetcapturertl433() {

    echo "Testing python3 package"
    for py in $(py3versions -r 2>/dev/null) ; do
	cd "$AUTOPKGTEST_TMP" ;
	echo "Testing with $py:" ;
	$py -c "import KismetCaptureRtl433; print(KismetCaptureRtl433)" ;
    done

}

test_install_python3_kismetcapturertladsb() {

    echo "Testing python3 package"
    for py in $(py3versions -r 2>/dev/null) ; do
	cd "$AUTOPKGTEST_TMP" ;
	echo "Testing with $py:" ;
	$py -c "import KismetCaptureRtladsb; print(KismetCaptureRtladsb)" ;
    done

}

test_install_python3_kismetcapturertlamr() {

    echo "Testing python3 package"
    for py in $(py3versions -r 2>/dev/null) ; do
	cd "$AUTOPKGTEST_TMP" ;
	echo "Testing with $py:" ;
	$py -c "import KismetCaptureRtlamr; print(KismetCaptureRtlamr)" ;
    done

}
###################################
# Main
###################################

for function in "$@"; do
        $function
done
