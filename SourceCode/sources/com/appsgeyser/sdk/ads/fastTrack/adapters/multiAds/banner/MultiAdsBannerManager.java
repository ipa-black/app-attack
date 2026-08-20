package com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.banner;

import android.content.Context;
import android.os.Handler;
import android.util.Log;
import android.util.TypedValue;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import com.appsgeyser.sdk.AppsgeyserSDK;
import com.appsgeyser.sdk.ads.AdView;
import com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackMultiAdsAdapter;
import com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.banner.MultiAdsBannerInterface;
import com.appsgeyser.sdk.configuration.models.AdNetworkSdkModel;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes2.dex */
public class MultiAdsBannerManager {
    private RelativeLayout adViewContainer;
    private AdView backfillAdView;
    private final Map<String, AdNetworkSdkModel> bannerPlacementIdMap;
    private Integer bannerRefreshRate;
    private ViewGroup bannerViewContainer;
    private Context context;
    private Handler handler;
    private ProgressBar progressBar;
    private int currentlyLoadingAdapterIndex = 0;
    private boolean noBannerAvailable = false;
    private final Runnable refreshBannerRunnable = new Runnable() { // from class: com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.banner.MultiAdsBannerManager$$ExternalSyntheticLambda1
        @Override // java.lang.Runnable
        public final void run() {
            MultiAdsBannerManager.this.m212xaa73da3a();
        }
    };
    private final Runnable nextAdapterTryLoadBannerRunnable = new Runnable() { // from class: com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.banner.MultiAdsBannerManager$$ExternalSyntheticLambda2
        @Override // java.lang.Runnable
        public final void run() {
            MultiAdsBannerManager.this.m213x8aed303b();
        }
    };
    private final Runnable tryLoadSdkBannerAgainRunnable = new Runnable() { // from class: com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.banner.MultiAdsBannerManager$$ExternalSyntheticLambda3
        @Override // java.lang.Runnable
        public final void run() {
            MultiAdsBannerManager.this.m214x6b66863c();
        }
    };
    private final ArrayList<MultiAdsBannerBaseAdapter> bannerAdaptersArrayList = new ArrayList<>(3);

    public MultiAdsBannerManager(Map<String, AdNetworkSdkModel> map, Context context, HashMap<String, String> hashMap) {
        this.bannerPlacementIdMap = map;
        this.context = context;
        this.handler = new Handler(context.getMainLooper());
        init(hashMap);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x005d, code lost:
        if (r3.equals(com.appsgeyser.sdk.server.StatController.KEY_ADMOB) == false) goto L9;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void init(java.util.HashMap<java.lang.String, java.lang.String> r7) {
        /*
            r6 = this;
            java.util.Map<java.lang.String, com.appsgeyser.sdk.configuration.models.AdNetworkSdkModel> r0 = r6.bannerPlacementIdMap
            java.util.Set r0 = r0.entrySet()
            java.util.Iterator r0 = r0.iterator()
        La:
            boolean r1 = r0.hasNext()
            r2 = 1
            if (r1 == 0) goto Ld1
            java.lang.Object r1 = r0.next()
            java.util.Map$Entry r1 = (java.util.Map.Entry) r1
            java.lang.Object r3 = r1.getValue()
            com.appsgeyser.sdk.configuration.models.AdNetworkSdkModel r3 = (com.appsgeyser.sdk.configuration.models.AdNetworkSdkModel) r3
            boolean r3 = r3.isActive()
            if (r3 == 0) goto La
            java.lang.Object r3 = r1.getKey()
            java.lang.String r3 = (java.lang.String) r3
            r3.hashCode()
            int r4 = r3.hashCode()
            r5 = -1
            switch(r4) {
                case -1892803072: goto L60;
                case -963943683: goto L57;
                case -291586939: goto L4c;
                case 958098324: goto L41;
                case 1314914054: goto L36;
                default: goto L34;
            }
        L34:
            r2 = r5
            goto L6a
        L36:
            java.lang.String r2 = "appnextSdk"
            boolean r2 = r3.equals(r2)
            if (r2 != 0) goto L3f
            goto L34
        L3f:
            r2 = 4
            goto L6a
        L41:
            java.lang.String r2 = "facebookSdk"
            boolean r2 = r3.equals(r2)
            if (r2 != 0) goto L4a
            goto L34
        L4a:
            r2 = 3
            goto L6a
        L4c:
            java.lang.String r2 = "unitySdk"
            boolean r2 = r3.equals(r2)
            if (r2 != 0) goto L55
            goto L34
        L55:
            r2 = 2
            goto L6a
        L57:
            java.lang.String r4 = "admobSdk"
            boolean r3 = r3.equals(r4)
            if (r3 != 0) goto L6a
            goto L34
        L60:
            java.lang.String r2 = "appodealSdk"
            boolean r2 = r3.equals(r2)
            if (r2 != 0) goto L69
            goto L34
        L69:
            r2 = 0
        L6a:
            switch(r2) {
                case 0: goto Lbd;
                case 1: goto La9;
                case 2: goto L95;
                case 3: goto L81;
                case 4: goto L6e;
                default: goto L6d;
            }
        L6d:
            goto La
        L6e:
            java.util.ArrayList<com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.banner.MultiAdsBannerBaseAdapter> r2 = r6.bannerAdaptersArrayList
            com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.banner.MultiAdsBannerAppnextAdapter r3 = new com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.banner.MultiAdsBannerAppnextAdapter
            android.content.Context r4 = r6.context
            java.lang.Object r1 = r1.getValue()
            com.appsgeyser.sdk.configuration.models.AdNetworkSdkModel r1 = (com.appsgeyser.sdk.configuration.models.AdNetworkSdkModel) r1
            r3.<init>(r4, r1, r7)
            r2.add(r3)
            goto La
        L81:
            java.util.ArrayList<com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.banner.MultiAdsBannerBaseAdapter> r2 = r6.bannerAdaptersArrayList
            com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.banner.MultiAdsBannerFacebookAdapter r3 = new com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.banner.MultiAdsBannerFacebookAdapter
            android.content.Context r4 = r6.context
            java.lang.Object r1 = r1.getValue()
            com.appsgeyser.sdk.configuration.models.AdNetworkSdkModel r1 = (com.appsgeyser.sdk.configuration.models.AdNetworkSdkModel) r1
            r3.<init>(r4, r1, r7)
            r2.add(r3)
            goto La
        L95:
            java.util.ArrayList<com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.banner.MultiAdsBannerBaseAdapter> r2 = r6.bannerAdaptersArrayList
            com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.banner.MultiAdsBannerUnityAdapter r3 = new com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.banner.MultiAdsBannerUnityAdapter
            android.content.Context r4 = r6.context
            java.lang.Object r1 = r1.getValue()
            com.appsgeyser.sdk.configuration.models.AdNetworkSdkModel r1 = (com.appsgeyser.sdk.configuration.models.AdNetworkSdkModel) r1
            r3.<init>(r4, r1, r7)
            r2.add(r3)
            goto La
        La9:
            java.util.ArrayList<com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.banner.MultiAdsBannerBaseAdapter> r2 = r6.bannerAdaptersArrayList
            com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.banner.MultiAdsBannerAdmobAdapter r3 = new com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.banner.MultiAdsBannerAdmobAdapter
            android.content.Context r4 = r6.context
            java.lang.Object r1 = r1.getValue()
            com.appsgeyser.sdk.configuration.models.AdNetworkSdkModel r1 = (com.appsgeyser.sdk.configuration.models.AdNetworkSdkModel) r1
            r3.<init>(r4, r1, r7)
            r2.add(r3)
            goto La
        Lbd:
            java.util.ArrayList<com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.banner.MultiAdsBannerBaseAdapter> r2 = r6.bannerAdaptersArrayList
            com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.banner.MultiAdsBannerAppodealAdapter r3 = new com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.banner.MultiAdsBannerAppodealAdapter
            android.content.Context r4 = r6.context
            java.lang.Object r1 = r1.getValue()
            com.appsgeyser.sdk.configuration.models.AdNetworkSdkModel r1 = (com.appsgeyser.sdk.configuration.models.AdNetworkSdkModel) r1
            r3.<init>(r4, r1, r7)
            r2.add(r3)
            goto La
        Ld1:
            java.util.ArrayList<com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.banner.MultiAdsBannerBaseAdapter> r7 = r6.bannerAdaptersArrayList
            int r7 = r7.size()
            if (r7 <= r2) goto Le3
            java.util.ArrayList<com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.banner.MultiAdsBannerBaseAdapter> r7 = r6.bannerAdaptersArrayList
            com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.banner.MultiAdsBannerManager$$ExternalSyntheticLambda0 r0 = new com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.banner.MultiAdsBannerManager$$ExternalSyntheticLambda0
            r0.<init>()
            java.util.Collections.sort(r7, r0)
        Le3:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.banner.MultiAdsBannerManager.init(java.util.HashMap):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ int lambda$init$0(MultiAdsBannerBaseAdapter multiAdsBannerBaseAdapter, MultiAdsBannerBaseAdapter multiAdsBannerBaseAdapter2) {
        return multiAdsBannerBaseAdapter2.getPriority() - multiAdsBannerBaseAdapter.getPriority();
    }

    public void initBannerView(ViewGroup viewGroup, Integer num) {
        this.bannerRefreshRate = num;
        this.bannerViewContainer = viewGroup;
        ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-1, (int) TypedValue.applyDimension(1, 50.0f, this.context.getResources().getDisplayMetrics()));
        ProgressBar progressBar = new ProgressBar(viewGroup.getContext());
        this.progressBar = progressBar;
        progressBar.setLayoutParams(layoutParams);
        viewGroup.addView(this.progressBar);
        this.progressBar.setVisibility(8);
        this.adViewContainer = new RelativeLayout(viewGroup.getContext());
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams2.addRule(13);
        this.adViewContainer.setGravity(17);
        this.adViewContainer.setLayoutParams(layoutParams2);
        this.bannerViewContainer.addView(this.adViewContainer);
        viewGroup.setVisibility(0);
        loadBanner();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loadBanner() {
        Log.d(FastTrackMultiAdsAdapter.multiAdsLogTag, "Banner load attempt");
        if (this.bannerAdaptersArrayList.size() > 0) {
            this.adViewContainer.removeAllViews();
            if (this.noBannerAvailable || this.currentlyLoadingAdapterIndex >= this.bannerAdaptersArrayList.size()) {
                Log.d(FastTrackMultiAdsAdapter.multiAdsLogTag, "SDK banners unavailable, proceeding to HTML");
                this.progressBar.setVisibility(8);
                this.backfillAdView = new AdView(this.bannerViewContainer.getContext());
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, (int) Math.ceil(this.context.getResources().getDisplayMetrics().density * 50.0f));
                layoutParams.addRule(13, -1);
                this.backfillAdView.setLayoutParams(layoutParams);
                this.adViewContainer.addView(this.backfillAdView);
                AppsgeyserSDK.setAdView(this.backfillAdView);
                this.adViewContainer.setVisibility(0);
                this.backfillAdView.onResume();
                return;
            }
            Log.d(FastTrackMultiAdsAdapter.multiAdsLogTag, "SDK banner load attempt");
            if (this.backfillAdView != null) {
                AppsgeyserSDK.setAdView(null);
                this.backfillAdView.onPause();
                this.backfillAdView = null;
            }
            this.progressBar.setVisibility(0);
            this.adViewContainer.setVisibility(8);
            MultiAdsBannerBaseAdapter multiAdsBannerBaseAdapter = this.bannerAdaptersArrayList.get(this.currentlyLoadingAdapterIndex);
            multiAdsBannerBaseAdapter.setListener(new MultiAdsBannerInterface.BannerListener() { // from class: com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.banner.MultiAdsBannerManager.1
                @Override // com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.banner.MultiAdsBannerInterface.BannerListener
                public void onBannerClicked() {
                }

                @Override // com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.banner.MultiAdsBannerInterface.BannerListener
                public void onBannerLoaded() {
                    Log.d(FastTrackMultiAdsAdapter.multiAdsLogTag, "Banner loaded, attempting to show");
                    MultiAdsBannerManager.this.currentlyLoadingAdapterIndex = 0;
                    MultiAdsBannerManager.this.progressBar.setVisibility(8);
                    MultiAdsBannerManager.this.adViewContainer.setVisibility(0);
                    MultiAdsBannerManager.this.handler.removeCallbacks(MultiAdsBannerManager.this.refreshBannerRunnable);
                    MultiAdsBannerManager.this.handler.postDelayed(MultiAdsBannerManager.this.refreshBannerRunnable, MultiAdsBannerManager.this.bannerRefreshRate.intValue());
                }

                @Override // com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.banner.MultiAdsBannerInterface.BannerListener
                public void onBannerError(String str) {
                    if (MultiAdsBannerManager.this.currentlyLoadingAdapterIndex == MultiAdsBannerManager.this.bannerAdaptersArrayList.size() - 1) {
                        MultiAdsBannerManager.this.noBannerAvailable = true;
                        Log.d(FastTrackMultiAdsAdapter.multiAdsLogTag, "No banner available, blocking loads for 2 minutes");
                        MultiAdsBannerManager.this.currentlyLoadingAdapterIndex = 0;
                        MultiAdsBannerManager.this.loadBanner();
                        MultiAdsBannerManager.this.handler.removeCallbacks(MultiAdsBannerManager.this.tryLoadSdkBannerAgainRunnable);
                        MultiAdsBannerManager.this.handler.postDelayed(MultiAdsBannerManager.this.tryLoadSdkBannerAgainRunnable, 120000L);
                        return;
                    }
                    MultiAdsBannerManager.this.handler.removeCallbacks(MultiAdsBannerManager.this.nextAdapterTryLoadBannerRunnable);
                    MultiAdsBannerManager.this.handler.postDelayed(MultiAdsBannerManager.this.nextAdapterTryLoadBannerRunnable, 1000L);
                }
            });
            multiAdsBannerBaseAdapter.loadBanner(this.adViewContainer);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$new$1$com-appsgeyser-sdk-ads-fastTrack-adapters-multiAds-banner-MultiAdsBannerManager  reason: not valid java name */
    public /* synthetic */ void m212xaa73da3a() {
        Log.d(FastTrackMultiAdsAdapter.multiAdsLogTag, "Attempting to refresh banner");
        loadBanner();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$new$2$com-appsgeyser-sdk-ads-fastTrack-adapters-multiAds-banner-MultiAdsBannerManager  reason: not valid java name */
    public /* synthetic */ void m213x8aed303b() {
        Log.d(FastTrackMultiAdsAdapter.multiAdsLogTag, "Banner load failed, proceeding to next adapter");
        this.currentlyLoadingAdapterIndex++;
        loadBanner();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$new$3$com-appsgeyser-sdk-ads-fastTrack-adapters-multiAds-banner-MultiAdsBannerManager  reason: not valid java name */
    public /* synthetic */ void m214x6b66863c() {
        this.noBannerAvailable = false;
        loadBanner();
        Log.d(FastTrackMultiAdsAdapter.multiAdsLogTag, "Banner loading block disabled");
    }

    public void onPause() {
        this.handler.removeCallbacks(this.refreshBannerRunnable);
        ProgressBar progressBar = this.progressBar;
        if (progressBar != null) {
            this.bannerViewContainer.removeView(progressBar);
        }
        Iterator<MultiAdsBannerBaseAdapter> it = this.bannerAdaptersArrayList.iterator();
        while (it.hasNext()) {
            it.next().onPause();
        }
    }

    public void onResume() {
        Iterator<MultiAdsBannerBaseAdapter> it = this.bannerAdaptersArrayList.iterator();
        while (it.hasNext()) {
            it.next().onResume();
        }
    }

    public void onDestroy() {
        Iterator<MultiAdsBannerBaseAdapter> it = this.bannerAdaptersArrayList.iterator();
        while (it.hasNext()) {
            it.next().onDestroy();
        }
    }
}
