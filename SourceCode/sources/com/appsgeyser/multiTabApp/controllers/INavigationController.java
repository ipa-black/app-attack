package com.appsgeyser.multiTabApp.controllers;

import android.net.Uri;
/* loaded from: classes2.dex */
public interface INavigationController {

    /* loaded from: classes2.dex */
    public interface OnTabsControllerReady {
        void tabsControllerReady(boolean z);
    }

    void destroy();

    String findTabIdToOpenFromDeepLink(Uri uri);

    void firstBannerWasShown();

    WebContentController getSelectedTab();

    int getSelectedTabId();

    void initWithTabs(WidgetsController widgetsController);

    boolean isFirstBannerShown();

    void isTabsControllerReady(OnTabsControllerReady onTabsControllerReady);

    boolean onBackKeyDown();

    void onPause();

    void onResume();

    void setSwipeEnabled(boolean z);

    void setTabsBackgroundColor(int i);

    void swipeOnPage(int i, boolean z);

    void swipeOnPageByTabId(String str);
}
