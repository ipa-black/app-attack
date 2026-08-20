package com.applovin.mediation.hybridAds;

import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import com.applovin.impl.sdk.n;
import com.applovin.mediation.adapter.listeners.MaxAdapterListener;
/* loaded from: classes.dex */
public class MaxHybridMRecAdActivity extends b {

    /* renamed from: c  reason: collision with root package name */
    private View f6255c;

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(com.applovin.impl.mediation.a.c cVar, View view, n nVar, MaxAdapterListener maxAdapterListener) {
        super.a(cVar, nVar, maxAdapterListener);
        this.f6255c = view;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.applovin.mediation.hybridAds.b, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ((ViewGroup) findViewById(16908290)).addView(this.f6255c);
        this.f6260a.bringToFront();
    }
}
