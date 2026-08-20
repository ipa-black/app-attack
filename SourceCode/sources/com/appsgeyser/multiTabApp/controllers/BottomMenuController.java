package com.appsgeyser.multiTabApp.controllers;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.LinearLayout;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager.widget.ViewPager;
import com.appsgeyser.multiTabApp.Factory;
import com.appsgeyser.multiTabApp.MainNavigationActivity;
import com.appsgeyser.multiTabApp.controllers.INavigationController;
import com.appsgeyser.multiTabApp.model.WidgetEntity;
import com.appsgeyser.multiTabApp.ui.adapters.BottomSheetMenuAdapter;
import com.appsgeyser.multiTabApp.ui.views.TabContent;
import com.appsgeyser.multiTabApp.ui.views.TabFragment;
import com.google.android.material.bottomnavigation.BottomNavigationView;
import com.w_19998775.R;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.Vector;
/* loaded from: classes2.dex */
public class BottomMenuController implements INavigationController {
    private static final int MENU_ITEM_MORE_TABS_ID = 1;
    private static final int OFFSCREEN_TABS_LIMIT = 10;
    private Activity activity;
    private BottomNavigationView bottomNavigationView;
    private LinearLayout bottomSheet;
    private RecyclerView bottomSheetMenuList;
    private boolean firstBannerWasShown;
    private INavigationController.OnTabsControllerReady onTabsControllerReadyListener;
    private int selectedMenuItem;
    private int selectedPosition;
    private TabsAdapter tabsAdapter;
    private ContentSwipeAwareViewPager viewPager;
    private BottomNavigationView.OnNavigationItemSelectedListener bottomMenuListener = new BottomNavigationView.OnNavigationItemSelectedListener() { // from class: com.appsgeyser.multiTabApp.controllers.BottomMenuController.1
        @Override // com.google.android.material.bottomnavigation.BottomNavigationView.OnNavigationItemSelectedListener
        public boolean onNavigationItemSelected(MenuItem menuItem) {
            BottomMenuController.this.selectedMenuItem = menuItem.getItemId();
            if (menuItem.getItemId() == 1) {
                if (BottomMenuController.this.bottomSheet.getVisibility() == 0) {
                    BottomMenuController.this.bottomSheet.setVisibility(8);
                } else {
                    BottomMenuController.this.bottomSheet.setVisibility(0);
                }
            } else {
                BottomMenuController.this.bottomSheet.setVisibility(8);
                BottomMenuController bottomMenuController = BottomMenuController.this;
                bottomMenuController.swipeOnPageByTabId(String.valueOf(bottomMenuController.selectedMenuItem));
            }
            BottomMenuController.this.bottomNavigationView.getMenu().findItem(BottomMenuController.this.selectedMenuItem).setChecked(true);
            return false;
        }
    };
    private final ViewPager.SimpleOnPageChangeListener onPageChangeListener = new ViewPager.SimpleOnPageChangeListener() { // from class: com.appsgeyser.multiTabApp.controllers.BottomMenuController.2
        @Override // androidx.viewpager.widget.ViewPager.SimpleOnPageChangeListener, androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int i) {
            BottomMenuController.this.selectedPosition = i;
            WidgetEntity tabByPosition = Factory.getInstance().getWidgetsController().getTabByPosition(BottomMenuController.this.selectedPosition);
            BottomSheetMenuAdapter bottomSheetMenuAdapter = (BottomSheetMenuAdapter) BottomMenuController.this.bottomSheetMenuList.getAdapter();
            MenuItem findItem = BottomMenuController.this.bottomNavigationView.getMenu().findItem(Integer.valueOf(tabByPosition.getTabId()).intValue());
            if (findItem != null) {
                findItem.setChecked(true);
                if (BottomMenuController.this.bottomSheet.getVisibility() == 0) {
                    BottomMenuController.this.bottomSheet.setVisibility(8);
                }
                if (bottomSheetMenuAdapter != null) {
                    bottomSheetMenuAdapter.uncheckLastView();
                }
            } else if (bottomSheetMenuAdapter != null) {
                bottomSheetMenuAdapter.setItemChecked(tabByPosition);
                BottomMenuController.this.bottomNavigationView.getMenu().findItem(1).setChecked(true);
            }
            WebContentController webContentController = (WebContentController) Factory.getInstance().getWebContentController();
            if (webContentController != null) {
                webContentController.showBanner(MainNavigationActivity.UserEvent.TAB_CHANGED, true);
            }
        }
    };
    private final BottomSheetMenuAdapter.OnItemClickListener bottomSheetClickListener = new BottomSheetMenuAdapter.OnItemClickListener() { // from class: com.appsgeyser.multiTabApp.controllers.BottomMenuController.3
        @Override // com.appsgeyser.multiTabApp.ui.adapters.BottomSheetMenuAdapter.OnItemClickListener
        public void onItemClick(View view, int i, String str) {
            BottomMenuController.this.swipeOnPageByTabId(str);
        }
    };

    @Override // com.appsgeyser.multiTabApp.controllers.INavigationController
    public void initWithTabs(WidgetsController widgetsController) {
        MainNavigationActivity mainNavigationActivity = Factory.getInstance().getMainNavigationActivity();
        this.activity = mainNavigationActivity;
        ContentSwipeAwareViewPager contentSwipeAwareViewPager = (ContentSwipeAwareViewPager) mainNavigationActivity.findViewById(R.id.tabcontents_panel);
        this.viewPager = contentSwipeAwareViewPager;
        contentSwipeAwareViewPager.setOffscreenPageLimit(10);
        BottomNavigationView bottomNavigationView = (BottomNavigationView) this.activity.findViewById(R.id.bottom_navigation);
        this.bottomNavigationView = bottomNavigationView;
        bottomNavigationView.setItemIconTintList(null);
        LinearLayout linearLayout = (LinearLayout) this.activity.findViewById(R.id.bottom_sheet);
        this.bottomSheet = linearLayout;
        linearLayout.setVisibility(8);
        RecyclerView recyclerView = (RecyclerView) this.activity.findViewById(R.id.bottom_sheet_menu_list);
        this.bottomSheetMenuList = recyclerView;
        recyclerView.setLayoutManager(new LinearLayoutManager(this.activity));
        widgetsController.sortCollectionByShowingTabs();
        inflateMenu(widgetsController.getWidgetCollection());
        this.bottomNavigationView.setOnNavigationItemSelectedListener(this.bottomMenuListener);
        this.viewPager.addOnPageChangeListener(this.onPageChangeListener);
        TabsAdapter tabsAdapter = new TabsAdapter(false);
        this.tabsAdapter = tabsAdapter;
        this.viewPager.setAdapter(tabsAdapter);
        this.selectedPosition = this.viewPager.getCurrentItem();
        INavigationController.OnTabsControllerReady onTabsControllerReady = this.onTabsControllerReadyListener;
        if (onTabsControllerReady != null) {
            onTabsControllerReady.tabsControllerReady(true);
        }
    }

    private void inflateMenu(Vector<WidgetEntity> vector) {
        Drawable drawableIconFromAssets;
        Drawable drawableIconFromAssets2;
        Menu menu = this.bottomNavigationView.getMenu();
        ArrayList arrayList = new ArrayList();
        ArrayList<WidgetEntity> arrayList2 = new ArrayList();
        Iterator<WidgetEntity> it = vector.iterator();
        while (it.hasNext()) {
            WidgetEntity next = it.next();
            if (next.isShowAsTab()) {
                arrayList2.add(next);
            } else {
                arrayList.add(next);
            }
        }
        if (vector.size() == 5 && arrayList2.size() == 5) {
            for (WidgetEntity widgetEntity : arrayList2) {
                String tabIcon = widgetEntity.getTabIcon();
                MenuItem add = menu.add(0, Integer.valueOf(widgetEntity.getTabId()).intValue(), 0, widgetEntity.getTabName());
                if (tabIcon != null && (drawableIconFromAssets2 = getDrawableIconFromAssets(this.activity, "tabIcons/" + tabIcon)) != null) {
                    add.setIcon(drawableIconFromAssets2);
                }
            }
        } else {
            int i = 0;
            while (true) {
                if (i > arrayList2.size()) {
                    break;
                } else if (i == arrayList2.size()) {
                    if (arrayList.size() != 0) {
                        menu.add(0, 1, 0, R.string.bottomMenuItemMore).setIcon(this.activity.getResources().getDrawable(R.drawable.baseline_more_horiz_white_24));
                    }
                } else {
                    WidgetEntity widgetEntity2 = (WidgetEntity) arrayList2.get(i);
                    String tabIcon2 = widgetEntity2.getTabIcon();
                    MenuItem add2 = menu.add(0, Integer.valueOf(widgetEntity2.getTabId()).intValue(), 0, widgetEntity2.getTabName());
                    if (!tabIcon2.equals("") && (drawableIconFromAssets = getDrawableIconFromAssets(this.activity, "tabIcons/" + tabIcon2)) != null) {
                        add2.setIcon(drawableIconFromAssets);
                    }
                    i++;
                }
            }
        }
        if (arrayList.size() != 0) {
            if (vector.size() > 5 && arrayList2.size() >= 5) {
                arrayList.add(0, (WidgetEntity) arrayList2.get(arrayList2.size() - 1));
            }
            this.bottomSheetMenuList.setAdapter(new BottomSheetMenuAdapter(arrayList, this.bottomSheetClickListener));
            if (arrayList.size() == 1) {
                this.bottomSheet.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
            }
        }
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
    public void swipeOnPage(int i, boolean z) {
        this.viewPager.setCurrentItem(i, z);
        this.bottomNavigationView.getMenu().findItem(this.selectedMenuItem).setChecked(true);
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
    public void isTabsControllerReady(INavigationController.OnTabsControllerReady onTabsControllerReady) {
        if (this.bottomNavigationView != null) {
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
    public void setTabsBackgroundColor(int i) {
        ((BottomNavigationView) Factory.getInstance().getMainNavigationActivity().findViewById(R.id.bottom_navigation)).setBackgroundColor(i);
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
    public int getSelectedTabId() {
        return this.selectedPosition;
    }

    @Override // com.appsgeyser.multiTabApp.controllers.INavigationController
    public void setSwipeEnabled(boolean z) {
        this.viewPager.setPagingEnabled(z);
    }

    public static Drawable getDrawableIconFromAssets(Context context, String str) {
        try {
            InputStream open = context.getAssets().open(str);
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inSampleSize = calculateInSampleSize(options, 50, 50);
            options.inJustDecodeBounds = false;
            Bitmap decodeStream = BitmapFactory.decodeStream(open, null, options);
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            if (decodeStream != null) {
                decodeStream.compress(Bitmap.CompressFormat.JPEG, 70, byteArrayOutputStream);
            }
            return new BitmapDrawable(context.getResources(), decodeStream);
        } catch (IOException e2) {
            Log.e("Error getting icon ", str);
            e2.printStackTrace();
            return null;
        }
    }

    private static int calculateInSampleSize(BitmapFactory.Options options, int i, int i2) {
        int i3 = options.outHeight;
        int i4 = options.outWidth;
        int i5 = 1;
        if (i3 > i2 || i4 > i) {
            int i6 = i3 / 2;
            int i7 = i4 / 2;
            while (i6 / i5 >= i2 && i7 / i5 >= i) {
                i5 *= 2;
            }
        }
        return i5;
    }
}
