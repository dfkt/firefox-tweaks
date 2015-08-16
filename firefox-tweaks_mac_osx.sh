#!/bin/bash

# Set defaults for config
cat > /Applications/FirefoxAurora.app/Contents/Resources/defaults/pref/local-settings.js <<EOF
/*
 *
 * This script sets Firefox defaults as described here: https://github.com/dfkt/firefox-tweaks/blob/master/firefox-tweaks.txt
 * Inspired by https://twitter.com/dfkt
 * Firefox Tweaks – An attempt to make Firefox suck less
 *
 * */
pref("network.http.pipelining", true);
pref("network.http.pipelining.abtest", false);
pref("network.http.pipelining.aggressive", true);
pref("network.http.pipelining.max-optimistic-requests", 3);
pref("network.http.pipelining.maxrequests", 12);
pref("network.http.pipelining.maxsize", 300000);
pref("network.http.pipelining.read-timeout", 60000);
pref("network.http.pipelining.reschedule-on-timeout", true);
pref("network.http.pipelining.reschedule-timeout", 15000);
pref("network.http.pipelining.ssl", true);
pref("network.http.proxy.pipelining", true);
pref("network.http.max-connections", 256);
pref("network.http.max-persistent-connections-per-proxy", 256);
pref("network.http.max-persistent-connections-per-server", 6);
pref("network.http.redirection-limit", 20);
pref("network.http.fast-fallback-to-IPv4", true);
pref("network.dns.disablePrefetch", true);
pref("network.prefetch-next", true);
pref("browser.cache.use_new_backend", 1);
pref("media.peerconnection.enabled", false);
pref("media.peerconnection.use_document_iceservers", false);
pref("network.proxy.socks_remote_dns", true);
pref("network.dns.disableIPv6", true);
pref("breakpad.reportURL", "");
pref("browser.send_pings", false);
pref("browser.send_pings.require_same_host", true);
pref("privacy.donottrackheader.enabled", true);
pref("privacy.donottrackheader.value", 1);
pref("privacy.trackingprotection.enabled", true);
pref("geo.enabled", false);
pref("geo.wifi.uri", "");
pref("browser.search.geoSpecificDefaults", false);
pref("browser.search.geoSpecificDefaults.url", "");
pref("browser.search.geoip.url", "");
pref("toolkit.telemetry.enabled", false);
pref("toolkit.telemetry.server", "");
pref("browser.safebrowsing.downloads.enabled", false);
pref("browser.safebrowsing.downloads.remote.enabled", false);
pref("browser.safebrowsing.enabled", false);
pref("browser.safebrowsing.maleware.enabled", false);
pref("webgl.disabled", true);
pref("xpinstall.signatures.required", false);
pref("browser.urlbar.trimURLs", false);
pref("browser.search.showOneOffButtons", false);
pref("full-screen-api.approval-required", false);
pref("browser.fullscreen.animate", false);
pref("browser.newtabpage.directory.ping", "");
pref("browser.newtabpage.directory.source", "");
pref("browser.newtabpage.enabled", false);
pref("browser.newtabpage.enhanced", false);
pref("browser.tabs.animate", false);
pref("security.dialog_enable_delay", 400);
pref("devtools.command-button-eyedropper.enabled", true);
pref("devtools.theme", dark);
pref("reader.parse-on-load.enabled", false);
pref("readinglist.server", "");
pref("browser.pocket.api", "")
pref("browser.pocket.enabled", false);
pref("browser.pocket.site", "")
pref("loop.enabled", false);
pref("social.directories", "")
pref("social.remote-install.enabled", false);
pref("social.shareDirectory", "")
pref("social.toast-notifications.enabled", false);
pref("social.whitelist", "")
pref("pdfjs.disabled", false);
EOF

# not all configs are working well in the previous file
# thats why we have to set also check & change user specific files.

# !!! this is not working well so far !!!

# Check User config and apply changes if required
#FILES="$(find ~/Library/Application\ Support/Firefox/Profiles -name 'prefs.js')"
#for f in $FILES
#do
#  echo $f
#done

cat >> ~/Library/Application\ Support/Firefox/Profiles/tel1ptax.dev-edition-default/prefs.js <<EOF
user_pref("network.http.pipelining", true);
user_pref("network.http.pipelining.abtest", false);
user_pref("network.http.pipelining.aggressive", true);
user_pref("network.http.pipelining.max-optimistic-requests", 3);
user_pref("network.http.pipelining.maxrequests", 12);
user_pref("network.http.pipelining.maxsize", 300000);
user_pref("network.http.pipelining.read-timeout", 60000);
user_pref("network.http.pipelining.reschedule-on-timeout", true);
user_pref("network.http.pipelining.reschedule-timeout", 15000);
user_pref("network.http.pipelining.ssl", true);
user_pref("network.http.proxy.pipelining", true);
user_pref("network.http.max-connections", 256);
user_pref("network.http.max-persistent-connections-per-proxy", 256);
user_pref("network.http.max-persistent-connections-per-server", 6);
user_pref("network.http.redirection-limit", 20);
user_pref("network.http.fast-fallback-to-IPv4", true);
user_pref("network.dns.disablePrefetch", true);
user_pref("network.prefetch-next", true);
user_pref("browser.cache.use_new_backend", 1);
user_pref("media.peerconnection.enabled", false);
user_pref("media.peerconnection.use_document_iceservers", false);
user_pref("network.proxy.socks_remote_dns", true);
user_pref("network.dns.disableIPv6", true);
user_pref("breakpad.reportURL", "");
user_pref("browser.send_pings", false);
user_pref("browser.send_pings.require_same_host", true);
user_pref("privacy.donottrackheader.enabled", true);
user_pref("privacy.donottrackheader.value", 1);
user_pref("privacy.trackingprotection.enabled", true);
user_pref("geo.enabled", false);
user_pref("geo.wifi.uri", "");
user_pref("browser.search.geoSpecificDefaults", false);
user_pref("browser.search.geoSpecificDefaults.url", "");
user_pref("browser.search.geoip.url", "");
user_pref("toolkit.telemetry.enabled", false);
user_pref("toolkit.telemetry.server", "");
user_pref("browser.safebrowsing.downloads.enabled", false);
user_pref("browser.safebrowsing.downloads.remote.enabled", false);
user_pref("browser.safebrowsing.enabled", false);
user_pref("browser.safebrowsing.maleware.enabled", false);
user_pref("webgl.disabled", true);
user_pref("xpinstall.signatures.required", false);
user_pref("browser.urlbar.trimURLs", false);
user_pref("browser.search.showOneOffButtons", false);
user_pref("full-screen-api.approval-required", false);
user_pref("browser.fullscreen.animate", false);
user_pref("browser.newtabpage.directory.ping", "");
user_pref("browser.newtabpage.directory.source", "");
user_pref("browser.newtabpage.enabled", false);
user_pref("browser.newtabpage.enhanced", false);
user_pref("browser.tabs.animate", false);
user_pref("security.dialog_enable_delay", 400);
user_pref("devtools.command-button-eyedropper.enabled", true);
user_pref("devtools.theme", dark);
user_pref("reader.parse-on-load.enabled", false);
user_pref("readinglist.server", "");
user_pref("browser.pocket.api", " ")
user_pref("browser.pocket.enabled", false);
user_pref("browser.pocket.site", " ")
user_pref("loop.enabled", false);
user_pref("social.directories", " ")
user_pref("social.remote-install.enabled", false);
user_pref("social.shareDirectory", " ")
user_pref("social.toast-notifications.enabled", false);
user_pref("social.whitelist", "")
user_pref("pdfjs.disabled", false);
EOF
