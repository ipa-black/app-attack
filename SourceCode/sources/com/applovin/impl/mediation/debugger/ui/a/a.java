package com.applovin.impl.mediation.debugger.ui.a;

import android.content.DialogInterface;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RectShape;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.amazon.device.ads.AdError;
import com.amazon.device.ads.DTBAdResponse;
import com.applovin.impl.mediation.debugger.a.a;
import com.applovin.impl.mediation.debugger.ui.a.b;
import com.applovin.impl.mediation.debugger.ui.d.d;
import com.applovin.impl.mediation.debugger.ui.testmode.AdControlButton;
import com.applovin.impl.sdk.n;
import com.applovin.impl.sdk.utils.AppLovinSdkExtraParameterKey;
import com.applovin.impl.sdk.utils.Utils;
import com.applovin.impl.sdk.utils.b;
import com.applovin.mediation.MaxAd;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.MaxAdRevenueListener;
import com.applovin.mediation.MaxAdViewAdListener;
import com.applovin.mediation.MaxDebuggerAdUnitDetailActivity;
import com.applovin.mediation.MaxError;
import com.applovin.mediation.MaxReward;
import com.applovin.mediation.MaxRewardedAdListener;
import com.applovin.mediation.ads.MaxAdView;
import com.applovin.mediation.ads.MaxAppOpenAd;
import com.applovin.mediation.ads.MaxInterstitialAd;
import com.applovin.mediation.ads.MaxRewardedAd;
import com.applovin.mediation.ads.MaxRewardedInterstitialAd;
import com.applovin.mediation.nativeAds.MaxNativeAdListener;
import com.applovin.mediation.nativeAds.MaxNativeAdLoader;
import com.applovin.mediation.nativeAds.MaxNativeAdView;
import com.applovin.sdk.AppLovinSdkUtils;
import com.applovin.sdk.R;
import java.util.List;
/* loaded from: classes.dex */
public class a extends com.applovin.impl.mediation.debugger.ui.a implements a.InterfaceC0069a, AdControlButton.a, MaxAdRevenueListener, MaxAdViewAdListener, MaxRewardedAdListener {

    /* renamed from: a  reason: collision with root package name */
    private n f4997a;

    /* renamed from: b  reason: collision with root package name */
    private com.applovin.impl.mediation.debugger.b.a.a f4998b;

    /* renamed from: c  reason: collision with root package name */
    private b f4999c;

    /* renamed from: d  reason: collision with root package name */
    private com.applovin.impl.mediation.debugger.b.a.b f5000d;

    /* renamed from: e  reason: collision with root package name */
    private MaxAdView f5001e;

    /* renamed from: f  reason: collision with root package name */
    private MaxInterstitialAd f5002f;

    /* renamed from: g  reason: collision with root package name */
    private MaxAppOpenAd f5003g;

    /* renamed from: h  reason: collision with root package name */
    private MaxRewardedInterstitialAd f5004h;
    private MaxRewardedAd i;
    private MaxNativeAdView j;
    private MaxNativeAdLoader k;
    private d l;
    private ListView m;
    private View n;
    private AdControlButton o;
    private TextView p;
    private com.applovin.impl.mediation.debugger.a.a q;

    private void a() {
        String a2 = this.f4998b.a();
        if (this.f4998b.d().isAdViewAd()) {
            MaxAdView maxAdView = new MaxAdView(a2, this.f4998b.d(), this.f4997a.ab(), this);
            this.f5001e = maxAdView;
            maxAdView.setExtraParameter(AppLovinSdkExtraParameterKey.IS_ADAPTIVE_BANNER, "false");
            this.f5001e.setListener(this);
        } else if (MaxAdFormat.INTERSTITIAL == this.f4998b.d()) {
            MaxInterstitialAd maxInterstitialAd = new MaxInterstitialAd(a2, this.f4997a.ab(), this);
            this.f5002f = maxInterstitialAd;
            maxInterstitialAd.setListener(this);
        } else if (MaxAdFormat.APP_OPEN == this.f4998b.d()) {
            MaxAppOpenAd maxAppOpenAd = new MaxAppOpenAd(a2, this.f4997a.ab());
            this.f5003g = maxAppOpenAd;
            maxAppOpenAd.setListener(this);
        } else if (MaxAdFormat.REWARDED_INTERSTITIAL == this.f4998b.d()) {
            MaxRewardedInterstitialAd maxRewardedInterstitialAd = new MaxRewardedInterstitialAd(a2, this.f4997a.ab(), this);
            this.f5004h = maxRewardedInterstitialAd;
            maxRewardedInterstitialAd.setListener(this);
        } else if (MaxAdFormat.REWARDED == this.f4998b.d()) {
            MaxRewardedAd maxRewardedAd = MaxRewardedAd.getInstance(a2, this.f4997a.ab(), this);
            this.i = maxRewardedAd;
            maxRewardedAd.setListener(this);
        } else if (MaxAdFormat.NATIVE == this.f4998b.d()) {
            MaxNativeAdLoader maxNativeAdLoader = new MaxNativeAdLoader(a2, this.f4997a.ab(), this);
            this.k = maxNativeAdLoader;
            maxNativeAdLoader.setNativeAdListener(new MaxNativeAdListener() { // from class: com.applovin.impl.mediation.debugger.ui.a.a.2
                @Override // com.applovin.mediation.nativeAds.MaxNativeAdListener
                public void onNativeAdClicked(MaxAd maxAd) {
                    a.this.onAdClicked(maxAd);
                }

                @Override // com.applovin.mediation.nativeAds.MaxNativeAdListener
                public void onNativeAdLoadFailed(String str, MaxError maxError) {
                    a.this.onAdLoadFailed(str, maxError);
                }

                @Override // com.applovin.mediation.nativeAds.MaxNativeAdListener
                public void onNativeAdLoaded(MaxNativeAdView maxNativeAdView, MaxAd maxAd) {
                    if (maxNativeAdView != null) {
                        a.this.j = maxNativeAdView;
                    } else {
                        a.this.j = new MaxNativeAdView(MaxNativeAdView.MEDIUM_TEMPLATE_1, a.this.f4997a.P());
                        a.this.k.render(a.this.j, maxAd);
                    }
                    a.this.onAdLoaded(maxAd);
                }
            });
            this.k.setRevenueListener(this);
        }
    }

    private void a(final ViewGroup viewGroup, AppLovinSdkUtils.Size size, DialogInterface.OnShowListener onShowListener) {
        if (this.l != null) {
            return;
        }
        d dVar = new d(viewGroup, size, this);
        this.l = dVar;
        dVar.setOnShowListener(onShowListener);
        this.l.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.applovin.impl.mediation.debugger.ui.a.a.4
            @Override // android.content.DialogInterface.OnDismissListener
            public void onDismiss(DialogInterface dialogInterface) {
                ViewGroup viewGroup2 = viewGroup;
                if (viewGroup2 instanceof MaxAdView) {
                    ((MaxAdView) viewGroup2).stopAutoRefresh();
                }
                a.this.l = null;
            }
        });
        this.l.show();
    }

    private void a(MaxAdFormat maxAdFormat) {
        if (this.f5000d != null) {
            this.f4997a.N().a(this.f5000d.a().a());
            this.f4997a.N().a(true);
        }
        if (maxAdFormat.isAdViewAd()) {
            this.f5001e.setPlacement("[Mediation Debugger Live Ad]");
            this.f5001e.loadAd();
        } else if (MaxAdFormat.INTERSTITIAL == this.f4998b.d()) {
            this.f5002f.loadAd();
        } else if (MaxAdFormat.APP_OPEN == this.f4998b.d()) {
            this.f5003g.loadAd();
        } else if (MaxAdFormat.REWARDED_INTERSTITIAL == this.f4998b.d()) {
            this.f5004h.loadAd();
        } else if (MaxAdFormat.REWARDED == this.f4998b.d()) {
            this.i.loadAd();
        } else if (MaxAdFormat.NATIVE != this.f4998b.d()) {
            Utils.showToast("Live ads currently unavailable for ad format", this);
        } else {
            this.k.setPlacement("[Mediation Debugger Live Ad]");
            this.k.loadAd();
        }
    }

    private void b(MaxAdFormat maxAdFormat) {
        if (maxAdFormat.isAdViewAd()) {
            a(this.f5001e, maxAdFormat.getSize(), new DialogInterface.OnShowListener() { // from class: com.applovin.impl.mediation.debugger.ui.a.a.3
                @Override // android.content.DialogInterface.OnShowListener
                public void onShow(DialogInterface dialogInterface) {
                    a.this.f5001e.startAutoRefresh();
                }
            });
        } else if (MaxAdFormat.INTERSTITIAL == this.f4998b.d()) {
            this.f5002f.showAd("[Mediation Debugger Live Ad]");
        } else if (MaxAdFormat.APP_OPEN == this.f4998b.d()) {
            this.f5003g.showAd("[Mediation Debugger Live Ad]");
        } else if (MaxAdFormat.REWARDED_INTERSTITIAL == this.f4998b.d()) {
            this.f5004h.showAd("[Mediation Debugger Live Ad]");
        } else if (MaxAdFormat.REWARDED == this.f4998b.d()) {
            this.i.showAd("[Mediation Debugger Live Ad]");
        } else if (MaxAdFormat.NATIVE == this.f4998b.d()) {
            a(this.j, MaxAdFormat.MREC.getSize(), null);
        }
    }

    @Override // com.applovin.impl.mediation.debugger.ui.a
    protected n getSdk() {
        return this.f4997a;
    }

    public void initialize(final com.applovin.impl.mediation.debugger.b.a.a aVar, com.applovin.impl.mediation.debugger.b.a.b bVar, final n nVar) {
        List<?> a2;
        this.f4997a = nVar;
        this.f4998b = aVar;
        this.f5000d = bVar;
        b bVar2 = new b(aVar, bVar, this);
        this.f4999c = bVar2;
        bVar2.a(new d.a() { // from class: com.applovin.impl.mediation.debugger.ui.a.a.1
            @Override // com.applovin.impl.mediation.debugger.ui.d.d.a
            public void a(com.applovin.impl.mediation.debugger.ui.d.a aVar2, final com.applovin.impl.mediation.debugger.ui.d.c cVar) {
                if (cVar instanceof b.a) {
                    com.applovin.impl.sdk.utils.b.a(a.this, MaxDebuggerAdUnitDetailActivity.class, nVar.ai(), new b.a<MaxDebuggerAdUnitDetailActivity>() { // from class: com.applovin.impl.mediation.debugger.ui.a.a.1.1
                        @Override // com.applovin.impl.sdk.utils.b.a
                        public void a(MaxDebuggerAdUnitDetailActivity maxDebuggerAdUnitDetailActivity) {
                            maxDebuggerAdUnitDetailActivity.initialize(aVar, ((b.a) cVar).d(), nVar);
                        }
                    });
                }
            }
        });
        a();
        if (aVar.e().d()) {
            if ((bVar != null && !bVar.a().c().A()) || (a2 = nVar.K().a(aVar.a())) == null || a2.isEmpty()) {
                return;
            }
            this.q = new com.applovin.impl.mediation.debugger.a.a(a2, aVar.d(), this);
        }
    }

    @Override // com.applovin.mediation.MaxAdListener
    public void onAdClicked(MaxAd maxAd) {
        Utils.showToast("onAdClicked", maxAd, this);
    }

    @Override // com.applovin.mediation.MaxAdViewAdListener
    public void onAdCollapsed(MaxAd maxAd) {
        Utils.showToast("onAdCollapsed", maxAd, this);
    }

    @Override // com.applovin.mediation.MaxAdListener
    public void onAdDisplayFailed(MaxAd maxAd, MaxError maxError) {
        this.o.setControlState(AdControlButton.b.LOAD);
        this.p.setText("");
        Utils.showAlert("Failed to display " + maxAd.getFormat().getDisplayName(), "MAX Error\nCode: " + maxError.getCode() + "\nMessage: " + maxError.getMessage() + "\n\n" + maxAd.getNetworkName() + " Display Error\nCode: " + maxError.getMediatedNetworkErrorCode() + "\nMessage: " + maxError.getMediatedNetworkErrorMessage(), this);
    }

    @Override // com.applovin.mediation.MaxAdListener
    public void onAdDisplayed(MaxAd maxAd) {
        Utils.showToast("onAdDisplayed", maxAd, this);
    }

    @Override // com.applovin.mediation.MaxAdViewAdListener
    public void onAdExpanded(MaxAd maxAd) {
        Utils.showToast("onAdExpanded", maxAd, this);
    }

    @Override // com.applovin.mediation.MaxAdListener
    public void onAdHidden(MaxAd maxAd) {
        Utils.showToast("onAdHidden", maxAd, this);
    }

    @Override // com.applovin.impl.mediation.debugger.a.a.InterfaceC0069a
    public void onAdLoadFailed(AdError adError, MaxAdFormat maxAdFormat) {
        if (maxAdFormat.isAdViewAd()) {
            this.f5001e.setLocalExtraParameter("amazon_ad_error", adError);
        } else if (MaxAdFormat.INTERSTITIAL == maxAdFormat) {
            this.f5002f.setLocalExtraParameter("amazon_ad_error", adError);
        } else if (MaxAdFormat.APP_OPEN == maxAdFormat) {
            this.f5003g.setLocalExtraParameter("amazon_ad_error", adError);
        } else if (MaxAdFormat.REWARDED_INTERSTITIAL == maxAdFormat) {
            this.f5004h.setLocalExtraParameter("amazon_ad_error", adError);
        } else if (MaxAdFormat.REWARDED == maxAdFormat) {
            this.i.setLocalExtraParameter("amazon_ad_error", adError);
        } else if (MaxAdFormat.NATIVE == maxAdFormat) {
            this.k.setLocalExtraParameter("amazon_ad_error", adError);
        }
        a(maxAdFormat);
    }

    @Override // com.applovin.mediation.MaxAdListener
    public void onAdLoadFailed(String str, MaxError maxError) {
        this.o.setControlState(AdControlButton.b.LOAD);
        this.p.setText("");
        if (204 == maxError.getCode()) {
            Utils.showAlert("No Fill", "No fills often happen in live environments. Please make sure to use the Mediation Debugger test mode before you go live.", this);
        } else {
            Utils.showAlert("", "Failed to load with error code: " + maxError.getCode(), this);
        }
    }

    @Override // com.applovin.mediation.MaxAdListener
    public void onAdLoaded(MaxAd maxAd) {
        this.p.setText(maxAd.getNetworkName() + " ad loaded");
        this.o.setControlState(AdControlButton.b.SHOW);
        if (maxAd.getFormat().isAdViewAd()) {
            a(this.f5001e, maxAd.getFormat().getSize(), null);
        } else if (MaxAdFormat.NATIVE == this.f4998b.d()) {
            a(this.j, MaxAdFormat.MREC.getSize(), null);
        }
    }

    @Override // com.applovin.impl.mediation.debugger.a.a.InterfaceC0069a
    public void onAdResponseLoaded(DTBAdResponse dTBAdResponse, MaxAdFormat maxAdFormat) {
        if (maxAdFormat.isAdViewAd()) {
            this.f5001e.setLocalExtraParameter("amazon_ad_response", dTBAdResponse);
        } else if (MaxAdFormat.INTERSTITIAL == maxAdFormat) {
            this.f5002f.setLocalExtraParameter("amazon_ad_response", dTBAdResponse);
        } else if (MaxAdFormat.APP_OPEN == maxAdFormat) {
            this.f5003g.setLocalExtraParameter("amazon_ad_response", dTBAdResponse);
        } else if (MaxAdFormat.REWARDED_INTERSTITIAL == maxAdFormat) {
            this.f5004h.setLocalExtraParameter("amazon_ad_response", dTBAdResponse);
        } else if (MaxAdFormat.REWARDED == maxAdFormat) {
            this.i.setLocalExtraParameter("amazon_ad_response", dTBAdResponse);
        } else if (MaxAdFormat.NATIVE == maxAdFormat) {
            this.k.setLocalExtraParameter("amazon_ad_response", dTBAdResponse);
        }
        a(maxAdFormat);
    }

    @Override // com.applovin.mediation.MaxAdRevenueListener
    public void onAdRevenuePaid(MaxAd maxAd) {
        Utils.showToast("onAdRevenuePaid", maxAd, this);
    }

    @Override // com.applovin.impl.mediation.debugger.ui.testmode.AdControlButton.a
    public void onClick(AdControlButton adControlButton) {
        if (this.f4997a.N().a()) {
            Utils.showAlert("Not Supported", "Ad loads are not supported while Test Mode is enabled. Please restart the app.", this);
            return;
        }
        MaxAdFormat d2 = this.f4998b.d();
        if (AdControlButton.b.LOAD == adControlButton.getControlState()) {
            adControlButton.setControlState(AdControlButton.b.LOADING);
            com.applovin.impl.mediation.debugger.a.a aVar = this.q;
            if (aVar != null) {
                aVar.a();
            } else {
                a(d2);
            }
        } else if (AdControlButton.b.SHOW == adControlButton.getControlState()) {
            if (!d2.isAdViewAd() && d2 != MaxAdFormat.NATIVE) {
                adControlButton.setControlState(AdControlButton.b.LOAD);
            }
            b(d2);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.applovin.impl.mediation.debugger.ui.a, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.mediation_debugger_ad_unit_detail_activity);
        setTitle(this.f4999c.a());
        this.m = (ListView) findViewById(R.id.listView);
        this.n = findViewById(R.id.ad_presenter_view);
        this.o = (AdControlButton) findViewById(R.id.ad_control_button);
        this.p = (TextView) findViewById(R.id.status_textview);
        this.m.setAdapter((ListAdapter) this.f4999c);
        this.p.setText(this.f4997a.N().a() ? "Not Supported while Test Mode is enabled" : "Tap to load an ad");
        this.p.setTypeface(Typeface.DEFAULT_BOLD);
        this.o.setOnClickListener(this);
        ShapeDrawable shapeDrawable = new ShapeDrawable();
        shapeDrawable.setPadding(0, 10, 0, 0);
        shapeDrawable.getPaint().setColor(-1);
        shapeDrawable.getPaint().setShadowLayer(10, 0.0f, -10, 855638016);
        shapeDrawable.setShape(new RectShape());
        LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{shapeDrawable});
        layerDrawable.setLayerInset(0, 0, 10, 0, 0);
        this.n.setBackground(layerDrawable);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.applovin.impl.mediation.debugger.ui.a, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        if (this.f5000d != null) {
            this.f4997a.N().a((String) null);
            this.f4997a.N().a(false);
        }
        MaxAdView maxAdView = this.f5001e;
        if (maxAdView != null) {
            maxAdView.destroy();
        }
        MaxInterstitialAd maxInterstitialAd = this.f5002f;
        if (maxInterstitialAd != null) {
            maxInterstitialAd.destroy();
        }
        MaxAppOpenAd maxAppOpenAd = this.f5003g;
        if (maxAppOpenAd != null) {
            maxAppOpenAd.destroy();
        }
        MaxRewardedInterstitialAd maxRewardedInterstitialAd = this.f5004h;
        if (maxRewardedInterstitialAd != null) {
            maxRewardedInterstitialAd.destroy();
        }
        MaxRewardedAd maxRewardedAd = this.i;
        if (maxRewardedAd != null) {
            maxRewardedAd.destroy();
        }
    }

    @Override // com.applovin.mediation.MaxRewardedAdListener
    public void onRewardedVideoCompleted(MaxAd maxAd) {
        Utils.showToast("onRewardedVideoCompleted", maxAd, this);
    }

    @Override // com.applovin.mediation.MaxRewardedAdListener
    public void onRewardedVideoStarted(MaxAd maxAd) {
        Utils.showToast("onRewardedVideoStarted", maxAd, this);
    }

    @Override // com.applovin.mediation.MaxRewardedAdListener
    public void onUserRewarded(MaxAd maxAd, MaxReward maxReward) {
        Utils.showToast("onUserRewarded", maxAd, this);
    }
}
