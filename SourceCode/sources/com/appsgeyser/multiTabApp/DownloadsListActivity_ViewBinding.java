package com.appsgeyser.multiTabApp;

import android.view.View;
import androidx.appcompat.widget.Toolbar;
import butterknife.Unbinder;
import butterknife.internal.Utils;
/* loaded from: classes2.dex */
public class DownloadsListActivity_ViewBinding implements Unbinder {
    private DownloadsListActivity target;

    public DownloadsListActivity_ViewBinding(DownloadsListActivity downloadsListActivity) {
        this(downloadsListActivity, downloadsListActivity.getWindow().getDecorView());
    }

    public DownloadsListActivity_ViewBinding(DownloadsListActivity downloadsListActivity, View view) {
        this.target = downloadsListActivity;
        downloadsListActivity.toolbar = (Toolbar) Utils.findRequiredViewAsType(view, com.w_19998775.R.id.downloads_toolbar, "field 'toolbar'", Toolbar.class);
    }

    @Override // butterknife.Unbinder
    public void unbind() {
        DownloadsListActivity downloadsListActivity = this.target;
        if (downloadsListActivity == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.target = null;
        downloadsListActivity.toolbar = null;
    }
}
