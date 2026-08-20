package com.unity3d.scar.adapter.v2100;

import android.content.Context;
import com.unity3d.scar.adapter.common.IAdsErrorHandler;
import com.unity3d.scar.adapter.common.IScarAdapter;
import com.unity3d.scar.adapter.common.IScarInterstitialAdListenerWrapper;
import com.unity3d.scar.adapter.common.IScarRewardedAdListenerWrapper;
import com.unity3d.scar.adapter.common.ScarAdapterBase;
import com.unity3d.scar.adapter.common.Utils;
import com.unity3d.scar.adapter.common.requests.RequestExtras;
import com.unity3d.scar.adapter.common.scarads.IScarLoadListener;
import com.unity3d.scar.adapter.common.scarads.ScarAdMetadata;
import com.unity3d.scar.adapter.v2100.requests.AdRequestFactory;
import com.unity3d.scar.adapter.v2100.scarads.ScarInterstitialAd;
import com.unity3d.scar.adapter.v2100.scarads.ScarRewardedAd;
import com.unity3d.scar.adapter.v2100.signals.SignalsCollector;
/* loaded from: classes3.dex */
public class ScarAdapter extends ScarAdapterBase implements IScarAdapter {
    private AdRequestFactory _adRequestFactory;

    public ScarAdapter(IAdsErrorHandler iAdsErrorHandler, String str) {
        super(iAdsErrorHandler);
        this._adRequestFactory = new AdRequestFactory(new RequestExtras(str));
        this._signalCollector = new SignalsCollector(this._adRequestFactory);
    }

    @Override // com.unity3d.scar.adapter.common.IScarAdapter
    public void loadInterstitialAd(Context context, final ScarAdMetadata scarAdMetadata, IScarInterstitialAdListenerWrapper iScarInterstitialAdListenerWrapper) {
        final ScarInterstitialAd scarInterstitialAd = new ScarInterstitialAd(context, this._adRequestFactory, scarAdMetadata, this._adsErrorHandler, iScarInterstitialAdListenerWrapper);
        Utils.runOnUiThread(new Runnable() { // from class: com.unity3d.scar.adapter.v2100.ScarAdapter.1
            @Override // java.lang.Runnable
            public void run() {
                scarInterstitialAd.loadAd(new IScarLoadListener() { // from class: com.unity3d.scar.adapter.v2100.ScarAdapter.1.1
                    @Override // com.unity3d.scar.adapter.common.scarads.IScarLoadListener
                    public void onAdLoaded() {
                        ScarAdapter.this._loadedAds.put(scarAdMetadata.getPlacementId(), scarInterstitialAd);
                    }
                });
            }
        });
    }

    @Override // com.unity3d.scar.adapter.common.IScarAdapter
    public void loadRewardedAd(Context context, final ScarAdMetadata scarAdMetadata, IScarRewardedAdListenerWrapper iScarRewardedAdListenerWrapper) {
        final ScarRewardedAd scarRewardedAd = new ScarRewardedAd(context, this._adRequestFactory, scarAdMetadata, this._adsErrorHandler, iScarRewardedAdListenerWrapper);
        Utils.runOnUiThread(new Runnable() { // from class: com.unity3d.scar.adapter.v2100.ScarAdapter.2
            @Override // java.lang.Runnable
            public void run() {
                scarRewardedAd.loadAd(new IScarLoadListener() { // from class: com.unity3d.scar.adapter.v2100.ScarAdapter.2.1
                    @Override // com.unity3d.scar.adapter.common.scarads.IScarLoadListener
                    public void onAdLoaded() {
                        ScarAdapter.this._loadedAds.put(scarAdMetadata.getPlacementId(), scarRewardedAd);
                    }
                });
            }
        });
    }
}
