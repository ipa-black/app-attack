package com.applovin.mediation.hybridAds;

import android.app.Activity;
import android.os.Bundle;
import android.view.ViewGroup;
import com.applovin.impl.sdk.n;
import com.applovin.impl.sdk.utils.r;
import com.applovin.mediation.adapter.listeners.MaxAdapterListener;
import com.applovin.mediation.adapter.listeners.MaxAppOpenAdapterListener;
import com.applovin.mediation.adapter.listeners.MaxInterstitialAdapterListener;
import com.applovin.mediation.hybridAds.a;
/* loaded from: classes.dex */
public class b extends Activity implements a.InterfaceC0084a {

    /* renamed from: a  reason: collision with root package name */
    protected a f6260a;

    /* renamed from: b  reason: collision with root package name */
    protected c f6261b;

    /* renamed from: c  reason: collision with root package name */
    private n f6262c;

    /* renamed from: d  reason: collision with root package name */
    private MaxAdapterListener f6263d;

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(com.applovin.impl.mediation.a.c cVar, n nVar, MaxAdapterListener maxAdapterListener) {
        this.f6262c = nVar;
        this.f6263d = maxAdapterListener;
        this.f6261b = cVar.n();
    }

    @Override // com.applovin.mediation.hybridAds.a.InterfaceC0084a
    public void a(a aVar) {
        if (isFinishing()) {
            return;
        }
        finish();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        getWindow().setFlags(1024, 1024);
        getWindow().addFlags(16777216);
        getWindow().addFlags(128);
        ViewGroup viewGroup = (ViewGroup) findViewById(16908290);
        viewGroup.setBackgroundColor(this.f6261b.a());
        com.applovin.impl.sdk.utils.b.a(((Boolean) this.f6262c.a(com.applovin.impl.sdk.c.b.cL)).booleanValue(), this);
        a aVar = new a(this.f6261b, this);
        this.f6260a = aVar;
        aVar.setListener(this);
        this.f6260a.setVisibility(4);
        viewGroup.addView(this.f6260a);
        r.a(this.f6260a, this.f6261b.f());
        MaxAdapterListener maxAdapterListener = this.f6263d;
        if (maxAdapterListener == null) {
            return;
        }
        if (maxAdapterListener instanceof MaxInterstitialAdapterListener) {
            ((MaxInterstitialAdapterListener) maxAdapterListener).onInterstitialAdDisplayed();
        } else if (maxAdapterListener instanceof MaxAppOpenAdapterListener) {
            ((MaxAppOpenAdapterListener) maxAdapterListener).onAppOpenAdDisplayed();
        }
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        MaxAdapterListener maxAdapterListener = this.f6263d;
        if (maxAdapterListener != null) {
            if (maxAdapterListener instanceof MaxInterstitialAdapterListener) {
                ((MaxInterstitialAdapterListener) maxAdapterListener).onInterstitialAdHidden();
            } else if (maxAdapterListener instanceof MaxAppOpenAdapterListener) {
                ((MaxAppOpenAdapterListener) maxAdapterListener).onAppOpenAdHidden();
            }
        }
        super.onDestroy();
    }
}
