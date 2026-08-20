package com.appsgeyser.multiTabApp.controllers;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.appsgeyser.multiTabApp.model.WidgetEntity;
import com.appsgeyser.multiTabApp.ui.views.TabContent;
/* loaded from: classes2.dex */
public interface ITabContentController extends InjectMainNavigationController {
    View createTabContent(LayoutInflater layoutInflater, ViewGroup viewGroup, TabContent.TabType tabType) throws Exception;

    void destroy();

    WidgetEntity getWidgetInfo();

    boolean onBackKeyDown();

    void showNavigationBars();
}
