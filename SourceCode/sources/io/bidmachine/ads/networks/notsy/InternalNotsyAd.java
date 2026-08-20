package io.bidmachine.ads.networks.notsy;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.ads.admanager.AdManagerAdRequest;
import io.bidmachine.AdsFormat;
import io.bidmachine.core.AdapterLogger;
import io.bidmachine.core.Utils;
import io.bidmachine.utils.BMError;
import java.lang.ref.WeakReference;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public abstract class InternalNotsyAd {
    private final InternalNotsyAdUnit adUnit;
    private WeakReference<InternalNotsyAdPresentListener> weakAdPresentListener;
    private final Object statusLock = new Object();
    private Status status = Status.Idle;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public enum Status {
        Idle,
        Loading,
        Loaded,
        Showing,
        Shown
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void destroyAd() throws Throwable;

    protected abstract void loadAd(Context context, InternalLoadListener internalLoadListener) throws Throwable;

    /* JADX INFO: Access modifiers changed from: package-private */
    public InternalNotsyAd(InternalNotsyAdUnit internalNotsyAdUnit) {
        this.adUnit = internalNotsyAdUnit;
    }

    public void setAdPresentListener(InternalNotsyAdPresentListener internalNotsyAdPresentListener) {
        this.weakAdPresentListener = new WeakReference<>(internalNotsyAdPresentListener);
    }

    public void destroy() {
        Utils.onUiThread(new Runnable() { // from class: io.bidmachine.ads.networks.notsy.InternalNotsyAd$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                InternalNotsyAd.this.m494x9c6f75f7();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$destroy$0$io-bidmachine-ads-networks-notsy-InternalNotsyAd  reason: not valid java name */
    public /* synthetic */ void m494x9c6f75f7() {
        try {
            WeakReference<InternalNotsyAdPresentListener> weakReference = this.weakAdPresentListener;
            if (weakReference != null) {
                weakReference.clear();
                this.weakAdPresentListener = null;
            }
            NotsyLoader.onNotsyAdDestroy(this, this.status == Status.Shown);
        } catch (Throwable th) {
            AdapterLogger.logThrowable(th);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void load(Context context, final InternalLoadListener internalLoadListener) {
        final Context applicationContext = context.getApplicationContext();
        Utils.onUiThread(new Runnable() { // from class: io.bidmachine.ads.networks.notsy.InternalNotsyAd$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                InternalNotsyAd.this.m495lambda$load$1$iobidmachineadsnetworksnotsyInternalNotsyAd(applicationContext, internalLoadListener);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$load$1$io-bidmachine-ads-networks-notsy-InternalNotsyAd  reason: not valid java name */
    public /* synthetic */ void m495lambda$load$1$iobidmachineadsnetworksnotsyInternalNotsyAd(Context context, InternalLoadListener internalLoadListener) {
        try {
            setStatus(Status.Loading);
            loadAd(context, internalLoadListener);
        } catch (Throwable th) {
            AdapterLogger.logThrowable(th);
            internalLoadListener.onAdLoadFailed(this, BMError.internal("Exception when loading ad object"));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public InternalNotsyAdUnit getAdUnit() {
        return this.adUnit;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AdsFormat getAdsFormat() {
        return this.adUnit.getAdsFormat();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public InternalNotsyData getInternalNotsyData() {
        return getAdUnit().getInternalNotsyData();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getAdUnitId() {
        return getInternalNotsyData().getAdUnitId();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float getScope() {
        return getInternalNotsyData().getScore();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public InternalNotsyAdPresentListener getAdPresentListener() {
        return this.weakAdPresentListener.get();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setStatus(Status status) {
        synchronized (this.statusLock) {
            this.status = status;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isLoaded() {
        boolean z;
        synchronized (this.statusLock) {
            z = this.status == Status.Loaded;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AdManagerAdRequest createAdManagerAdRequest() {
        AdManagerAdRequest.Builder builder = new AdManagerAdRequest.Builder();
        for (Map.Entry<String, String> entry : this.adUnit.getCustomTargeting().entrySet()) {
            String key = entry.getKey();
            String value = entry.getValue();
            if (!TextUtils.isEmpty(key) && !TextUtils.isEmpty(value)) {
                builder.addCustomTargeting(key, value);
            }
        }
        return builder.build();
    }

    /* loaded from: classes5.dex */
    static class Factory {
        Factory() {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static InternalNotsyAd create(InternalNotsyAdUnit internalNotsyAdUnit) {
            switch (AnonymousClass1.$SwitchMap$io$bidmachine$AdsFormat[internalNotsyAdUnit.getAdsFormat().ordinal()]) {
                case 1:
                case 2:
                case 3:
                case 4:
                    return new InternalNotsyBannerAd(internalNotsyAdUnit);
                case 5:
                case 6:
                case 7:
                    return new InternalNotsyInterstitialAd(internalNotsyAdUnit);
                case 8:
                case 9:
                case 10:
                    return new InternalNotsyRewardedAd(internalNotsyAdUnit);
                default:
                    return null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: io.bidmachine.ads.networks.notsy.InternalNotsyAd$1  reason: invalid class name */
    /* loaded from: classes5.dex */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$io$bidmachine$AdsFormat;

        static {
            int[] iArr = new int[AdsFormat.values().length];
            $SwitchMap$io$bidmachine$AdsFormat = iArr;
            try {
                iArr[AdsFormat.Banner.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$io$bidmachine$AdsFormat[AdsFormat.Banner_320x50.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$io$bidmachine$AdsFormat[AdsFormat.Banner_728x90.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$io$bidmachine$AdsFormat[AdsFormat.Banner_300x250.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$io$bidmachine$AdsFormat[AdsFormat.Interstitial.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$io$bidmachine$AdsFormat[AdsFormat.InterstitialStatic.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$io$bidmachine$AdsFormat[AdsFormat.InterstitialVideo.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$io$bidmachine$AdsFormat[AdsFormat.Rewarded.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$io$bidmachine$AdsFormat[AdsFormat.RewardedStatic.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$io$bidmachine$AdsFormat[AdsFormat.RewardedVideo.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
        }
    }
}
