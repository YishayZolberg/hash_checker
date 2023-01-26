File Hash Checker
This script is used to check and hash executable files in the current directory using bash scripting.

Usage
To use the script, navigate to the directory containing the executable files and run the script using the command below. The script will then hash each executable file using the sha256 algorithm and compare it to a pre-determined hash value. If the calculated hash value matches the pre-determined value, the script will print "PASS" along with the file name. If the calculated hash value does not match the pre-determined value, the script will print "FAIL" along with the file name.
look in the log file and the source code for more info.

Note
Make sure that the script has execute permission, if not you can run the command below to give execute permission
chmod +x script.sh
