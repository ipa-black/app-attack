package com.explorestack.iab.measurer;

import android.view.View;
import android.view.ViewGroup;
import java.io.Serializable;
/* loaded from: classes2.dex */
public interface AdMeasurer<AdView extends View> extends Serializable {
    void onAdViewReady(AdView adview);

    void registerAdContainer(ViewGroup viewGroup);

    void registerAdView(AdView adview);
}
