// Further reading:

// http://kb.mozillazine.org/About:config_entries (Outdated)
// http://thesimplecomputer.info/tscs-firefox-tweak-guide
// https://www.privacytools.io/#about_config

// ----------------------------------------------------

// SPEED

// (Default values from Tor Browser 4.5.3:)

user_pref('network.http.pipelining', true);
user_pref('network.http.pipelining.abtest', false);
user_pref('network.http.pipelining.aggressive', true);
user_pref('network.http.pipelining.max-optimistic-requests', 3);
user_pref('network.http.pipelining.maxrequests', 12);
user_pref('network.http.pipelining.maxsize', 300000);
user_pref('network.http.pipelining.read-timeout', 60000);
user_pref('network.http.pipelining.reschedule-on-timeout', true);
user_pref('network.http.pipelining.reschedule-timeout', 15000);
user_pref('network.http.pipelining.ssl', true);
user_pref('network.http.proxy.pipelining', true);

user_pref('network.http.max-connections', 256);
user_pref('network.http.max-persistent-connections-per-proxy', 256);
user_pref('network.http.max-persistent-connections-per-server', 6);

user_pref('network.http.redirection-limit', 20);
user_pref('network.http.fast-fallback-to-IPv4', true);
user_pref('network.dns.disablePrefetch', true);
user_pref('network.prefetch-next', true);

// (End of Tor default values)

// Enable new cache:
// https://bugzilla.mozilla.org/show_bug.cgi?id=913807
user_pref('browser.cache.use_new_backend', 1);

// ----------------------------------------------------

// SECURITY/PRIVACY

// Disable WebRTC (extremely important for VPN users - WebRTC *will* leak your real IP address):
user_pref('media.peerconnection.enabled', false);
user_pref('media.peerconnection.use_document_iceservers', false);

// Disable DNS proxy bypass:
// http://kb.mozillazine.org/Network.proxy.socks_remote_dns
user_pref('network.proxy.socks_remote_dns', true);

// Disable IPv6:
// http://kb.mozillazine.org/Network.dns.disableIPv6
user_pref('network.dns.disableIPv6', true);

// Disable crash reporting:
// http://kb.mozillazine.org/Breakpad.reportURL
user_pref('breakpad.reportURL', '');

// Disable sending pings:
// http://kb.mozillazine.org/Browser.send_pings
// http://kb.mozillazine.org/Browser.send_pings.require_same_host
user_pref('browser.send_pings', false);
user_pref('browser.send_pings.require_same_host', true);

// Enable tracking protection:
user_pref('privacy.donottrackheader.enabled', true);
user_pref('privacy.donottrackheader.value', 1);
user_pref('privacy.trackingprotection.enabled', true);

// Disable geolocation:
user_pref('geo.enabled', false);
user_pref('geo.wifi.uri', '');

// Disable geotargeting:
user_pref('browser.search.geoSpecificDefaults', false);
user_pref('browser.search.geoSpecificDefaults.url', '');
user_pref('browser.search.geoip.url', '');

// Disable telemetry:
user_pref('toolkit.telemetry.enabled', false);
user_pref('toolkit.telemetry.server', '');

// Disable 'safe browsing' aka. Google tracking/logging:
user_pref('browser.safebrowsing.downloads.enabled', false);
user_pref('browser.safebrowsing.downloads.remote.enabled', false);
user_pref('browser.safebrowsing.enabled', false);
user_pref('browser.safebrowsing.maleware.enabled', false);

// Type 'google' in about:config and delete most of the links (the ones that won't break anything, that's up to you).
// Also search through these to delete links from:
// browser.contentHandlers
// browser.safebrowsing
// browser.search
// gecko.handlerService

// Disable WebGL:
// https://security.stackexchange.com/questions/13799/is-webgl-a-security-concern
user_pref('webgl.disabled', true);

// Install unsigned addons in Aurora/Dev-Edition/etc (needed for Privacy Badger, HTTPS Everywhere, etc.):
user_pref('xpinstall.signatures.required', false);

// ----------------------------------------------------

// APPEARANCE

// Show full URLs:
user_pref('browser.urlbar.trimURLs', false);

// Revert to old search bar layout:
user_pref('browser.search.showOneOffButtons', false);

// Remove "(site) is now fullscreen" nag message and make it faster:
user_pref('full-screen-api.approval-required', false);
user_pref('browser.fullscreen.animate', false);

// De-crap new tab page:
user_pref('browser.newtabpage.directory.ping', '');
user_pref('browser.newtabpage.directory.source', '');
user_pref('browser.newtabpage.enabled', false);
user_pref('browser.newtabpage.enhanced', false);

// Disable tab animation:
// http://www.askvg.com/how-to-disable-animation-while-opening-new-tab-in-mozilla-firefox-4-0/
user_pref('browser.tabs.animate', false);

// Speed up security delay when installing add-ons:
user_pref('security.dialog_enable_delay', 400);

// Enable eyedropper in dev tools:
user_pref('devtools.command-button-eyedropper.enabled', true);

// Dark theme for dev tools:
user_pref('devtools.theme', dark);

// ----------------------------------------------------

// BLOATWARE

// Disable 'Reader Mode':
user_pref('reader.parse-on-load.enabled', false);
user_pref('readinglist.server', '');

// Disable 'Pocket':
user_pref('browser.pocket.api', '');
user_pref('browser.pocket.enabled', false);
user_pref('browser.pocket.site', '');

// Disable 'Firefox Hello':
// https://www.mozilla.org/en-US/privacy/firefox-hello/
user_pref('loop.enabled', false);

// Disable 'Social' crap:
user_pref('social.directories', '');
user_pref('social.remote-install.enabled', false);
user_pref('social.shareDirectory', '');
user_pref('social.toast-notifications.enabled', false);
user_pref('social.whitelist', '');

// Disable PDF reader:
user_pref(pdfjs.disabled, true)
