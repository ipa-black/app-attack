package com.appsgeyser.multiTabApp.ui.navigationdrawerwidget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Handler;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.HeaderViewListAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import androidx.appcompat.app.ActionBarDrawerToggle;
import androidx.appcompat.widget.Toolbar;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.drawable.RoundedBitmapDrawable;
import androidx.core.graphics.drawable.RoundedBitmapDrawableFactory;
import androidx.drawerlayout.widget.DrawerLayout;
import com.appsgeyser.multiTabApp.Factory;
import com.appsgeyser.multiTabApp.MainNavigationActivity;
import com.appsgeyser.multiTabApp.controllers.INavigationController;
import com.appsgeyser.multiTabApp.controllers.WidgetsController;
import com.w_19998775.R;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public class NavigationDrawerWidget {
    private static final String NAVIGATION_DRAWER_WIDGET = "com.appsgeyser.multiTabApp.ui.navigationdrawerwidget.NavigationDrawerWidget";
    private static final int SLIDER_HANDLE_SHOW_TIME = 20000;
    private static final String USER_KNOWS_ABOUT_DRAWER_KEY = "com.appsgeyser.multiTabApp.ui.navigationdrawerwidget.NavigationDrawerWidget.userKnowsAboutDrawer";
    private final MainNavigationActivity activity;
    private final ListView drawerListView;
    private ArrayList<DrawerWidgetModel> drawerWidgetModels;
    private boolean hasOptions;
    private final boolean hasTabs;
    private final DrawerLayout navigationDrawer;
    private final NavigationDrawerWidgetSimpleListener navigationDrawerWidgetSimpleListener;
    private final ImageView sliderHandle;
    private final Animation sliderHandleAnimation;
    private final Animation sliderHandleHideAnimation;
    private final INavigationController tabsController;
    private boolean userKnowsAboutDrawer;

    public NavigationDrawerWidget(MainNavigationActivity mainNavigationActivity, boolean z, boolean z2, boolean z3) {
        INavigationController tabsController = Factory.getInstance().getTabsController();
        this.tabsController = tabsController;
        this.activity = mainNavigationActivity;
        DrawerLayout drawerLayout = (DrawerLayout) mainNavigationActivity.findViewById(R.id.drawer_layout);
        this.navigationDrawer = drawerLayout;
        ListView listView = (ListView) mainNavigationActivity.findViewById(R.id.left_drawer_widget);
        this.drawerListView = listView;
        this.sliderHandle = (ImageView) mainNavigationActivity.findViewById(R.id.slider_handle);
        Animation loadAnimation = AnimationUtils.loadAnimation(mainNavigationActivity, R.anim.slider_handle_animation);
        this.sliderHandleAnimation = loadAnimation;
        loadAnimation.setRepeatCount(-1);
        this.sliderHandleHideAnimation = AnimationUtils.loadAnimation(mainNavigationActivity, R.anim.slider_handle_hide_animation);
        if (z) {
            addTabsInListView();
        }
        this.hasTabs = z;
        if (z2) {
            boolean z4 = mainNavigationActivity.getPreferences(0).getBoolean(USER_KNOWS_ABOUT_DRAWER_KEY, false);
            this.userKnowsAboutDrawer = z4;
            if (!z4) {
                showSliderHandle();
            }
            new Handler().postDelayed(new Runnable() { // from class: com.appsgeyser.multiTabApp.ui.navigationdrawerwidget.NavigationDrawerWidget.1
                @Override // java.lang.Runnable
                public void run() {
                    NavigationDrawerWidget.this.hideSliderHandle();
                }
            }, 20000L);
        }
        if (z3) {
            initHeader();
            mainNavigationActivity.findViewById(R.id.main_toolbar).setVisibility(0);
            Toolbar toolbar = (Toolbar) mainNavigationActivity.findViewById(R.id.main_toolbar);
            toolbar.showOverflowMenu();
            mainNavigationActivity.setSupportActionBar(toolbar);
            ActionBarDrawerToggle actionBarDrawerToggle = new ActionBarDrawerToggle(mainNavigationActivity, drawerLayout, toolbar, R.string.drawer_open, R.string.drawer_close);
            drawerLayout.addDrawerListener(actionBarDrawerToggle);
            actionBarDrawerToggle.syncState();
            listView.setAdapter((ListAdapter) new NavigationDrawerWidgetAdapter(mainNavigationActivity, this.drawerWidgetModels));
        }
        NavigationDrawerWidgetSimpleListener navigationDrawerWidgetSimpleListener = new NavigationDrawerWidgetSimpleListener(this);
        this.navigationDrawerWidgetSimpleListener = navigationDrawerWidgetSimpleListener;
        drawerLayout.addDrawerListener(navigationDrawerWidgetSimpleListener);
        listView.setOnItemClickListener(new NavigationDrawerWidgetClickListener(tabsController, drawerLayout, listView, mainNavigationActivity));
    }

    public void show() {
        this.drawerListView.setVisibility(0);
        this.sliderHandle.bringToFront();
        this.navigationDrawer.setDrawerLockMode(0);
    }

    public void open() {
        this.navigationDrawer.openDrawer(3);
    }

    public void setOptions(ArrayList<DrawerWidgetModel> arrayList) {
        if (this.hasOptions) {
            return;
        }
        initHeader();
        if (this.hasTabs) {
            DrawerWidgetModel drawerWidgetModel = new DrawerWidgetModel(null, 0, null);
            drawerWidgetModel.setDivider(true);
            this.drawerWidgetModels.add(drawerWidgetModel);
        } else {
            this.drawerWidgetModels = new ArrayList<>(arrayList.size());
        }
        this.drawerWidgetModels.addAll(arrayList);
        this.drawerListView.setAdapter((ListAdapter) new NavigationDrawerWidgetAdapter(this.activity, this.drawerWidgetModels));
        if (this.hasTabs) {
            this.drawerListView.post(new Runnable() { // from class: com.appsgeyser.multiTabApp.ui.navigationdrawerwidget.NavigationDrawerWidget.2
                @Override // java.lang.Runnable
                public void run() {
                    SelectItemController.selectItem(NavigationDrawerWidget.this.drawerListView, NavigationDrawerWidget.this.tabsController.getSelectedTabId() + 1, NavigationDrawerWidget.this.activity);
                }
            });
        }
        this.hasOptions = true;
    }

    public void hideMenuItem(long j) {
        NavigationDrawerWidgetAdapter navigationDrawerWidgetAdapter = (NavigationDrawerWidgetAdapter) ((HeaderViewListAdapter) this.drawerListView.getAdapter()).getWrappedAdapter();
        for (int i = 0; i < navigationDrawerWidgetAdapter.getCount(); i++) {
            DrawerWidgetModel item = navigationDrawerWidgetAdapter.getItem(i);
            if (item != null && item.getMenuId() == j) {
                navigationDrawerWidgetAdapter.remove(item);
            }
        }
        navigationDrawerWidgetAdapter.notifyDataSetChanged();
        this.drawerListView.invalidate();
    }

    public void showDisableAdsMenuItem(Context context) {
        NavigationDrawerWidgetAdapter navigationDrawerWidgetAdapter = (NavigationDrawerWidgetAdapter) ((HeaderViewListAdapter) this.drawerListView.getAdapter()).getWrappedAdapter();
        for (int i = 0; i < navigationDrawerWidgetAdapter.getCount(); i++) {
            String description = navigationDrawerWidgetAdapter.getItem(i).getDescription();
            if (description != null && description.equals(context.getString(R.string.disable_ads_text))) {
                return;
            }
        }
        navigationDrawerWidgetAdapter.add(new DrawerWidgetModel(ContextCompat.getDrawable(context, R.drawable.ic_remove_ads_icon), R.id.webapp_disable_ads, context.getString(R.string.disable_ads_text)));
        navigationDrawerWidgetAdapter.notifyDataSetChanged();
        this.drawerListView.invalidate();
    }

    private void addTabsInListView() {
        WidgetsController widgetsController = Factory.getInstance().getWidgetsController();
        this.drawerWidgetModels = new ArrayList<>(widgetsController.tabsCount());
        int tabsCount = widgetsController.tabsCount();
        for (int i = 0; i < tabsCount; i++) {
            this.drawerWidgetModels.add(new DrawerWidgetModel(null, 0, widgetsController.getTabByPosition(i).getName()));
        }
        this.drawerListView.post(new Runnable() { // from class: com.appsgeyser.multiTabApp.ui.navigationdrawerwidget.NavigationDrawerWidget.3
            @Override // java.lang.Runnable
            public void run() {
                SelectItemController.selectItem(NavigationDrawerWidget.this.drawerListView, NavigationDrawerWidget.this.tabsController.getSelectedTabId() + 1, NavigationDrawerWidget.this.activity);
            }
        });
    }

    private void setCircularIconHeader() {
        Resources resources = this.activity.getResources();
        Bitmap decodeResource = BitmapFactory.decodeResource(resources, R.drawable.icon);
        RoundedBitmapDrawable create = RoundedBitmapDrawableFactory.create(resources, decodeResource);
        create.setCornerRadius(Math.max(decodeResource.getWidth(), decodeResource.getHeight()) / 0.2f);
        ((ImageView) this.activity.findViewById(R.id.navigation_drawer_header_imageView_icon)).setImageDrawable(create);
    }

    private void initHeader() {
        if (this.drawerListView.getHeaderViewsCount() == 0) {
            LinearLayout linearLayout = (LinearLayout) this.activity.getLayoutInflater().inflate(R.layout.navigation_drawer_header, (ViewGroup) this.drawerListView, false);
            ((TextView) linearLayout.findViewById(R.id.navigation_drawer_header_textView_appname)).setText(this.activity.getString(R.string.app_caption));
            this.drawerListView.addHeaderView(linearLayout, null, false);
            setCircularIconHeader();
        }
    }

    private void showSliderHandle() {
        this.sliderHandle.setVisibility(0);
        this.sliderHandle.bringToFront();
        this.sliderHandle.startAnimation(this.sliderHandleAnimation);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void hideSliderHandle() {
        if (!this.userKnowsAboutDrawer) {
            this.userKnowsAboutDrawer = true;
            this.activity.getPreferences(0).edit().putBoolean(USER_KNOWS_ABOUT_DRAWER_KEY, this.userKnowsAboutDrawer).apply();
        }
        this.sliderHandle.clearAnimation();
        this.sliderHandleHideAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.appsgeyser.multiTabApp.ui.navigationdrawerwidget.NavigationDrawerWidget.4
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                NavigationDrawerWidget.this.sliderHandle.setVisibility(8);
            }
        });
        this.sliderHandle.startAnimation(this.sliderHandleHideAnimation);
    }

    public void remove() {
        ListView listView = (ListView) this.activity.findViewById(R.id.left_drawer_widget);
        if (listView != null) {
            listView.setVisibility(8);
        }
        this.navigationDrawer.setDrawerLockMode(1);
        this.tabsController.setSwipeEnabled(true);
    }

    public void close() {
        ListView listView;
        DrawerLayout drawerLayout = this.navigationDrawer;
        if (drawerLayout == null || (listView = this.drawerListView) == null) {
            return;
        }
        drawerLayout.closeDrawer(listView);
    }

    public boolean isOpened() {
        return this.navigationDrawerWidgetSimpleListener.isOpened();
    }
}
