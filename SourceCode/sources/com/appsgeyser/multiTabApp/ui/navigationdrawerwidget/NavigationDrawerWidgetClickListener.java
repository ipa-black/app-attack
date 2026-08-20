package com.appsgeyser.multiTabApp.ui.navigationdrawerwidget;

import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
import androidx.drawerlayout.widget.DrawerLayout;
import com.appsgeyser.multiTabApp.MainNavigationActivity;
import com.appsgeyser.multiTabApp.controllers.INavigationController;
/* loaded from: classes2.dex */
class NavigationDrawerWidgetClickListener implements AdapterView.OnItemClickListener {
    private final MainNavigationActivity activity;
    private final ListView drawerListView;
    private final DrawerLayout navigationDrawer;
    private final INavigationController tabsController;

    /* JADX INFO: Access modifiers changed from: package-private */
    public NavigationDrawerWidgetClickListener(INavigationController iNavigationController, DrawerLayout drawerLayout, ListView listView, MainNavigationActivity mainNavigationActivity) {
        this.tabsController = iNavigationController;
        this.navigationDrawer = drawerLayout;
        this.drawerListView = listView;
        this.activity = mainNavigationActivity;
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [android.widget.Adapter] */
    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        DrawerWidgetModel drawerWidgetModel = (DrawerWidgetModel) adapterView.getAdapter().getItem(i);
        if (drawerWidgetModel.getMenuId() != 0) {
            drawerWidgetModel.select();
        } else {
            SelectItemController.selectItem(this.drawerListView, i, this.activity);
            this.tabsController.swipeOnPage((int) j, false);
        }
        this.navigationDrawer.closeDrawers();
    }
}
