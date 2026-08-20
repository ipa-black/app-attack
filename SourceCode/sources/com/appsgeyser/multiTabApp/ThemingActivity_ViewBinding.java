package com.appsgeyser.multiTabApp;

import android.content.res.Resources;
import android.view.View;
import androidx.appcompat.widget.Toolbar;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
/* loaded from: classes2.dex */
public class ThemingActivity_ViewBinding implements Unbinder {
    private ThemingActivity target;

    public ThemingActivity_ViewBinding(ThemingActivity themingActivity) {
        this(themingActivity, themingActivity.getWindow().getDecorView());
    }

    public ThemingActivity_ViewBinding(ThemingActivity themingActivity, View view) {
        this.target = themingActivity;
        themingActivity.presetsRecycler = (RecyclerView) Utils.findRequiredViewAsType(view, com.w_19998775.R.id.theming_recycler, "field 'presetsRecycler'", RecyclerView.class);
        themingActivity.toolbar = (Toolbar) Utils.findRequiredViewAsType(view, com.w_19998775.R.id.theming_toolbar, "field 'toolbar'", Toolbar.class);
        Resources resources = view.getContext().getResources();
        themingActivity.noAvailableVideoString = resources.getString(com.w_19998775.R.string.noAvailableVideo);
        themingActivity.noInternetConnectionString = resources.getString(com.w_19998775.R.string.noInternetConnectionMessage);
        themingActivity.rewardedVideoThemingString = resources.getString(com.w_19998775.R.string.rewardedVideoTheming);
        themingActivity.okString = resources.getString(17039370);
        themingActivity.cancelString = resources.getString(17039360);
    }

    @Override // butterknife.Unbinder
    public void unbind() {
        ThemingActivity themingActivity = this.target;
        if (themingActivity == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.target = null;
        themingActivity.presetsRecycler = null;
        themingActivity.toolbar = null;
    }
}
