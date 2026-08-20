package com.amazon.device.ads;

import android.content.Context;
import android.view.View;
import android.widget.LinearLayout;
/* compiled from: DTBAdUtil.java */
/* loaded from: classes.dex */
class AdContainer extends LinearLayout {
    View adView;
    int orientation;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AdContainer(Context context) {
        super(context);
        setOrientation(1);
        this.orientation = AdRegistration.getContext().getResources().getConfiguration().orientation;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setAdView(View view) {
        this.adView = view;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.orientation == AdRegistration.getContext().getResources().getConfiguration().orientation) {
            View view = this.adView;
            if (view instanceof DTBAdView) {
                ((DTBAdView) view).onAdRemoved();
            }
            this.adView = null;
        }
    }
}
