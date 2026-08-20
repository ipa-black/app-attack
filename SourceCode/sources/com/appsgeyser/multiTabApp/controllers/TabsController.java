package com.appsgeyser.multiTabApp.controllers;

import android.net.Uri;
import android.util.Log;
import androidx.core.view.ViewCompat;
import androidx.fragment.app.Fragment;
import androidx.viewpager.widget.ViewPager;
import com.appsgeyser.multiTabApp.Factory;
import com.appsgeyser.multiTabApp.MainNavigationActivity;
import com.appsgeyser.multiTabApp.controllers.INavigationController;
import com.appsgeyser.multiTabApp.model.WidgetEntity;
import com.appsgeyser.multiTabApp.ui.views.TabContent;
import com.appsgeyser.multiTabApp.ui.views.TabFragment;
import com.appsgeyser.sdk.AppsgeyserSDK;
import com.google.android.material.tabs.TabLayout;
import com.w_19998775.R;
import java.util.Enumeration;
/* loaded from: classes2.dex */
public class TabsController implements INavigationController {
    private static final int OFFSCREEN_TABS_LIMIT = 10;
    private INavigationController.OnTabsControllerReady onTabsControllerReadyListener;
    private TabsAdapter tabsAdapter;
    private ContentSwipeAwareViewPager viewPager;
    private int selectedPosition = 0;
    private boolean firstBannerWasShown = false;
    private final ViewPager.SimpleOnPageChangeListener onPageChangeListener = new ViewPager.SimpleOnPageChangeListener() { // from class: com.appsgeyser.multiTabApp.controllers.TabsController.2
        @Override // androidx.viewpager.widget.ViewPager.SimpleOnPageChangeListener, androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int i) {
            TabsController.this.selectedPosition = i;
            WebContentController webContentController = (WebContentController) Factory.getInstance().getWebContentController();
            if (webContentController != null) {
                webContentController.showBanner(MainNavigationActivity.UserEvent.TAB_CHANGED, true);
            }
        }
    };

    @Override // com.appsgeyser.multiTabApp.controllers.INavigationController
    public void initWithTabs(WidgetsController widgetsController) {
        try {
            MainNavigationActivity mainNavigationActivity = Factory.getInstance().getMainNavigationActivity();
            ContentSwipeAwareViewPager contentSwipeAwareViewPager = (ContentSwipeAwareViewPager) mainNavigationActivity.findViewById(R.id.tabcontents_panel);
            this.viewPager = contentSwipeAwareViewPager;
            contentSwipeAwareViewPager.setOffscreenPageLimit(10);
            final TabLayout tabLayout = (TabLayout) mainNavigationActivity.findViewById(R.id.tabtags_panel);
            this.viewPager.addOnPageChangeListener(this.onPageChangeListener);
            if (widgetsController.tabsCount() < 2) {
                tabLayout.setVisibility(8);
                createTabsAdapterAndSetupTagsPanel(false, tabLayout);
            } else {
                AppsgeyserSDK.isOfferWallEnabled(this.viewPager.getContext(), new AppsgeyserSDK.OfferWallEnabledListener() { // from class: com.appsgeyser.multiTabApp.controllers.TabsController.1
                    @Override // com.appsgeyser.sdk.AppsgeyserSDK.OfferWallEnabledListener
                    public void isOfferWallEnabled(boolean z) {
                        TabsController.this.createTabsAdapterAndSetupTagsPanel(z, tabLayout);
                    }
                });
            }
        } catch (Exception e2) {
            Log.e("initWithTabs Error", e2.getMessage());
            System.out.println("initWithTabs Error" + e2.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void createTabsAdapterAndSetupTagsPanel(boolean z, TabLayout tabLayout) {
        TabsAdapter tabsAdapter = new TabsAdapter(z);
        this.tabsAdapter = tabsAdapter;
        this.viewPager.setAdapter(tabsAdapter);
        this.selectedPosition = this.viewPager.getCurrentItem();
        INavigationController.OnTabsControllerReady onTabsControllerReady = this.onTabsControllerReadyListener;
        if (onTabsControllerReady != null) {
            onTabsControllerReady.tabsControllerReady(true);
        }
        tabLayout.setupWithViewPager(this.viewPager);
        ViewCompat.setElevation(tabLayout, 16.0f);
    }

    public void setBannerInjectionJs(String str) {
        this.tabsAdapter.setInjectionJs(str);
    }

    @Override // com.appsgeyser.multiTabApp.controllers.INavigationController
    public WebContentController getSelectedTab() {
        try {
            Fragment fragmentByPosition = this.tabsAdapter.getFragmentByPosition(this.selectedPosition);
            if (fragmentByPosition == null || !(fragmentByPosition instanceof TabFragment)) {
                return null;
            }
            return (WebContentController) ((TabFragment) fragmentByPosition).getContentController();
        } catch (NullPointerException unused) {
            return null;
        }
    }

    @Override // com.appsgeyser.multiTabApp.controllers.INavigationController
    public void setTabsBackgroundColor(int i) {
        ((TabLayout) Factory.getInstance().getMainNavigationActivity().findViewById(R.id.tabtags_panel)).setBackgroundColor(i);
    }

    @Override // com.appsgeyser.multiTabApp.controllers.INavigationController
    public void isTabsControllerReady(INavigationController.OnTabsControllerReady onTabsControllerReady) {
        if (this.viewPager.getAdapter() != null) {
            onTabsControllerReady.tabsControllerReady(true);
        } else {
            this.onTabsControllerReadyListener = onTabsControllerReady;
        }
    }

    @Override // com.appsgeyser.multiTabApp.controllers.INavigationController
    public void onPause() {
        WebContentController selectedTab = getSelectedTab();
        if (selectedTab == null || selectedTab.getWebView() == null) {
            return;
        }
        selectedTab.getWebView().onPause();
    }

    @Override // com.appsgeyser.multiTabApp.controllers.INavigationController
    public void onResume() {
        WebContentController selectedTab = getSelectedTab();
        if (selectedTab == null || selectedTab.getWebView() == null) {
            return;
        }
        selectedTab.getWebView().onResume();
    }

    @Override // com.appsgeyser.multiTabApp.controllers.INavigationController
    public void firstBannerWasShown() {
        this.firstBannerWasShown = true;
    }

    @Override // com.appsgeyser.multiTabApp.controllers.INavigationController
    public boolean isFirstBannerShown() {
        return this.firstBannerWasShown;
    }

    @Override // com.appsgeyser.multiTabApp.controllers.INavigationController
    public boolean onBackKeyDown() {
        WebContentController selectedTab = getSelectedTab();
        return (selectedTab == null || selectedTab.getWidgetInfo().getTabType().equals(TabContent.TabType.PDF.toString()) || !selectedTab.onBackKeyDown()) ? false : true;
    }

    @Override // com.appsgeyser.multiTabApp.controllers.INavigationController
    public void destroy() {
        for (int i = 0; i < this.tabsAdapter.getCount(); i++) {
            Fragment fragmentByPosition = this.tabsAdapter.getFragmentByPosition(i);
            if (fragmentByPosition != null && (fragmentByPosition instanceof TabFragment)) {
                TabFragment tabFragment = (TabFragment) fragmentByPosition;
                if (tabFragment.getContentController() != null) {
                    tabFragment.getContentController().destroy();
                }
            }
        }
    }

    @Override // com.appsgeyser.multiTabApp.controllers.INavigationController
    public void setSwipeEnabled(boolean z) {
        this.viewPager.setPagingEnabled(z);
    }

    @Override // com.appsgeyser.multiTabApp.controllers.INavigationController
    public void swipeOnPage(int i, boolean z) {
        this.viewPager.setCurrentItem(i, z);
    }

    @Override // com.appsgeyser.multiTabApp.controllers.INavigationController
    public void swipeOnPageByTabId(String str) {
        swipeOnPage(Factory.getInstance().getWidgetsController().getWidgetPositionByTabId(str), true);
    }

    @Override // com.appsgeyser.multiTabApp.controllers.INavigationController
    public String findTabIdToOpenFromDeepLink(Uri uri) {
        Enumeration<WidgetEntity> enumeration = Factory.getInstance().getWidgetsController().getEnumeration();
        String str = "";
        while (enumeration.hasMoreElements()) {
            WidgetEntity nextElement = enumeration.nextElement();
            if (nextElement != null) {
                String hostFromLink = nextElement.getHostFromLink();
                String pathFromLink = nextElement.getPathFromLink();
                if (hostFromLink != null && hostFromLink.equals(uri.getHost())) {
                    if (pathFromLink != null && pathFromLink.equals(uri.getPath())) {
                        return nextElement.getTabId();
                    }
                    str = nextElement.getTabId();
                }
            }
        }
        return str;
    }

    @Override // com.appsgeyser.multiTabApp.controllers.INavigationController
    public int getSelectedTabId() {
        return this.selectedPosition;
    }
}
