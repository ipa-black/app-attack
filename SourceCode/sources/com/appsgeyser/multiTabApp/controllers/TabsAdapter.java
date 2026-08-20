package com.appsgeyser.multiTabApp.controllers;

import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentPagerAdapter;
import com.appsgeyser.multiTabApp.Factory;
import com.appsgeyser.multiTabApp.model.WidgetEntity;
import com.appsgeyser.multiTabApp.ui.views.TabFragment;
import com.w_19998775.R;
import java.util.HashMap;
/* loaded from: classes2.dex */
public class TabsAdapter extends FragmentPagerAdapter {
    private String _injectionJs;
    private HashMap<Integer, TabFragment> _tabFragments;
    private WidgetsController _widgetsController;
    private boolean shouldAddOfferWall;

    public TabsAdapter(boolean z) {
        super(Factory.getInstance().getMainNavigationActivity().getSupportFragmentManager());
        this._tabFragments = new HashMap<>();
        this._widgetsController = Factory.getInstance().getWidgetsController();
        this.shouldAddOfferWall = z;
    }

    public void setInjectionJs(String str) {
        this._injectionJs = str;
        for (TabFragment tabFragment : this._tabFragments.values()) {
            if (tabFragment != null && tabFragment.getContentController() != null) {
                ((WebContentController) tabFragment.getContentController()).setBannerInjectionJs(this._injectionJs);
            }
        }
    }

    @Override // androidx.fragment.app.FragmentPagerAdapter
    public Fragment getItem(int i) {
        WidgetEntity tabByPosition = this._widgetsController.getTabByPosition(i);
        TabFragment newInstance = TabFragment.newInstance(tabByPosition.getTabId(), this._injectionJs, tabByPosition.getTabType());
        this._tabFragments.put(Integer.valueOf(i), newInstance);
        return newInstance;
    }

    @Override // androidx.fragment.app.FragmentPagerAdapter, androidx.viewpager.widget.PagerAdapter
    public Object instantiateItem(ViewGroup viewGroup, int i) {
        return (Fragment) super.instantiateItem(viewGroup, i);
    }

    public Fragment getFragmentByPosition(int i) {
        if (this._tabFragments.size() > i) {
            return this._tabFragments.get(Integer.valueOf(i));
        }
        return null;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public int getCount() {
        if (this.shouldAddOfferWall) {
            return this._widgetsController.tabsCount() + 1;
        }
        return this._widgetsController.tabsCount();
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public CharSequence getPageTitle(int i) {
        if (this.shouldAddOfferWall && i == this._widgetsController.tabsCount()) {
            return Factory.getInstance().getMainNavigationActivity().getString(R.string.menuOfferWallTitle);
        }
        return this._widgetsController.getTabByPosition(i).getTabName();
    }
}
