package com.appsgeyser.multiTabApp.configuration;

import com.appsgeyser.multiTabApp.MainNavigationActivity;
import java.io.Serializable;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public class WebWidgetConfiguration implements Serializable {
    private static final String GUID_KEY_NAME = "AppGuidString";
    public static final String PUSH_ACCOUNT_NAME = "PushAccountName";
    private String addUsageUrl;
    private int applicationId;
    private int contentHeight;
    private int contentWidth;
    private String fullScreenModeUrl;
    private String httpAccessLogin;
    private String httpAccessPassword;
    private String locationUrl;
    private boolean preventFromSleep;
    private String registeredUrl;
    private boolean showAboutMenuItem;
    private boolean showDownloadList;
    private boolean showExitMenuItem;
    private boolean showInAppMenuItem;
    private boolean showRefreshMenuItem;
    private boolean showSettings;
    private boolean showShareMenuItem;
    private long updatePeriodOfFullScreenModeInMs;
    private long updatePeriodOfWidgetInMS;
    private String widgetName;
    private MainNavigationActivity.ApplicationMode appMode = MainNavigationActivity.ApplicationMode.UNKNOWN;
    private ApplicationThemes appTheme = ApplicationThemes.SLIDER;
    private TabsPositions tabsPosition = TabsPositions.TOP;
    private TabsEnabledHide tabsEnabledHide = TabsEnabledHide.DISABLED;
    private boolean rateItemVisibility = false;
    private boolean acceptCookie = true;
    private String affiliateGetString = "";
    private boolean showSearchNotice = false;
    private boolean fullScreenBannerEnabled = false;
    private boolean onExitFullScreenBannerEnabled = false;
    private String publisherName = "";
    private String appGuid = "";
    private String pushAccount = "";
    private RedirectionTypes isRedirectEnabled = RedirectionTypes.REDIRECT_ALL;
    private boolean isAboutScreenEnabled = true;
    private String shareExtraLink = "";
    private boolean showStartupConfirmationDialog = false;
    private boolean isSplashScreenEnabled = false;
    private DownloadActions downloadAction = DownloadActions.OPEN;
    private String splashScreenImage = "";
    private ArrayList<UrlBarMenuButton> urlBarMenuButtons = new ArrayList<>();
    private UrlBarStates urlOverlayEnabled = UrlBarStates.DISABLED;
    private UrlBarStyles urlBarStyle = UrlBarStyles.BOTTOM;
    private UrlBarHide urlBarHide = UrlBarHide.DISABLED;

    /* loaded from: classes2.dex */
    public enum ApplicationThemes {
        ACTION_BAR,
        SLIDER,
        NO_MENU
    }

    /* loaded from: classes2.dex */
    public enum DownloadActions {
        OPEN,
        SAVE,
        DIALOG
    }

    /* loaded from: classes2.dex */
    public enum RedirectionTypes {
        REDIRECT_ALL,
        REDIRECT_EXTERNAL,
        NO_REDIRECT
    }

    /* loaded from: classes2.dex */
    public enum TabsEnabledHide {
        ENABLED,
        DISABLED
    }

    /* loaded from: classes2.dex */
    public enum TabsPositions {
        TOP,
        BOTTOM,
        BOTTOM_MENU,
        DRAWER
    }

    /* loaded from: classes2.dex */
    public enum UrlBarHide {
        ENABLED,
        DISABLED
    }

    /* loaded from: classes2.dex */
    public enum UrlBarStates {
        ENABLED,
        ENABLED_ON_EXTERNAL_URLS,
        DISABLED
    }

    /* loaded from: classes2.dex */
    public enum UrlBarStyles {
        TOP,
        BOTTOM
    }

    public void addUrlBarMenuButton(UrlBarMenuButton urlBarMenuButton) {
        this.urlBarMenuButtons.add(urlBarMenuButton);
    }

    public RedirectionTypes getIsRedirectEnabled() {
        return this.isRedirectEnabled;
    }

    public void setIsRedirectEnabled(RedirectionTypes redirectionTypes) {
        this.isRedirectEnabled = redirectionTypes;
    }

    public ArrayList<UrlBarMenuButton> getUrlBarMenuButtons() {
        return this.urlBarMenuButtons;
    }

    public void setUrlBarMenuButtons(ArrayList<UrlBarMenuButton> arrayList) {
        this.urlBarMenuButtons = arrayList;
    }

    public UrlBarStyles getUrlBarStyle() {
        return this.urlBarStyle;
    }

    public void setUrlBarStyle(UrlBarStyles urlBarStyles) {
        this.urlBarStyle = urlBarStyles;
    }

    public UrlBarHide getUrlBarHide() {
        return this.urlBarHide;
    }

    public void setUrlBarHide(UrlBarHide urlBarHide) {
        this.urlBarHide = urlBarHide;
    }

    public String getAffiliateString() {
        return this.affiliateGetString;
    }

    public void setAffiliateString(String str) {
        this.affiliateGetString = str;
    }

    public String getPublisherName() {
        return this.publisherName;
    }

    public void setPublisherName(String str) {
        this.publisherName = str;
    }

    public String getWidgetName() {
        return this.widgetName;
    }

    public void setWidgetName(String str) {
        this.widgetName = str;
    }

    public String getRegisteredUrl() {
        return this.registeredUrl;
    }

    public void setRegisteredUrl(String str) {
        this.registeredUrl = str;
    }

    public String getLocationUrl() {
        return this.locationUrl;
    }

    public void setLocationUrl(String str) {
        this.locationUrl = str;
    }

    public int getApplicationId() {
        return this.applicationId;
    }

    public boolean getPreventFromSleep() {
        return this.preventFromSleep;
    }

    public void setApplicationId(int i) {
        this.applicationId = i;
    }

    public String getFullScreenModeUrl() {
        return this.fullScreenModeUrl;
    }

    public void setFullScreenModeUrl(String str) {
        this.fullScreenModeUrl = str;
    }

    public boolean getShowRefreshMenuItem() {
        return this.showRefreshMenuItem;
    }

    public long getUpdatePeriodOfWidgetInMS() {
        return this.updatePeriodOfWidgetInMS;
    }

    public void setShowRefreshMenuItem(boolean z) {
        this.showRefreshMenuItem = z;
    }

    public void setUpdatePeriodOfWidgetInMS(long j) {
        this.updatePeriodOfWidgetInMS = j;
    }

    public long getUpdatePeriodOfFullScreenModeInMs() {
        return this.updatePeriodOfFullScreenModeInMs;
    }

    public void setIsAboutScreenEnabled(boolean z) {
        this.isAboutScreenEnabled = z;
    }

    public boolean getIsAboutScreenEnabled() {
        return this.isAboutScreenEnabled;
    }

    public void setUpdatePeriodOfFullScreenModeInMs(long j) {
        this.updatePeriodOfFullScreenModeInMs = j;
    }

    public String getAddUsageUrl() {
        return this.addUsageUrl;
    }

    public void setAddUsageUrl(String str) {
        this.addUsageUrl = str;
    }

    public int getContentWidth() {
        return this.contentWidth;
    }

    public void setContentWidth(int i) {
        this.contentWidth = i;
    }

    public int getContentHeight() {
        return this.contentHeight;
    }

    public void setContentHeight(int i) {
        this.contentHeight = i;
    }

    public String getHttpAccessLogin() {
        return this.httpAccessLogin;
    }

    public void setHttpAccessLogin(String str) {
        this.httpAccessLogin = str;
    }

    public String getHttpAccessPassword() {
        return this.httpAccessPassword;
    }

    public void setHttpAccessPassword(String str) {
        this.httpAccessPassword = str;
    }

    public void setPreventFromSleep(boolean z) {
        this.preventFromSleep = z;
    }

    public MainNavigationActivity.ApplicationMode getApplicationMode() {
        return this.appMode;
    }

    public void setApplicationMode(MainNavigationActivity.ApplicationMode applicationMode) {
        this.appMode = applicationMode;
    }

    public ApplicationThemes getApplicationTheme() {
        return this.appTheme;
    }

    public void setApplicationTheme(ApplicationThemes applicationThemes) {
        this.appTheme = applicationThemes;
    }

    public boolean getRateItemVisibility() {
        return this.rateItemVisibility;
    }

    public void setRateItemVisibility(boolean z) {
        this.rateItemVisibility = z;
    }

    public boolean getAcceptCookie() {
        return this.acceptCookie;
    }

    public void setAcceptCookie(boolean z) {
        this.acceptCookie = z;
    }

    public boolean getFullscreenBannerEnabled() {
        return this.fullScreenBannerEnabled;
    }

    public void setFullscreenBannerEnabled(boolean z) {
        this.fullScreenBannerEnabled = z;
    }

    public boolean getOnExitFullscreenBannerEnabled() {
        return this.onExitFullScreenBannerEnabled;
    }

    public void setOnExitFullscreenBannerEnabled(boolean z) {
        this.onExitFullScreenBannerEnabled = z;
    }

    public UrlBarStates getUrlOverlayState() {
        return this.urlOverlayEnabled;
    }

    public void setUrlOverlayState(UrlBarStates urlBarStates) {
        this.urlOverlayEnabled = urlBarStates;
    }

    public boolean getShowShareMenuItem() {
        return this.showShareMenuItem;
    }

    public void setShowShareMenuItem(boolean z) {
        this.showShareMenuItem = z;
    }

    public boolean getShowAboutMenuItem() {
        return this.showAboutMenuItem;
    }

    public void setShowAboutMenuItem(boolean z) {
        this.showAboutMenuItem = z;
    }

    public boolean isShowInAppMenuItem() {
        return this.showInAppMenuItem;
    }

    public void setShowInAppMenuItem(boolean z) {
        this.showInAppMenuItem = z;
    }

    public boolean getShowExitMenuItem() {
        return this.showExitMenuItem;
    }

    public void setShowExitMenuItem(boolean z) {
        this.showExitMenuItem = z;
    }

    public void setSplashScreen(String str) {
        if (str == null) {
            return;
        }
        this.isSplashScreenEnabled = true;
        this.splashScreenImage = str;
    }

    public boolean isSplashScreenEnabled() {
        return this.isSplashScreenEnabled;
    }

    public String getSplashScreenImage() {
        return this.splashScreenImage;
    }

    public DownloadActions getDownloadAction() {
        return this.downloadAction;
    }

    public void setDownloadAction(DownloadActions downloadActions) {
        this.downloadAction = downloadActions;
    }

    public void setShowStartupConfirmationDialog(boolean z) {
        this.showStartupConfirmationDialog = z;
    }

    public boolean isStartupConfirmationDialogEnabled() {
        return this.showStartupConfirmationDialog;
    }

    public String getShareExtraLink() {
        return this.shareExtraLink;
    }

    public void setShareExtraLink(String str) {
        this.shareExtraLink = str;
    }

    public TabsPositions getTabsPosition() {
        return this.tabsPosition;
    }

    public void setTabsPosition(TabsPositions tabsPositions) {
        this.tabsPosition = tabsPositions;
    }

    public boolean getShowDownloadList() {
        return this.showDownloadList;
    }

    public void setShowDownloadList(boolean z) {
        this.showDownloadList = z;
    }

    public boolean getShowSettings() {
        return this.showSettings;
    }

    public void setShowSettings(boolean z) {
        this.showSettings = z;
    }

    public TabsEnabledHide getTabsEnabledHide() {
        return this.tabsEnabledHide;
    }

    public void setTabsEnabledHide(TabsEnabledHide tabsEnabledHide) {
        this.tabsEnabledHide = tabsEnabledHide;
    }

    public boolean getShowSearchNotice() {
        return this.showSearchNotice;
    }

    public void setShowSearchNotice(boolean z) {
        this.showSearchNotice = z;
    }
}
