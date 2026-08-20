package com.appsgeyser.multiTabApp.configuration;

import com.appnext.ads.fullscreen.RewardedVideo;
import com.appsgeyser.multiTabApp.MainNavigationActivity;
import com.appsgeyser.multiTabApp.configuration.UrlBarMenuButton;
import com.appsgeyser.multiTabApp.configuration.WebWidgetConfiguration;
import com.appsgeyser.multiTabApp.controllers.WidgetsController;
import com.appsgeyser.multiTabApp.model.WidgetEntity;
import com.appsgeyser.multiTabApp.ui.views.TabContent;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.onesignal.OSNotificationFormatHelper;
import org.apache.ldap.server.jndi.JavaLdapSupport;
import org.xml.sax.Attributes;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;
/* loaded from: classes2.dex */
public class XMLConfigurationHandler extends DefaultHandler {
    private static final String PROP_FILE = "file";
    private static final String PROP_ICON = "icon";
    private static final String PROP_IMAGE = "image";
    private static final String PROP_NAME = "name";
    private static final String PROP_PATTERN = "pattern";
    private static final String PROP_REGEXP = "regexp";
    private static final String PROP_TITLE = "title";
    private static final String PROP_URL = "url";
    private static final String SHARE_EXTRA_LINK = "shareExtraLink";
    private static final String TAG_ACCEPT_COOKIE = "acceptCookie";
    private static final String TAG_AFFILIATE = "affiliate";
    private static final String TAG_BANNER_POSITION = "bannerPosition";
    private static final String TAG_BLOCK_APP_FROM_SLEEP = "preventFromSleep";
    private static final String TAG_BUTTON = "button";
    private static final String TAG_CONTENT = "content";
    private static final String TAG_CONTENT_HEIGHT = "height";
    private static final String TAG_CONTENT_PROTECTION = "contentProtection";
    private static final String TAG_CONTENT_WIDTH = "width";
    private static final String TAG_DOWNLOAD_ACTION = "downloadAction";
    private static final String TAG_ENABLE_FULLSCREEN_BANNER = "enableFullScreenBanner";
    private static final String TAG_ENABLE_HIDE_TAB_BAR = "enableHideTabBar";
    private static final String TAG_ENABLE_HIDE_URL_BAR = "enableHideUrlBar";
    private static final String TAG_ENABLE_ON_EXIT_FULLSCREEN_BANNER = "enableOnExitFullScreenBanner";
    private static final String TAG_ENABLE_URL_BAR = "enableUrlBar";
    private static final String TAG_FULL_SCREEN_MODE = "fullScreenMode";
    private static final String TAG_GET_STRING = "getString";
    private static final String TAG_ID = "id";
    private static final String TAG_INJECT_JS = "injectJS";
    private static final String TAG_IS_ABOUT_SCREEN_ENABLED = "enableAboutScreen";
    private static final String TAG_IS_REDIRECT_ENABLED = "enableRedirection";
    private static final String TAG_LINK = "link";
    private static final String TAG_LOADING_CURTAIN = "loadingCurtain";
    private static final String TAG_LOCATON_URL = "locationUrl";
    private static final String TAG_LOGIN = "login";
    private static final String TAG_NAME = "name";
    private static final String TAG_PASSWORD = "password";
    private static final String TAG_PUBLISHER_NAME = "publisher";
    private static final String TAG_RATE_ITEM_VISIBILITY = "rateItemVisibility";
    private static final String TAG_REGISTERED_URL = "registeredUrl";
    private static final String TAG_SCRIPT = "script";
    private static final String TAG_SHOW_ABOUT_MENU_ITEM = "showAboutMenuItem";
    private static final String TAG_SHOW_AS_TAB = "showAsTab";
    private static final String TAG_SHOW_DOWNLOADS_LIST = "showDownloadList";
    private static final String TAG_SHOW_EXIT_MENU_ITEM = "showExitMenuItem";
    private static final String TAG_SHOW_INAPPS_MENU_ITEM = "showInAppsMenuItem";
    private static final String TAG_SHOW_REFRESH_MENU_ITEM = "showRefreshMenuItem";
    private static final String TAG_SHOW_SEARCH_NOTICE = "showSearchNotice";
    private static final String TAG_SHOW_SETTINGS = "showSettings";
    private static final String TAG_SHOW_SHARE_MENU_ITEM = "showShareMenuItem";
    private static final String TAG_SHOW_STARTUP_CONFIRMATION_DIALOG = "showStartupConfirmationDialog";
    private static final String TAG_SPLASH_SCREEN = "splashScreen";
    private static final String TAG_TABS_POSITION = "tabsPosition";
    private static final String TAG_TAB_ICON = "tabIcon";
    private static final String TAG_TAB_ID = "tabId";
    private static final String TAG_TAB_NAME = "tabName";
    private static final String TAG_TAB_TYPE = "tabType";
    private static final String TAG_THEME = "theme";
    private static final String TAG_UPDATE = "update";
    private static final String TAG_URL_BAR_MENU_ITEMS = "urlBarMenuItems";
    private static final String TAG_URL_BAR_STYLE = "urlBarStyle";
    private static final String TAG_USAGE = "usage";
    private static final String TAG_USER_AGENT = "userAgent";
    private static final String TAG_USER_INTERFACE = "userInterface";
    private static final String TAG_WIDGET_NAME = "widgetName";
    private StringBuilder builder;
    private WebWidgetConfiguration webWidgetConfiguration;
    private WidgetsController widgetsController;
    private String current2ndParentTag = "";
    private String currentParentTag = "";
    private Boolean inInjectJsTag = false;
    private Boolean scriptTagsFound = false;
    private WidgetEntity _currentWidgetEntity = null;

    /* JADX INFO: Access modifiers changed from: package-private */
    public XMLConfigurationHandler(WebWidgetConfiguration webWidgetConfiguration, WidgetsController widgetsController) {
        this.webWidgetConfiguration = webWidgetConfiguration;
        this.widgetsController = widgetsController;
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void characters(char[] cArr, int i, int i2) throws SAXException {
        super.characters(cArr, i, i2);
        String trim = String.copyValueOf(cArr, i, i2).trim();
        if (trim.length() != 0) {
            this.builder.append(trim);
        }
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void startDocument() throws SAXException {
        super.startDocument();
        this.builder = new StringBuilder();
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void startElement(String str, String str2, String str3, Attributes attributes) throws SAXException {
        String value;
        super.startElement(str, str2, str3, attributes);
        if (str2.equalsIgnoreCase(TAG_FULL_SCREEN_MODE)) {
            this.current2ndParentTag = str2;
        } else if (str2.equalsIgnoreCase(TAG_REGISTERED_URL)) {
            this.currentParentTag = str2;
        } else if (str2.equalsIgnoreCase(TAG_USAGE)) {
            this.currentParentTag = str2;
        } else if (str2.equalsIgnoreCase(TAG_LOCATON_URL)) {
            this.currentParentTag = str2;
        } else if (str2.equalsIgnoreCase("content")) {
            this.currentParentTag = str2;
            this._currentWidgetEntity = new WidgetEntity();
        } else if (str2.equalsIgnoreCase(TAG_CONTENT_PROTECTION)) {
            this.currentParentTag = str2;
        } else if (str2.equalsIgnoreCase(TAG_AFFILIATE)) {
            this.currentParentTag = str2;
        } else if (str2.equalsIgnoreCase(TAG_INJECT_JS)) {
            this.inInjectJsTag = true;
        } else if (str2.equalsIgnoreCase(TAG_SCRIPT)) {
            String value2 = attributes.getValue(PROP_PATTERN);
            String value3 = attributes.getValue(PROP_REGEXP);
            String value4 = attributes.getValue(PROP_FILE);
            if (value4 == null || this._currentWidgetEntity == null || !this.inInjectJsTag.booleanValue()) {
                return;
            }
            this._currentWidgetEntity.addScript(new IncludeScriptConfigEntity(value2, value3, value4));
            this.scriptTagsFound = true;
        } else if (!str2.equalsIgnoreCase(TAG_URL_BAR_MENU_ITEMS)) {
            if (this.currentParentTag.equalsIgnoreCase(TAG_URL_BAR_MENU_ITEMS) && str2.equalsIgnoreCase(TAG_BUTTON)) {
                String value5 = attributes.getValue("name");
                if (value5.equalsIgnoreCase("back")) {
                    this.webWidgetConfiguration.addUrlBarMenuButton(new UrlBarMenuButton(UrlBarMenuButton.UrlBarMenuButtonTypes.BACK));
                } else if (value5.equalsIgnoreCase("forward")) {
                    this.webWidgetConfiguration.addUrlBarMenuButton(new UrlBarMenuButton(UrlBarMenuButton.UrlBarMenuButtonTypes.FORWARD));
                } else if (value5.equalsIgnoreCase("refresh")) {
                    this.webWidgetConfiguration.addUrlBarMenuButton(new UrlBarMenuButton(UrlBarMenuButton.UrlBarMenuButtonTypes.REFRESH));
                } else if (value5.equalsIgnoreCase("request_desktop")) {
                    this.webWidgetConfiguration.addUrlBarMenuButton(new UrlBarMenuButton(UrlBarMenuButton.UrlBarMenuButtonTypes.REQUEST_DESKTOP));
                } else if (value5.equalsIgnoreCase("add_to_home")) {
                    this.webWidgetConfiguration.addUrlBarMenuButton(new UrlBarMenuButton(UrlBarMenuButton.UrlBarMenuButtonTypes.ADD_TO_HOME));
                } else if (value5.equalsIgnoreCase("home")) {
                    this.webWidgetConfiguration.addUrlBarMenuButton(new UrlBarMenuButton(UrlBarMenuButton.UrlBarMenuButtonTypes.HOME));
                } else if (value5.equalsIgnoreCase("downloads_list")) {
                    this.webWidgetConfiguration.addUrlBarMenuButton(new UrlBarMenuButton(UrlBarMenuButton.UrlBarMenuButtonTypes.DOWNLOADS_LIST));
                } else if (value5.equalsIgnoreCase(TAG_LINK)) {
                    this.webWidgetConfiguration.addUrlBarMenuButton(new UrlBarMenuLinkButton(attributes.getValue("title"), attributes.getValue("url")));
                } else if (value5.equalsIgnoreCase(PROP_ICON)) {
                    this.webWidgetConfiguration.addUrlBarMenuButton(new UrlBarIcon(attributes.getValue("title"), attributes.getValue("url"), attributes.getValue(PROP_ICON)));
                }
            } else if (!str2.equalsIgnoreCase(TAG_SPLASH_SCREEN) || (value = attributes.getValue("image")) == null) {
            } else {
                this.webWidgetConfiguration.setSplashScreen(value);
            }
        } else {
            this.currentParentTag = str2;
        }
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void endElement(String str, String str2, String str3) throws SAXException {
        super.endElement(str, str2, str3);
        if (str2.equalsIgnoreCase(TAG_FULL_SCREEN_MODE)) {
            this.current2ndParentTag = "";
        } else if (!str2.equalsIgnoreCase(TAG_REGISTERED_URL) && !str2.equalsIgnoreCase(TAG_USAGE) && !str2.equalsIgnoreCase(TAG_LOCATON_URL) && !str2.equalsIgnoreCase("content") && !str2.equalsIgnoreCase(TAG_CONTENT_PROTECTION) && !str2.equalsIgnoreCase(TAG_AFFILIATE) && !str2.equalsIgnoreCase(TAG_URL_BAR_MENU_ITEMS)) {
            if (!this.current2ndParentTag.equalsIgnoreCase(TAG_FULL_SCREEN_MODE)) {
                if (!this.currentParentTag.equalsIgnoreCase(TAG_REGISTERED_URL)) {
                    if (!this.currentParentTag.equalsIgnoreCase(TAG_USAGE)) {
                        if (this.currentParentTag.equalsIgnoreCase(TAG_LOCATON_URL)) {
                            if (str2.equalsIgnoreCase(TAG_LINK)) {
                                this.webWidgetConfiguration.setLocationUrl(this.builder.toString());
                            }
                        } else if (str2.equalsIgnoreCase("id")) {
                            this.webWidgetConfiguration.setApplicationId(Integer.parseInt(this.builder.toString().replaceAll("\n", "").replaceAll("\t", "")));
                        } else if (!str2.equalsIgnoreCase(TAG_WIDGET_NAME)) {
                            if (this.currentParentTag.equalsIgnoreCase(TAG_CONTENT_PROTECTION)) {
                                if (str2.equalsIgnoreCase("login")) {
                                    this.webWidgetConfiguration.setHttpAccessLogin(this.builder.toString());
                                } else if (str2.equalsIgnoreCase(TAG_PASSWORD)) {
                                    this.webWidgetConfiguration.setHttpAccessPassword(this.builder.toString());
                                }
                            } else if (str2.equalsIgnoreCase(TAG_USER_INTERFACE)) {
                                String sb = this.builder.toString();
                                if (sb.equals("standard")) {
                                    this.webWidgetConfiguration.setApplicationMode(MainNavigationActivity.ApplicationMode.COMMON);
                                } else if (sb.equals(OSNotificationFormatHelper.PAYLOAD_OS_ROOT_CUSTOM)) {
                                    this.webWidgetConfiguration.setApplicationMode(MainNavigationActivity.ApplicationMode.CUSTOM);
                                }
                            } else if (str2.equalsIgnoreCase(TAG_RATE_ITEM_VISIBILITY)) {
                                if (this.builder.toString().equalsIgnoreCase("true")) {
                                    this.webWidgetConfiguration.setRateItemVisibility(true);
                                } else {
                                    this.webWidgetConfiguration.setRateItemVisibility(false);
                                }
                            } else if (str2.equalsIgnoreCase(TAG_ACCEPT_COOKIE)) {
                                if (this.builder.toString().equalsIgnoreCase("true")) {
                                    this.webWidgetConfiguration.setAcceptCookie(true);
                                } else {
                                    this.webWidgetConfiguration.setAcceptCookie(false);
                                }
                            } else if (str2.equalsIgnoreCase(TAG_BLOCK_APP_FROM_SLEEP)) {
                                if (this.builder.toString().equalsIgnoreCase("true")) {
                                    this.webWidgetConfiguration.setPreventFromSleep(true);
                                } else {
                                    this.webWidgetConfiguration.setPreventFromSleep(false);
                                }
                            } else if (str2.equalsIgnoreCase(TAG_SHOW_REFRESH_MENU_ITEM)) {
                                if (this.builder.toString().equalsIgnoreCase("true")) {
                                    this.webWidgetConfiguration.setShowRefreshMenuItem(true);
                                } else {
                                    this.webWidgetConfiguration.setShowRefreshMenuItem(false);
                                }
                            } else if (str2.equalsIgnoreCase(TAG_SHOW_SHARE_MENU_ITEM)) {
                                if (this.builder.toString().equalsIgnoreCase("true")) {
                                    this.webWidgetConfiguration.setShowShareMenuItem(true);
                                } else {
                                    this.webWidgetConfiguration.setShowShareMenuItem(false);
                                }
                            } else if (str2.equalsIgnoreCase(TAG_SHOW_DOWNLOADS_LIST)) {
                                if (this.builder.toString().equalsIgnoreCase("true")) {
                                    this.webWidgetConfiguration.setShowDownloadList(true);
                                } else {
                                    this.webWidgetConfiguration.setShowDownloadList(false);
                                }
                            } else if (str2.equalsIgnoreCase(TAG_SHOW_ABOUT_MENU_ITEM)) {
                                if (this.builder.toString().equalsIgnoreCase("true")) {
                                    this.webWidgetConfiguration.setShowAboutMenuItem(true);
                                } else {
                                    this.webWidgetConfiguration.setShowAboutMenuItem(false);
                                }
                            } else if (str2.equalsIgnoreCase(TAG_SHOW_INAPPS_MENU_ITEM)) {
                                if (this.builder.toString().equalsIgnoreCase("true")) {
                                    this.webWidgetConfiguration.setShowInAppMenuItem(true);
                                } else {
                                    this.webWidgetConfiguration.setShowInAppMenuItem(false);
                                }
                            } else if (str2.equalsIgnoreCase(TAG_SHOW_EXIT_MENU_ITEM)) {
                                if (this.builder.toString().equalsIgnoreCase("true")) {
                                    this.webWidgetConfiguration.setShowExitMenuItem(true);
                                } else {
                                    this.webWidgetConfiguration.setShowExitMenuItem(false);
                                }
                            } else if (str2.equalsIgnoreCase(TAG_SHOW_SETTINGS)) {
                                if (this.builder.toString().equalsIgnoreCase("true")) {
                                    this.webWidgetConfiguration.setShowSettings(true);
                                } else {
                                    this.webWidgetConfiguration.setShowSettings(false);
                                }
                            } else if (str2.equalsIgnoreCase(SHARE_EXTRA_LINK)) {
                                this.webWidgetConfiguration.setShareExtraLink(this.builder.toString());
                            } else if (str2.equalsIgnoreCase(TAG_ENABLE_FULLSCREEN_BANNER)) {
                                this.webWidgetConfiguration.setFullscreenBannerEnabled(this.builder.toString().equalsIgnoreCase("true"));
                            } else if (str2.equalsIgnoreCase(TAG_ENABLE_ON_EXIT_FULLSCREEN_BANNER)) {
                                this.webWidgetConfiguration.setOnExitFullscreenBannerEnabled(this.builder.toString().equalsIgnoreCase("true"));
                            } else if (str2.equalsIgnoreCase(TAG_SHOW_STARTUP_CONFIRMATION_DIALOG)) {
                                this.webWidgetConfiguration.setShowStartupConfirmationDialog(this.builder.toString().equalsIgnoreCase("true"));
                            } else if (str2.equalsIgnoreCase(TAG_IS_ABOUT_SCREEN_ENABLED)) {
                                this.webWidgetConfiguration.setIsAboutScreenEnabled(this.builder.toString().equalsIgnoreCase("true"));
                            } else if (str2.equalsIgnoreCase(TAG_THEME)) {
                                String sb2 = this.builder.toString();
                                if (sb2.equalsIgnoreCase("ACTION_BAR")) {
                                    this.webWidgetConfiguration.setApplicationTheme(WebWidgetConfiguration.ApplicationThemes.ACTION_BAR);
                                } else if (sb2.equalsIgnoreCase("NO_MENU")) {
                                    this.webWidgetConfiguration.setApplicationTheme(WebWidgetConfiguration.ApplicationThemes.NO_MENU);
                                } else {
                                    this.webWidgetConfiguration.setApplicationTheme(WebWidgetConfiguration.ApplicationThemes.SLIDER);
                                }
                            } else if (str2.equalsIgnoreCase(TAG_ENABLE_URL_BAR)) {
                                WebWidgetConfiguration.UrlBarStates urlBarStates = WebWidgetConfiguration.UrlBarStates.DISABLED;
                                if (this.builder.toString().equalsIgnoreCase("true")) {
                                    urlBarStates = WebWidgetConfiguration.UrlBarStates.ENABLED;
                                } else if (this.builder.toString().equalsIgnoreCase("on_external_urls")) {
                                    urlBarStates = WebWidgetConfiguration.UrlBarStates.ENABLED_ON_EXTERNAL_URLS;
                                }
                                this.webWidgetConfiguration.setUrlOverlayState(urlBarStates);
                            } else if (str2.equalsIgnoreCase(TAG_ENABLE_HIDE_URL_BAR)) {
                                WebWidgetConfiguration.UrlBarHide urlBarHide = WebWidgetConfiguration.UrlBarHide.ENABLED;
                                if (this.builder.toString().equalsIgnoreCase("false")) {
                                    urlBarHide = WebWidgetConfiguration.UrlBarHide.DISABLED;
                                }
                                this.webWidgetConfiguration.setUrlBarHide(urlBarHide);
                            } else if (str2.equalsIgnoreCase(TAG_SHOW_SEARCH_NOTICE)) {
                                if (this.builder.toString().equalsIgnoreCase("true")) {
                                    this.webWidgetConfiguration.setShowSearchNotice(true);
                                } else {
                                    this.webWidgetConfiguration.setShowSearchNotice(false);
                                }
                            } else if (str2.equalsIgnoreCase(TAG_URL_BAR_STYLE)) {
                                WebWidgetConfiguration.UrlBarStyles urlBarStyles = WebWidgetConfiguration.UrlBarStyles.BOTTOM;
                                if (this.builder.toString().equalsIgnoreCase(JavaLdapSupport.TOP_ATTR)) {
                                    urlBarStyles = WebWidgetConfiguration.UrlBarStyles.TOP;
                                }
                                this.webWidgetConfiguration.setUrlBarStyle(urlBarStyles);
                            } else if (str2.equalsIgnoreCase(TAG_TABS_POSITION)) {
                                WebWidgetConfiguration.TabsPositions tabsPositions = WebWidgetConfiguration.TabsPositions.TOP;
                                if (this.builder.toString().equalsIgnoreCase("bottom")) {
                                    tabsPositions = WebWidgetConfiguration.TabsPositions.BOTTOM;
                                } else if (this.builder.toString().equalsIgnoreCase("drawer")) {
                                    tabsPositions = WebWidgetConfiguration.TabsPositions.DRAWER;
                                } else if (this.builder.toString().equalsIgnoreCase("bottom_menu")) {
                                    tabsPositions = WebWidgetConfiguration.TabsPositions.BOTTOM_MENU;
                                }
                                this.webWidgetConfiguration.setTabsPosition(tabsPositions);
                            } else if (str2.equalsIgnoreCase(TAG_ENABLE_HIDE_TAB_BAR)) {
                                WebWidgetConfiguration.TabsEnabledHide tabsEnabledHide = WebWidgetConfiguration.TabsEnabledHide.ENABLED;
                                if (this.builder.toString().equalsIgnoreCase("false")) {
                                    tabsEnabledHide = WebWidgetConfiguration.TabsEnabledHide.DISABLED;
                                }
                                this.webWidgetConfiguration.setTabsEnabledHide(tabsEnabledHide);
                            } else if (!str2.equalsIgnoreCase(TAG_PUBLISHER_NAME)) {
                                if (this.currentParentTag.equalsIgnoreCase(TAG_AFFILIATE)) {
                                    if (str2.equalsIgnoreCase(TAG_GET_STRING)) {
                                        this.webWidgetConfiguration.setAffiliateString(this.builder.toString());
                                    }
                                } else if (str2.equalsIgnoreCase(TAG_IS_REDIRECT_ENABLED)) {
                                    if (this.builder.toString().equalsIgnoreCase("false")) {
                                        this.webWidgetConfiguration.setIsRedirectEnabled(WebWidgetConfiguration.RedirectionTypes.NO_REDIRECT);
                                    } else if (this.builder.toString().equalsIgnoreCase("true")) {
                                        this.webWidgetConfiguration.setIsRedirectEnabled(WebWidgetConfiguration.RedirectionTypes.REDIRECT_ALL);
                                    } else {
                                        this.webWidgetConfiguration.setIsRedirectEnabled(WebWidgetConfiguration.RedirectionTypes.REDIRECT_EXTERNAL);
                                    }
                                } else if (str2.equalsIgnoreCase(TAG_DOWNLOAD_ACTION)) {
                                    String lowerCase = this.builder.toString().toLowerCase();
                                    WebWidgetConfiguration.DownloadActions downloadActions = WebWidgetConfiguration.DownloadActions.DIALOG;
                                    if (lowerCase.equals(TtmlNode.TEXT_EMPHASIS_MARK_OPEN)) {
                                        downloadActions = WebWidgetConfiguration.DownloadActions.OPEN;
                                    } else if (lowerCase.equals("save")) {
                                        downloadActions = WebWidgetConfiguration.DownloadActions.SAVE;
                                    } else if (lowerCase.equals("dialog")) {
                                        downloadActions = WebWidgetConfiguration.DownloadActions.DIALOG;
                                    }
                                    this.webWidgetConfiguration.setDownloadAction(downloadActions);
                                }
                            } else {
                                this.webWidgetConfiguration.setPublisherName(this.builder.toString());
                            }
                        } else {
                            this.webWidgetConfiguration.setWidgetName(this.builder.toString());
                        }
                    } else if (str2.equalsIgnoreCase(TAG_LINK)) {
                        this.webWidgetConfiguration.setAddUsageUrl(this.builder.toString());
                    }
                } else if (str2.equalsIgnoreCase(TAG_LINK)) {
                    this.webWidgetConfiguration.setRegisteredUrl(this.builder.toString());
                }
            } else if (this.currentParentTag.equalsIgnoreCase("content")) {
                if (str2.equalsIgnoreCase("id")) {
                    WidgetEntity widgetEntity = this._currentWidgetEntity;
                    if (widgetEntity != null) {
                        widgetEntity.setId(this.builder.toString());
                    }
                } else if (str2.equalsIgnoreCase("name")) {
                    WidgetEntity widgetEntity2 = this._currentWidgetEntity;
                    if (widgetEntity2 != null) {
                        widgetEntity2.setName(this.builder.toString());
                    }
                } else if (str2.equalsIgnoreCase(TAG_LINK)) {
                    WidgetEntity widgetEntity3 = this._currentWidgetEntity;
                    if (widgetEntity3 != null) {
                        widgetEntity3.setLink(this.builder.toString());
                    }
                } else if (str2.equalsIgnoreCase(TAG_UPDATE)) {
                    if (this._currentWidgetEntity != null) {
                        if (this.builder.toString().length() > 0) {
                            this._currentWidgetEntity.setUpdateTime(Integer.parseInt(this.builder.toString()));
                        } else {
                            this._currentWidgetEntity.setUpdateTime(0);
                        }
                    }
                } else if (str2.equalsIgnoreCase("width")) {
                    WidgetEntity widgetEntity4 = this._currentWidgetEntity;
                    if (widgetEntity4 != null) {
                        widgetEntity4.setWidth(Integer.parseInt(this.builder.toString()));
                    }
                } else if (str2.equalsIgnoreCase("height")) {
                    WidgetEntity widgetEntity5 = this._currentWidgetEntity;
                    if (widgetEntity5 != null) {
                        widgetEntity5.setHeight(Integer.parseInt(this.builder.toString()));
                    }
                } else if (str2.equalsIgnoreCase(TAG_TAB_NAME)) {
                    WidgetEntity widgetEntity6 = this._currentWidgetEntity;
                    if (widgetEntity6 != null) {
                        widgetEntity6.setTabName(this.builder.toString());
                    }
                } else if (str2.equalsIgnoreCase(TAG_TAB_ICON)) {
                    WidgetEntity widgetEntity7 = this._currentWidgetEntity;
                    if (widgetEntity7 != null) {
                        widgetEntity7.setTabIcon(this.builder.toString());
                    }
                } else if (str2.equalsIgnoreCase(TAG_INJECT_JS)) {
                    if (this._currentWidgetEntity != null && !this.scriptTagsFound.booleanValue()) {
                        this._currentWidgetEntity.setInjectJS(this.builder.toString());
                    }
                    this.scriptTagsFound = false;
                    this.inInjectJsTag = false;
                } else if (str2.equalsIgnoreCase(TAG_LOADING_CURTAIN)) {
                    if (this._currentWidgetEntity != null) {
                        String sb3 = this.builder.toString();
                        WidgetEntity.LoadingCurtainType loadingCurtainType = WidgetEntity.LoadingCurtainType.NONE;
                        if (sb3.compareToIgnoreCase("none") == 0) {
                            loadingCurtainType = WidgetEntity.LoadingCurtainType.NONE;
                        } else if (sb3.compareToIgnoreCase(RewardedVideo.VIDEO_MODE_DEFAULT) == 0) {
                            loadingCurtainType = WidgetEntity.LoadingCurtainType.DEFAULT;
                        } else if (sb3.compareToIgnoreCase("banner") == 0) {
                            loadingCurtainType = WidgetEntity.LoadingCurtainType.BANNER;
                        } else if (sb3.compareToIgnoreCase(OSNotificationFormatHelper.PAYLOAD_OS_ROOT_CUSTOM) == 0) {
                            loadingCurtainType = WidgetEntity.LoadingCurtainType.CUSTOM;
                        }
                        this._currentWidgetEntity.setLoadingCurtainType(loadingCurtainType);
                    }
                } else if (str2.equalsIgnoreCase(TAG_TAB_TYPE)) {
                    if (this._currentWidgetEntity != null) {
                        String sb4 = this.builder.toString();
                        TabContent.TabType tabType = TabContent.TabType.WEB;
                        if (sb4.compareToIgnoreCase("web") == 0) {
                            tabType = TabContent.TabType.WEB;
                        } else if (sb4.compareToIgnoreCase("pdf") == 0) {
                            tabType = TabContent.TabType.PDF;
                        }
                        this._currentWidgetEntity.setTabType(tabType.toString());
                    }
                } else if (str2.equalsIgnoreCase(TAG_USER_AGENT)) {
                    WidgetEntity widgetEntity8 = this._currentWidgetEntity;
                    if (widgetEntity8 != null) {
                        widgetEntity8.setUserAgent(this.builder.toString());
                    }
                } else if (str2.equalsIgnoreCase(TAG_TAB_ID)) {
                    this._currentWidgetEntity.setTabId(this.builder.toString());
                } else if (str2.equalsIgnoreCase(TAG_SHOW_AS_TAB)) {
                    this._currentWidgetEntity.setShowAsTab(this.builder.toString().equalsIgnoreCase("true"));
                }
            }
        } else {
            this.currentParentTag = "";
            if (str2.equalsIgnoreCase("content")) {
                this.widgetsController.addWidget(this._currentWidgetEntity);
                this._currentWidgetEntity = null;
            }
        }
        this.builder.setLength(0);
    }

    public WebWidgetConfiguration getWebWidgetConfiguration() {
        return this.webWidgetConfiguration;
    }

    public WidgetsController getWidgetsController() {
        return this.widgetsController;
    }
}
