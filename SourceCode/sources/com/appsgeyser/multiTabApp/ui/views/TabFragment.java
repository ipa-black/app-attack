package com.appsgeyser.multiTabApp.ui.views;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import com.appsgeyser.multiTabApp.Factory;
import com.appsgeyser.multiTabApp.controllers.ITabContentController;
import com.appsgeyser.multiTabApp.controllers.WebContentController;
import com.appsgeyser.multiTabApp.ui.views.TabContent;
/* loaded from: classes2.dex */
public class TabFragment extends Fragment {
    private static final String ARGUMENT_INJECTION_JS = "INJECTION_JS";
    private static final String ARGUMENT_TAB_ID = "TAB_ID";
    private static final String ARGUMENT_TAB_TYPE = "TAB_TYPE";
    private ITabContentController _tabContentController;

    public static TabFragment newInstance(String str, String str2, String str3) {
        TabFragment tabFragment = new TabFragment();
        tabFragment.setRetainInstance(false);
        Bundle bundle = new Bundle();
        bundle.putString(ARGUMENT_TAB_ID, str);
        bundle.putString(ARGUMENT_INJECTION_JS, str2);
        bundle.putString(ARGUMENT_TAB_TYPE, str3);
        tabFragment.setArguments(bundle);
        return tabFragment;
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this._tabContentController = Factory.getInstance().getTabContentController(Factory.getInstance().getWidgetsController().getWidgetByTabId(getArguments().getString(ARGUMENT_TAB_ID)));
        ((WebContentController) this._tabContentController).setBannerInjectionJs(getArguments().getString(ARGUMENT_INJECTION_JS));
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        TabContent.TabType tabType;
        try {
            String string = getArguments().getString(ARGUMENT_TAB_TYPE);
            if (string.equals(TabContent.TabType.WEB.toString())) {
                tabType = TabContent.TabType.WEB;
            } else {
                tabType = string.equals(TabContent.TabType.PDF.toString()) ? TabContent.TabType.PDF : null;
            }
            return this._tabContentController.createTabContent(layoutInflater, viewGroup, tabType);
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public ITabContentController getContentController() {
        return this._tabContentController;
    }
}
