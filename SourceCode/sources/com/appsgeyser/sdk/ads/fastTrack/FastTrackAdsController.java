package com.appsgeyser.sdk.ads.fastTrack;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.view.ViewGroup;
import com.appsgeyser.sdk.InternalEntryPoint;
import com.appsgeyser.sdk.ads.fastTrack.FastTrackAdsController;
import com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackAdmobAdapter;
import com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackAppnextAdapter;
import com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackAppodealAdapter;
import com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackBaseAdapter;
import com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackDisabledAdapter;
import com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackFacebookAdapter;
import com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackHtmlAdapter;
import com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackMultiAdsAdapter;
import com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackUnityAdapter;
import com.appsgeyser.sdk.configuration.models.ConfigPhp;
import com.appsgeyser.sdk.inapp.PurchaseController;
import com.appsgeyser.sdk.inapp.models.statuses.Status;
import com.appsgeyser.sdk.inapp.models.statuses.SuccessStatus;
import com.appsgeyser.sdk.inapp.utils.DisableAdsSharedPrefs;
import com.appsgeyser.sdk.server.StatController;
import com.appsgeyser.sdk.ui.AppsgeyserProgressDialog;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import rx.functions.Action1;
import rx.subjects.BehaviorSubject;
/* loaded from: classes2.dex */
public class FastTrackAdsController {
    public static final String fastTrackLogTag = "fastTrackTag";
    private static FastTrackAdsController instance;
    private FastTrackBaseAdapter adsAdapter;
    private String fullscreenPendingLoadTag;
    private String fullscreenPendingPlacementTag;
    private boolean fullscreenPendingUseFrequencyTimer;
    private boolean isActive;
    private boolean isNativeEnable;
    private BehaviorSubject<ContextConfigWrapper> consentPendingBlocker = BehaviorSubject.create();
    private BehaviorSubject<FastTrackBaseAdapter.FullscreenListener> fullscreenListenerPublishSubject = BehaviorSubject.create();
    private BehaviorSubject<BannerViewPlacementWrapper> bannerViewPlacementPublishSubject = BehaviorSubject.create();
    private BehaviorSubject<NativeViewReadyListenerWrapper> nativeViewReadyListenerWrapperBehaviorSubject = BehaviorSubject.create();
    private BehaviorSubject<NativeAdRequestWrapper> nativeAdRequestWrapperBehaviorSubject = BehaviorSubject.create();
    private WeakReference<Activity> bannerActivityTmp = null;
    private WeakReference<ViewGroup> bannerViewContainerTmp = null;
    private String bannerPlacementTagTmp = null;

    private FastTrackAdsController() {
    }

    public static synchronized FastTrackAdsController getInstance() {
        FastTrackAdsController fastTrackAdsController;
        synchronized (FastTrackAdsController.class) {
            if (instance == null) {
                instance = new FastTrackAdsController();
            }
            fastTrackAdsController = instance;
        }
        return fastTrackAdsController;
    }

    public void requestInit(ConfigPhp configPhp, Context context) {
        if (configPhp.getActiveAdsSDK() != null) {
            this.consentPendingBlocker.onNext(new ContextConfigWrapper(configPhp, context));
        } else {
            Log.d(fastTrackLogTag, "ads requestInit cancelled, incorrect config");
        }
    }

    public void consentRequestProcessFinished() {
        this.consentPendingBlocker.subscribe(new Action1() { // from class: com.appsgeyser.sdk.ads.fastTrack.FastTrackAdsController$$ExternalSyntheticLambda0
            @Override // rx.functions.Action1
            public final void call(Object obj) {
                FastTrackAdsController.this.init((FastTrackAdsController.ContextConfigWrapper) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void init(final ContextConfigWrapper contextConfigWrapper) {
        Log.d(fastTrackLogTag, contextConfigWrapper.getConfigPhp().toString());
        FastTrackSdkModel activeAdsSDK = contextConfigWrapper.getConfigPhp().getActiveAdsSDK();
        String name = activeAdsSDK.getName();
        name.hashCode();
        char c2 = 65535;
        switch (name.hashCode()) {
            case -1892803072:
                if (name.equals(StatController.KEY_APPODEAL)) {
                    c2 = 0;
                    break;
                }
                break;
            case -963943683:
                if (name.equals(StatController.KEY_ADMOB)) {
                    c2 = 1;
                    break;
                }
                break;
            case -790102013:
                if (name.equals(StatController.KEY_MULTIADS)) {
                    c2 = 2;
                    break;
                }
                break;
            case -291586939:
                if (name.equals(StatController.KEY_UNITY)) {
                    c2 = 3;
                    break;
                }
                break;
            case 958098324:
                if (name.equals(StatController.KEY_FACEBOOK)) {
                    c2 = 4;
                    break;
                }
                break;
            case 1236048015:
                if (name.equals(StatController.KEY_HTML)) {
                    c2 = 5;
                    break;
                }
                break;
            case 1314914054:
                if (name.equals(StatController.KEY_APPNEXT)) {
                    c2 = 6;
                    break;
                }
                break;
        }
        switch (c2) {
            case 0:
                Log.d(fastTrackLogTag, "initializing appodeal adsAdapter");
                this.adsAdapter = new FastTrackAppodealAdapter(activeAdsSDK, contextConfigWrapper.getContext());
                this.isNativeEnable = true;
                break;
            case 1:
                Log.d(fastTrackLogTag, "initializing admob adsAdapter");
                this.adsAdapter = new FastTrackAdmobAdapter(activeAdsSDK, contextConfigWrapper.getContext());
                this.isNativeEnable = true;
                break;
            case 2:
                Log.d(fastTrackLogTag, "initializing multiAds adsAdapter");
                this.adsAdapter = new FastTrackMultiAdsAdapter(activeAdsSDK, contextConfigWrapper.getContext());
                break;
            case 3:
                Log.d(fastTrackLogTag, "initializing unity adsAdapter");
                this.adsAdapter = new FastTrackUnityAdapter(activeAdsSDK, contextConfigWrapper.getContext());
                break;
            case 4:
                Log.d(fastTrackLogTag, "initializing facebook adsAdapter");
                this.adsAdapter = new FastTrackFacebookAdapter(activeAdsSDK, contextConfigWrapper.getContext());
                break;
            case 5:
                Log.d(fastTrackLogTag, "initializing html adsAdapter");
                this.adsAdapter = new FastTrackHtmlAdapter(activeAdsSDK, contextConfigWrapper.getContext());
                break;
            case 6:
                Log.d(fastTrackLogTag, "initializing appnext adsAdapter");
                this.adsAdapter = new FastTrackAppnextAdapter(activeAdsSDK, contextConfigWrapper.getContext());
                break;
            default:
                Log.d(fastTrackLogTag, "Unknown adsAdapter: " + activeAdsSDK.getName() + " . Disabling ads controller.");
                this.adsAdapter = new FastTrackDisabledAdapter(activeAdsSDK, contextConfigWrapper.getContext());
                break;
        }
        this.fullscreenListenerPublishSubject.subscribe(new Action1() { // from class: com.appsgeyser.sdk.ads.fastTrack.FastTrackAdsController$$ExternalSyntheticLambda3
            @Override // rx.functions.Action1
            public final void call(Object obj) {
                FastTrackAdsController.this.m162x5b6f0f0a((FastTrackBaseAdapter.FullscreenListener) obj);
            }
        });
        this.bannerViewPlacementPublishSubject.subscribe(new Action1() { // from class: com.appsgeyser.sdk.ads.fastTrack.FastTrackAdsController$$ExternalSyntheticLambda4
            @Override // rx.functions.Action1
            public final void call(Object obj) {
                FastTrackAdsController.this.m163x8103180b((FastTrackAdsController.BannerViewPlacementWrapper) obj);
            }
        });
        this.nativeViewReadyListenerWrapperBehaviorSubject.subscribe(new Action1() { // from class: com.appsgeyser.sdk.ads.fastTrack.FastTrackAdsController$$ExternalSyntheticLambda5
            @Override // rx.functions.Action1
            public final void call(Object obj) {
                FastTrackAdsController.this.m164xa697210c((FastTrackAdsController.NativeViewReadyListenerWrapper) obj);
            }
        });
        this.nativeAdRequestWrapperBehaviorSubject.subscribe(new Action1() { // from class: com.appsgeyser.sdk.ads.fastTrack.FastTrackAdsController$$ExternalSyntheticLambda6
            @Override // rx.functions.Action1
            public final void call(Object obj) {
                FastTrackAdsController.this.m165xcc2b2a0d((FastTrackAdsController.NativeAdRequestWrapper) obj);
            }
        });
        setActive(!DisableAdsSharedPrefs.getInstance().getDisableAdsActiveFlag());
        PurchaseController.getInstance().subscribeDisableAdsStatus(new Action1() { // from class: com.appsgeyser.sdk.ads.fastTrack.FastTrackAdsController$$ExternalSyntheticLambda7
            @Override // rx.functions.Action1
            public final void call(Object obj) {
                FastTrackAdsController.this.m167x17533c0f(contextConfigWrapper, (Status) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$init$0$com-appsgeyser-sdk-ads-fastTrack-FastTrackAdsController  reason: not valid java name */
    public /* synthetic */ void m162x5b6f0f0a(FastTrackBaseAdapter.FullscreenListener fullscreenListener) {
        this.adsAdapter.setFullscreenListener(fullscreenListener);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$init$1$com-appsgeyser-sdk-ads-fastTrack-FastTrackAdsController  reason: not valid java name */
    public /* synthetic */ void m163x8103180b(BannerViewPlacementWrapper bannerViewPlacementWrapper) {
        this.adsAdapter.initBannerView(bannerViewPlacementWrapper.getBannerViewContainer(), bannerViewPlacementWrapper.getPlacementTag(), bannerViewPlacementWrapper.getActivity());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$init$2$com-appsgeyser-sdk-ads-fastTrack-FastTrackAdsController  reason: not valid java name */
    public /* synthetic */ void m164xa697210c(NativeViewReadyListenerWrapper nativeViewReadyListenerWrapper) {
        this.adsAdapter.setNativeViewReadyListener(nativeViewReadyListenerWrapper.getListener());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$init$3$com-appsgeyser-sdk-ads-fastTrack-FastTrackAdsController  reason: not valid java name */
    public /* synthetic */ void m165xcc2b2a0d(NativeAdRequestWrapper nativeAdRequestWrapper) {
        this.adsAdapter.sendNativeViewRequest();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$init$5$com-appsgeyser-sdk-ads-fastTrack-FastTrackAdsController  reason: not valid java name */
    public /* synthetic */ void m167x17533c0f(final ContextConfigWrapper contextConfigWrapper, final Status status) {
        new Handler(contextConfigWrapper.context.getMainLooper()).post(new Runnable() { // from class: com.appsgeyser.sdk.ads.fastTrack.FastTrackAdsController$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                FastTrackAdsController.this.m166xf1bf330e(status, contextConfigWrapper);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$init$4$com-appsgeyser-sdk-ads-fastTrack-FastTrackAdsController  reason: not valid java name */
    public /* synthetic */ void m166xf1bf330e(Status status, ContextConfigWrapper contextConfigWrapper) {
        String str;
        if (status instanceof SuccessStatus) {
            SuccessStatus successStatus = (SuccessStatus) status;
            setActive((successStatus.isFeatureActive() && successStatus.isFeaturePurchased()) ? false : true);
            if ((successStatus.isFeatureActive() && successStatus.isFeaturePurchased()) || (str = this.fullscreenPendingLoadTag) == null) {
                return;
            }
            showFullscreen(str, contextConfigWrapper.getContext(), this.fullscreenPendingPlacementTag, this.fullscreenPendingUseFrequencyTimer);
        }
    }

    private void setActive(boolean z) {
        this.isActive = z;
        if (z) {
            WeakReference<ViewGroup> weakReference = this.bannerViewContainerTmp;
            if (weakReference == null || this.bannerActivityTmp == null || this.bannerPlacementTagTmp == null) {
                return;
            }
            setBannerViewContainer(weakReference.get(), this.bannerActivityTmp.get(), this.bannerPlacementTagTmp);
            this.bannerViewContainerTmp = null;
            this.bannerActivityTmp = null;
            this.bannerPlacementTagTmp = null;
            return;
        }
        hideSmallBanner();
    }

    private void hideSmallBanner() {
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.appsgeyser.sdk.ads.fastTrack.FastTrackAdsController$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                FastTrackAdsController.this.m161x95d7d017();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$hideSmallBanner$6$com-appsgeyser-sdk-ads-fastTrack-FastTrackAdsController  reason: not valid java name */
    public /* synthetic */ void m161x95d7d017() {
        if (this.bannerViewPlacementPublishSubject.getValue() == null || this.bannerViewPlacementPublishSubject.getValue().bannerViewContainer == null) {
            return;
        }
        this.bannerViewPlacementPublishSubject.getValue().bannerViewContainer.setVisibility(8);
        onPause();
    }

    public void showFullscreen(String str, Context context) {
        showFullscreen(str, context, null, false);
    }

    public void showFullscreen(String str, Context context, String str2) {
        showFullscreen(str, context, str2, false);
    }

    public void showFullscreen(final String str, final Context context, final String str2, final boolean z) {
        if (this.isActive && !InternalEntryPoint.getInstance().isConsentRequestProcessActive()) {
            if (context != null) {
                this.adsAdapter.setContext(context);
                this.adsAdapter.setProgressDialog(new AppsgeyserProgressDialog(context));
            }
            new Handler(this.adsAdapter.getContext().getMainLooper()).postDelayed(new Runnable() { // from class: com.appsgeyser.sdk.ads.fastTrack.FastTrackAdsController$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    FastTrackAdsController.this.m168x82cf1159(str, str2, z, context);
                }
            }, 1000L);
            this.fullscreenPendingLoadTag = null;
            this.fullscreenPendingPlacementTag = null;
            this.fullscreenPendingUseFrequencyTimer = z;
            return;
        }
        this.fullscreenPendingLoadTag = str;
        this.fullscreenPendingPlacementTag = str2;
        this.fullscreenPendingUseFrequencyTimer = z;
        Log.d(fastTrackLogTag, "fasttrack controller not activated");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$showFullscreen$7$com-appsgeyser-sdk-ads-fastTrack-FastTrackAdsController  reason: not valid java name */
    public /* synthetic */ void m168x82cf1159(String str, String str2, boolean z, Context context) {
        this.adsAdapter.showFullscreen(str, str2, z, context);
        Log.d(fastTrackLogTag, "attempt to show fullscreen");
    }

    public void showPendingFullscreen(Context context) {
        String str = this.fullscreenPendingLoadTag;
        if (str != null) {
            showFullscreen(str, context, this.fullscreenPendingPlacementTag, this.fullscreenPendingUseFrequencyTimer);
        }
    }

    public void setFullscreenListener(FastTrackBaseAdapter.FullscreenListener fullscreenListener) {
        if (fullscreenListener != null) {
            this.fullscreenListenerPublishSubject.onNext(fullscreenListener);
        }
    }

    public void setBannerViewContainer(ViewGroup viewGroup, Activity activity) {
        setBannerViewContainer(viewGroup, activity, null);
    }

    public void setBannerViewContainer(ViewGroup viewGroup, Activity activity, String str) {
        if (viewGroup != null) {
            viewGroup.setVisibility(8);
            if (this.isActive) {
                this.bannerViewPlacementPublishSubject.onNext(new BannerViewPlacementWrapper(viewGroup, str, activity));
                return;
            }
            this.bannerActivityTmp = new WeakReference<>(activity);
            this.bannerViewContainerTmp = new WeakReference<>(viewGroup);
            this.bannerPlacementTagTmp = "onStart";
        }
    }

    public void showRewardedVideo(FastTrackBaseAdapter.RewardedVideoListener rewardedVideoListener) {
        showRewardedVideo(rewardedVideoListener, null);
    }

    public void showRewardedVideo(FastTrackBaseAdapter.RewardedVideoListener rewardedVideoListener, String str) {
        if (rewardedVideoListener != null) {
            if (this.isActive) {
                this.adsAdapter.showRewardedVideo(rewardedVideoListener, str);
                Log.d(fastTrackLogTag, "attempt to show rewardedVideo");
                return;
            }
            rewardedVideoListener.onVideoDeactivated();
            Log.d(fastTrackLogTag, "fasttrack controller not activated");
        }
    }

    public void showRewardedVideoWithDialog(FastTrackBaseAdapter.RewardedVideoListener rewardedVideoListener, String str, String str2, String str3, String str4) {
        if (rewardedVideoListener != null) {
            if (this.isActive) {
                this.adsAdapter.showRewardedVideoWithDialog(rewardedVideoListener, str, str2, str3, str4);
                Log.d(fastTrackLogTag, "attempt to show rewardedVideo with dialog");
                return;
            }
            rewardedVideoListener.onVideoDeactivated();
            Log.d(fastTrackLogTag, "fasttrack controller not activated");
        }
    }

    public boolean getRewardedPlacementActivationStatus(String str) {
        if (this.isActive) {
            return this.adsAdapter.getRewardedVideoActivationStatus(str).booleanValue();
        }
        return false;
    }

    public List<Object> getNativeAds(int i) {
        if (this.isActive) {
            return this.adsAdapter.getNativeAds(i);
        }
        return new ArrayList();
    }

    public boolean isActive() {
        return this.isActive;
    }

    public void onPause() {
        FastTrackBaseAdapter fastTrackBaseAdapter = this.adsAdapter;
        if (fastTrackBaseAdapter != null) {
            fastTrackBaseAdapter.onPause();
        }
    }

    public void onResume(Context context) {
        FastTrackBaseAdapter fastTrackBaseAdapter = this.adsAdapter;
        if (fastTrackBaseAdapter != null) {
            fastTrackBaseAdapter.onResume(context);
        }
    }

    public void onDestroy() {
        FastTrackBaseAdapter fastTrackBaseAdapter = this.adsAdapter;
        if (fastTrackBaseAdapter != null) {
            fastTrackBaseAdapter.onDestroy();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class ContextConfigWrapper {
        ConfigPhp configPhp;
        Context context;

        ContextConfigWrapper(ConfigPhp configPhp, Context context) {
            this.configPhp = configPhp;
            this.context = context;
        }

        ConfigPhp getConfigPhp() {
            return this.configPhp;
        }

        Context getContext() {
            return this.context;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class BannerViewPlacementWrapper {
        Activity activity;
        ViewGroup bannerViewContainer;
        String placementTag;

        BannerViewPlacementWrapper(ViewGroup viewGroup, String str, Activity activity) {
            this.bannerViewContainer = viewGroup;
            this.placementTag = str;
            this.activity = activity;
        }

        ViewGroup getBannerViewContainer() {
            return this.bannerViewContainer;
        }

        String getPlacementTag() {
            return this.placementTag;
        }

        Activity getActivity() {
            return this.activity;
        }
    }

    /* loaded from: classes2.dex */
    private class NativeBannerViewPlacementWrapper {
        ViewGroup nativeBannerViewContainer;

        NativeBannerViewPlacementWrapper(ViewGroup viewGroup) {
            this.nativeBannerViewContainer = viewGroup;
        }

        public ViewGroup getNativeBannerViewContainer() {
            return this.nativeBannerViewContainer;
        }
    }

    public boolean isNativeEnable() {
        return this.isNativeEnable;
    }

    public int getNativeStepByPlacementTag(String str) {
        return this.adsAdapter.getNativeStepByPlacementTag(str);
    }

    public boolean isNativePlacementActive(String str) {
        return this.adsAdapter.isNativePlacementActive(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class NativeViewReadyListenerWrapper {
        private FastTrackBaseAdapter.NativeViewReadyListener listener;

        public FastTrackBaseAdapter.NativeViewReadyListener getListener() {
            return this.listener;
        }

        NativeViewReadyListenerWrapper(FastTrackBaseAdapter.NativeViewReadyListener nativeViewReadyListener) {
            this.listener = nativeViewReadyListener;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class NativeAdRequestWrapper {
        private NativeAdRequestWrapper() {
        }
    }

    public void setNativeViewReadyListener(FastTrackBaseAdapter.NativeViewReadyListener nativeViewReadyListener) {
        if (this.isActive) {
            this.nativeViewReadyListenerWrapperBehaviorSubject.onNext(new NativeViewReadyListenerWrapper(nativeViewReadyListener));
        }
    }

    public void sendNativeViewRequest() {
        if (this.isActive) {
            this.nativeAdRequestWrapperBehaviorSubject.onNext(new NativeAdRequestWrapper());
        }
    }
}
