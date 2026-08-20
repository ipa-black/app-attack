package com.appsgeyser.multiTabApp.ui.navigationdrawerwidget;

import android.view.View;
import androidx.drawerlayout.widget.DrawerLayout;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class NavigationDrawerWidgetSimpleListener extends DrawerLayout.SimpleDrawerListener {
    private boolean isOpened;
    private final NavigationDrawerWidget navigationDrawerWidget;

    /* JADX INFO: Access modifiers changed from: package-private */
    public NavigationDrawerWidgetSimpleListener(NavigationDrawerWidget navigationDrawerWidget) {
        this.navigationDrawerWidget = navigationDrawerWidget;
    }

    @Override // androidx.drawerlayout.widget.DrawerLayout.SimpleDrawerListener, androidx.drawerlayout.widget.DrawerLayout.DrawerListener
    public void onDrawerClosed(View view) {
        super.onDrawerClosed(view);
        this.isOpened = false;
    }

    @Override // androidx.drawerlayout.widget.DrawerLayout.SimpleDrawerListener, androidx.drawerlayout.widget.DrawerLayout.DrawerListener
    public void onDrawerStateChanged(int i) {
        super.onDrawerStateChanged(i);
    }

    @Override // androidx.drawerlayout.widget.DrawerLayout.SimpleDrawerListener, androidx.drawerlayout.widget.DrawerLayout.DrawerListener
    public void onDrawerOpened(View view) {
        super.onDrawerOpened(view);
        this.isOpened = true;
        this.navigationDrawerWidget.hideSliderHandle();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isOpened() {
        return this.isOpened;
    }
}
