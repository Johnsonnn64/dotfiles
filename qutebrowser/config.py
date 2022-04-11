# Autogenerated config.py
#
# NOTE: config.py is intended for advanced users who are comfortable
# with manually migrating the config file on qutebrowser upgrades. If
# you prefer, you can also configure qutebrowser using the
# :set/:bind/:config-* commands without having to write a config.py
# file.
#
# Documentation:
#   qute://help/configuring.html
#   qute://help/settings.html

# Change the argument to True to still load settings configured via autoconfig.yml
config.load_autoconfig(False)

# When to find text on a page case-insensitively.
# Type: IgnoreCase
# Valid values:
#   - always: Search case-insensitively.
#   - never: Search case-sensitively.
#   - smart: Search case-sensitively if there are capital characters.
c.search.ignore_case = 'smart'

#  Setting dark mode
#  config.set("colors.webpage.darkmode.enabled", True)

# Which cookies to accept. With QtWebEngine, this setting also controls
# other features with tracking capabilities similar to those of cookies;
# including IndexedDB, DOM storage, filesystem API, service workers, and
# AppCache. Note that with QtWebKit, only `all` and `never` are
# supported as per-domain values. Setting `no-3rdparty` or `no-
# unknown-3rdparty` per-domain on QtWebKit will have the same effect as
# `all`. If this setting is used with URL patterns, the pattern gets
# applied to the origin/first party URL of the page making the request,
# not the request URL. With QtWebEngine 5.15.0+, paths will be stripped
# from URLs, so URL patterns using paths will not match. With
# QtWebEngine 5.15.2+, subdomains are additionally stripped as well, so
# you will typically need to set this setting for `example.com` when the
# cookie is set on `somesubdomain.example.com` for it to work properly.
# To debug issues with this setting, start qutebrowser with `--debug
# --logfilter network --debug-flag log-cookies` which will show all
# cookies being set.
# Type: String
# Valid values:
#   - all: Accept all cookies.
#   - no-3rdparty: Accept cookies from the same origin only. This is known to break some sites, such as GMail.
#   - no-unknown-3rdparty: Accept cookies from the same origin only, unless a cookie is already set for the domain. On QtWebEngine, this is the same as no-3rdparty.
#   - never: Don't accept cookies at all.
config.set('content.cookies.accept', 'all', 'chrome-devtools://*')

# Which cookies to accept. With QtWebEngine, this setting also controls
# other features with tracking capabilities similar to those of cookies;
# including IndexedDB, DOM storage, filesystem API, service workers, and
# AppCache. Note that with QtWebKit, only `all` and `never` are
# supported as per-domain values. Setting `no-3rdparty` or `no-
# unknown-3rdparty` per-domain on QtWebKit will have the same effect as
# `all`. If this setting is used with URL patterns, the pattern gets
# applied to the origin/first party URL of the page making the request,
# not the request URL. With QtWebEngine 5.15.0+, paths will be stripped
# from URLs, so URL patterns using paths will not match. With
# QtWebEngine 5.15.2+, subdomains are additionally stripped as well, so
# you will typically need to set this setting for `example.com` when the
# cookie is set on `somesubdomain.example.com` for it to work properly.
# To debug issues with this setting, start qutebrowser with `--debug
# --logfilter network --debug-flag log-cookies` which will show all
# cookies being set.
# Type: String
# Valid values:
#   - all: Accept all cookies.
#   - no-3rdparty: Accept cookies from the same origin only. This is known to break some sites, such as GMail.
#   - no-unknown-3rdparty: Accept cookies from the same origin only, unless a cookie is already set for the domain. On QtWebEngine, this is the same as no-3rdparty.
#   - never: Don't accept cookies at all.
config.set('content.cookies.accept', 'all', 'devtools://*')

# Value to send in the `Accept-Language` header. Note that the value
# read from JavaScript is always the global value.
# Type: String
config.set('content.headers.accept_language', '', 'https://matchmaker.krunker.io/*')

# User agent to send.  The following placeholders are defined:  *
# `{os_info}`: Something like "X11; Linux x86_64". * `{webkit_version}`:
# The underlying WebKit version (set to a fixed value   with
# QtWebEngine). * `{qt_key}`: "Qt" for QtWebKit, "QtWebEngine" for
# QtWebEngine. * `{qt_version}`: The underlying Qt version. *
# `{upstream_browser_key}`: "Version" for QtWebKit, "Chrome" for
# QtWebEngine. * `{upstream_browser_version}`: The corresponding
# Safari/Chrome version. * `{qutebrowser_version}`: The currently
# running qutebrowser version.  The default value is equal to the
# unchanged user agent of QtWebKit/QtWebEngine.  Note that the value
# read from JavaScript is always the global value. With QtWebEngine
# between 5.12 and 5.14 (inclusive), changing the value exposed to
# JavaScript requires a restart.
# Type: FormatString
config.set('content.headers.user_agent', 'Mozilla/5.0 ({os_info}) AppleWebKit/{webkit_version} (KHTML, like Gecko) {upstream_browser_key}/{upstream_browser_version} Safari/{webkit_version}', 'https://web.whatsapp.com/')

# User agent to send.  The following placeholders are defined:  *
# `{os_info}`: Something like "X11; Linux x86_64". * `{webkit_version}`:
# The underlying WebKit version (set to a fixed value   with
# QtWebEngine). * `{qt_key}`: "Qt" for QtWebKit, "QtWebEngine" for
# QtWebEngine. * `{qt_version}`: The underlying Qt version. *
# `{upstream_browser_key}`: "Version" for QtWebKit, "Chrome" for
# QtWebEngine. * `{upstream_browser_version}`: The corresponding
# Safari/Chrome version. * `{qutebrowser_version}`: The currently
# running qutebrowser version.  The default value is equal to the
# unchanged user agent of QtWebKit/QtWebEngine.  Note that the value
# read from JavaScript is always the global value. With QtWebEngine
# between 5.12 and 5.14 (inclusive), changing the value exposed to
# JavaScript requires a restart.
# Type: FormatString
config.set('content.headers.user_agent', 'Mozilla/5.0 ({os_info}; rv:90.0) Gecko/20100101 Firefox/90.0', 'https://accounts.google.com/*')

# User agent to send.  The following placeholders are defined:  *
# `{os_info}`: Something like "X11; Linux x86_64". * `{webkit_version}`:
# The underlying WebKit version (set to a fixed value   with
# QtWebEngine). * `{qt_key}`: "Qt" for QtWebKit, "QtWebEngine" for
# QtWebEngine. * `{qt_version}`: The underlying Qt version. *
# `{upstream_browser_key}`: "Version" for QtWebKit, "Chrome" for
# QtWebEngine. * `{upstream_browser_version}`: The corresponding
# Safari/Chrome version. * `{qutebrowser_version}`: The currently
# running qutebrowser version.  The default value is equal to the
# unchanged user agent of QtWebKit/QtWebEngine.  Note that the value
# read from JavaScript is always the global value. With QtWebEngine
# between 5.12 and 5.14 (inclusive), changing the value exposed to
# JavaScript requires a restart.
# Type: FormatString
config.set('content.headers.user_agent', 'Mozilla/5.0 ({os_info}) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99 Safari/537.36', 'https://*.slack.com/*')

# Load images automatically in web pages.
# Type: Bool
config.set('content.images', True, 'chrome-devtools://*')

# Load images automatically in web pages.
# Type: Bool
config.set('content.images', True, 'devtools://*')

# Enable JavaScript.
# Type: Bool
config.set('content.javascript.enabled', True, 'chrome-devtools://*')

# Enable JavaScript.
# Type: Bool
config.set('content.javascript.enabled', True, 'devtools://*')

# Enable JavaScript.
# Type: Bool
config.set('content.javascript.enabled', True, 'chrome://*/*')

# Enable JavaScript.
# Type: Bool
config.set('content.javascript.enabled', True, 'qute://*/*')

# Enable smooth scrolling for web pages. Note smooth scrolling does not
# work with the `:scroll-px` command.
# Type: Bool
c.scrolling.smooth = False

# editor
config.set('editor.command', ["st", "nvim", "-f", "{file}", "-c", ":call cursor({line},{column})"])
# file selector
config.set('fileselect.handler', 'external')
# folder select (xterm ranger)
# config.set('fileselect.folder.command', ["xterm", "-fa", "JetBrainsMonoMedium Nerd Font", "-fs", "9", "-geometry", "120x30+600+300", "-e", "ranger", "--choosedir={}"])
# file select single (xterm ranger)
# config.set('fileselect.single_file.command', ["xterm", "-fa", "JetBrainsMonoMedium Nerd Font", "-fs", "9", "-geometry", "120x30+600+300", "-e", "ranger", "--choosefile={}"])
# file select multiple (xterm ranger)
# config.set('fileselect.multiple_files.command', ["xterm", "-fa", "JetBrainsMonoMedium Nerd Font", "-fs", "9", "-geometry", "120x30+600+300", "-e", "ranger", "--choosefiles={}"])
# folder select (st lf)
config.set('fileselect.folder.command', ["st", "-n", "fcen", "-g", "120x30", "-e", "lfrun", "-last-dir-path={}"])
# file select single (st lf)
config.set('fileselect.single_file.command', ["st", "-n", "fcen", "-g", "120x30", "-e", "lfrun", "-selection-path={}"])
# file select multiple (st lf)
config.set('fileselect.multiple_files.command', ["st", "-n", "fcen", "-g", "120x30", "-e", "lfrun", "-selection-path={}"])

#fonts
config.set('fonts.default_family', 'JetBrainsMonoMedium Nerd Font')
config.set('fonts.default_size', '9pt')

# Default zoom
config.set('zoom.default', "80%")

# Start page
config.set('url.start_pages', 'https://start.duckduckgo.com')

# focus next
config.set('tabs.select_on_remove', 'last-used')

# Color settings

# completion odd bg
config.set('colors.completion.odd.bg', '#4C566A')
# completion evenbg
config.set('colors.completion.even.bg', '#3B4252')
# completion select
config.set('colors.completion.item.selected.bg', '#EBC8BC')
# conpletion category
#  config.set('colors.completion.category.bg', 'qlineargradient(x1:0, y1:0, x2:0, y2:1, stop:0 #888888, stop:1 #505050)')
config.set('colors.completion.category.bg', '#2E3440')
# tabs odd bg
config.set('colors.tabs.odd.bg', '#4C566A')
# tabs odd selected bg/fg
config.set('colors.tabs.selected.odd.bg', '#EBCB8B')
config.set('colors.tabs.selected.odd.fg', '#3B4252')
# tabs even bg
config.set('colors.tabs.even.bg', '#3B4252')
# tabs even selected bg/fg
config.set('colors.tabs.selected.even.bg', '#EBCB8B')
config.set('colors.tabs.selected.even.fg', '#3B4252')
# red indicator
config.set('colors.tabs.indicator.error', '#BF616A')
# blue indicator
config.set('colors.tabs.indicator.start', '#81A1C1')
# green indicator
config.set('colors.tabs.indicator.stop', '#A3BE8C')
# statusbar bg
config.set('colors.statusbar.command.bg', '#2E3440')
# statusbar caret
config.set('colors.statusbar.caret.bg', '#B48EAD')
# statusbar insert
config.set('colors.statusbar.insert.bg', '#A3BE8C')
# statusbar normal
config.set('colors.statusbar.normal.bg', '#191D26')
# statusbar passthrough
config.set('colors.statusbar.passthrough.bg', '#81A1C1')
# status url fg
config.set('colors.statusbar.url.success.https.fg', '#A3BE8C')
# status hover url fg
config.set('colors.statusbar.url.hover.fg', '#88C0D0')

# Completion bar settings

# Height
config.set('completion.height', '35%')
# Completion list order
config.set('completion.open_categories', ["bookmarks", "quickmarks", "history", "searchengines", "filesystem"])
# Scrollbar (off)
config.set('completion.scrollbar.width', 0)
# CMD history list size
config.set('completion.cmd_history_max_items', 20)
# Web history list size
config.set('completion.web_history.max_items', 50)

# Access Clipboard
config.set('content.javascript.can_access_clipboard', True)

# view PDF from web
config.set('content.pdfjs', True)

# Wait for download to disappear
config.set('downloads.remove_finished', 20000)

# Keyhint delay
config.set('keyhint.delay', 0)

# Spell check
config.set('spellcheck.languages', ["en-US"])

# Hint key
config.set('hints.chars', 'asdfjkl')

# Bindings for normal mode
config.bind('xb', 'config-cycle statusbar.show never always ')
config.bind('xt', 'config-cycle tabs.show never always')
config.bind('xx', 'config-cycle statusbar.show never always;;config-cycle tabs.show never always')

config.set('content.fullscreen.window', True)

# config.set('colors.webpage.darkmode.enabled', True)

config.set('content.autoplay', False)

config.set('hints.find_implementation', 'javascript')

# remove scroll to tabchangeDetails
config.set('tabs.mousewheel_switching', False)

config.set('downloads.location.directory', '/home/john/personal/')
