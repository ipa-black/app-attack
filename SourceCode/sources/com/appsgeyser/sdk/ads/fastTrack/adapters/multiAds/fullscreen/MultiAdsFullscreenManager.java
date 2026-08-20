package com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.fullscreen;

import android.content.Context;
import android.os.Handler;
import android.util.Log;
import com.appsgeyser.sdk.AppsgeyserSDK;
import com.appsgeyser.sdk.InternalEntryPoint;
import com.appsgeyser.sdk.ads.FullScreenBanner;
import com.appsgeyser.sdk.ads.IFullScreenBannerListener;
import com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackMultiAdsAdapter;
import com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.fullscreen.MultiAdsFullscreenInterface;
import com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.fullscreen.MultiAdsFullscreenManager;
import com.appsgeyser.sdk.configuration.models.AdNetworkSdkModel;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes2.dex */
public class MultiAdsFullscreenManager {
    private Context context;
    private final Map<String, AdNetworkSdkModel> fullscreenPlacementIdMap;
    private Handler handler;
    private MultiAdsFullscreenInterface.FullscreenListener pendingListener;
    private int currentlyLoadingAdapterIndex = 0;
    private int indexOfLoadedAdapter = -1;
    private boolean noFullscreenAvailable = false;
    private boolean loadingProcess = false;
    private boolean reloadRequired = false;
    private final ArrayList<MultiAdsFullscreenBaseAdapter> fullscreenAdaptersArrayList = new ArrayList<>(3);

    static /* synthetic */ int access$108(MultiAdsFullscreenManager multiAdsFullscreenManager) {
        int i = multiAdsFullscreenManager.currentlyLoadingAdapterIndex;
        multiAdsFullscreenManager.currentlyLoadingAdapterIndex = i + 1;
        return i;
    }

    public MultiAdsFullscreenManager(Map<String, AdNetworkSdkModel> map, Context context, HashMap<String, String> hashMap) {
        this.fullscreenPlacementIdMap = map;
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
            java.util.Map<java.lang.String, com.appsgeyser.sdk.configuration.models.AdNetworkSdkModel> r0 = r6.fullscreenPlacementIdMap
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
            java.util.ArrayList<com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.fullscreen.MultiAdsFullscreenBaseAdapter> r2 = r6.fullscreenAdaptersArrayList
            com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.fullscreen.MultiAdsFullscreenAppnextAdapter r3 = new com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.fullscreen.MultiAdsFullscreenAppnextAdapter
            android.content.Context r4 = r6.context
            java.lang.Object r1 = r1.getValue()
            com.appsgeyser.sdk.configuration.models.AdNetworkSdkModel r1 = (com.appsgeyser.sdk.configuration.models.AdNetworkSdkModel) r1
            r3.<init>(r4, r1, r7)
            r2.add(r3)
            goto La
        L81:
            java.util.ArrayList<com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.fullscreen.MultiAdsFullscreenBaseAdapter> r2 = r6.fullscreenAdaptersArrayList
            com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.fullscreen.MultiAdsFullscreenFacebookAdapter r3 = new com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.fullscreen.MultiAdsFullscreenFacebookAdapter
            android.content.Context r4 = r6.context
            java.lang.Object r1 = r1.getValue()
            com.appsgeyser.sdk.configuration.models.AdNetworkSdkModel r1 = (com.appsgeyser.sdk.configuration.models.AdNetworkSdkModel) r1
            r3.<init>(r4, r1, r7)
            r2.add(r3)
            goto La
        L95:
            java.util.ArrayList<com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.fullscreen.MultiAdsFullscreenBaseAdapter> r2 = r6.fullscreenAdaptersArrayList
            com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.fullscreen.MultiAdsFullscreenUnityAdapter r3 = new com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.fullscreen.MultiAdsFullscreenUnityAdapter
            android.content.Context r4 = r6.context
            java.lang.Object r1 = r1.getValue()
            com.appsgeyser.sdk.configuration.models.AdNetworkSdkModel r1 = (com.appsgeyser.sdk.configuration.models.AdNetworkSdkModel) r1
            r3.<init>(r4, r1, r7)
            r2.add(r3)
            goto La
        La9:
            java.util.ArrayList<com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.fullscreen.MultiAdsFullscreenBaseAdapter> r2 = r6.fullscreenAdaptersArrayList
            com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.fullscreen.MultiAdsFullscreenAdmobAdapter r3 = new com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.fullscreen.MultiAdsFullscreenAdmobAdapter
            android.content.Context r4 = r6.context
            java.lang.Object r1 = r1.getValue()
            com.appsgeyser.sdk.configuration.models.AdNetworkSdkModel r1 = (com.appsgeyser.sdk.configuration.models.AdNetworkSdkModel) r1
            r3.<init>(r4, r1, r7)
            r2.add(r3)
            goto La
        Lbd:
            java.util.ArrayList<com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.fullscreen.MultiAdsFullscreenBaseAdapter> r2 = r6.fullscreenAdaptersArrayList
            com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.fullscreen.MultiAdsFullscreenAppodealAdapter r3 = new com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.fullscreen.MultiAdsFullscreenAppodealAdapter
            android.content.Context r4 = r6.context
            java.lang.Object r1 = r1.getValue()
            com.appsgeyser.sdk.configuration.models.AdNetworkSdkModel r1 = (com.appsgeyser.sdk.configuration.models.AdNetworkSdkModel) r1
            r3.<init>(r4, r1, r7)
            r2.add(r3)
            goto La
        Ld1:
            java.util.ArrayList<com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.fullscreen.MultiAdsFullscreenBaseAdapter> r7 = r6.fullscreenAdaptersArrayList
            int r7 = r7.size()
            if (r7 <= r2) goto Le3
            java.util.ArrayList<com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.fullscreen.MultiAdsFullscreenBaseAdapter> r7 = r6.fullscreenAdaptersArrayList
            com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.fullscreen.MultiAdsFullscreenManager$$ExternalSyntheticLambda0 r0 = new com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.fullscreen.MultiAdsFullscreenManager$$ExternalSyntheticLambda0
            r0.<init>()
            java.util.Collections.sort(r7, r0)
        Le3:
            r6.loadFullscreen()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.fullscreen.MultiAdsFullscreenManager.init(java.util.HashMap):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ int lambda$init$0(MultiAdsFullscreenBaseAdapter multiAdsFullscreenBaseAdapter, MultiAdsFullscreenBaseAdapter multiAdsFullscreenBaseAdapter2) {
        return multiAdsFullscreenBaseAdapter2.getPriority() - multiAdsFullscreenBaseAdapter.getPriority();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loadFullscreen() {
        if (this.fullscreenAdaptersArrayList.size() > 0) {
            this.loadingProcess = true;
            MultiAdsFullscreenBaseAdapter multiAdsFullscreenBaseAdapter = this.fullscreenAdaptersArrayList.get(this.currentlyLoadingAdapterIndex);
            multiAdsFullscreenBaseAdapter.setListener(new AnonymousClass1(multiAdsFullscreenBaseAdapter));
            multiAdsFullscreenBaseAdapter.loadFullscreen();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.fullscreen.MultiAdsFullscreenManager$1  reason: invalid class name */
    /* loaded from: classes2.dex */
    public class AnonymousClass1 implements MultiAdsFullscreenInterface.FullscreenListener {
        final /* synthetic */ MultiAdsFullscreenInterface val$adapter;

        @Override // com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.fullscreen.MultiAdsFullscreenInterface.FullscreenListener
        public void onFullscreenClicked() {
        }

        @Override // com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.fullscreen.MultiAdsFullscreenInterface.FullscreenListener
        public void onFullscreenOpened() {
        }

        AnonymousClass1(MultiAdsFullscreenInterface multiAdsFullscreenInterface) {
            this.val$adapter = multiAdsFullscreenInterface;
        }

        @Override // com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.fullscreen.MultiAdsFullscreenInterface.FullscreenListener
        public void onFullscreenLoaded() {
            MultiAdsFullscreenManager multiAdsFullscreenManager = MultiAdsFullscreenManager.this;
            multiAdsFullscreenManager.indexOfLoadedAdapter = multiAdsFullscreenManager.currentlyLoadingAdapterIndex;
            MultiAdsFullscreenManager.this.loadingProcess = false;
            if (MultiAdsFullscreenManager.this.pendingListener != null) {
                MultiAdsFullscreenInterface multiAdsFullscreenInterface = this.val$adapter;
                MultiAdsFullscreenManager multiAdsFullscreenManager2 = MultiAdsFullscreenManager.this;
                multiAdsFullscreenInterface.setListener(multiAdsFullscreenManager2.createDefaultListener(multiAdsFullscreenManager2.pendingListener));
                MultiAdsFullscreenManager.this.pendingListener.onFullscreenLoaded();
            }
        }

        @Override // com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.fullscreen.MultiAdsFullscreenInterface.FullscreenListener
        public void onFullscreenClosed() {
            MultiAdsFullscreenManager.this.currentlyLoadingAdapterIndex = 0;
            MultiAdsFullscreenManager.this.indexOfLoadedAdapter = -1;
            MultiAdsFullscreenManager.this.pendingListener = null;
            MultiAdsFullscreenManager.this.loadFullscreen();
        }

        @Override // com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.fullscreen.MultiAdsFullscreenInterface.FullscreenListener
        public void onFullscreenError(String str) {
            if (MultiAdsFullscreenManager.this.currentlyLoadingAdapterIndex == MultiAdsFullscreenManager.this.fullscreenAdaptersArrayList.size() - 1) {
                MultiAdsFullscreenManager.this.noFullscreenAvailable = true;
                MultiAdsFullscreenManager.this.loadingProcess = false;
                Log.d(FastTrackMultiAdsAdapter.multiAdsLogTag, "No fullscreen available, blocking loads for 2 minutes");
                if (MultiAdsFullscreenManager.this.pendingListener != null) {
                    MultiAdsFullscreenManager.this.pendingListener.onFullscreenError("No fullscreen available");
                    Log.d(FastTrackMultiAdsAdapter.multiAdsLogTag, "Pending request: no fullscreen available");
                    MultiAdsFullscreenManager.this.pendingListener = null;
                }
                MultiAdsFullscreenManager.this.currentlyLoadingAdapterIndex = 0;
                MultiAdsFullscreenManager.this.handler.postDelayed(new Runnable() { // from class: com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.fullscreen.MultiAdsFullscreenManager$1$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        MultiAdsFullscreenManager.AnonymousClass1.this.m225x39c39e34();
                    }
                }, 120000L);
                return;
            }
            MultiAdsFullscreenManager.this.handler.postDelayed(new Runnable() { // from class: com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.fullscreen.MultiAdsFullscreenManager$1$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    MultiAdsFullscreenManager.AnonymousClass1.this.m226xffee26f5();
                }
            }, 500L);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: lambda$onFullscreenError$0$com-appsgeyser-sdk-ads-fastTrack-adapters-multiAds-fullscreen-MultiAdsFullscreenManager$1  reason: not valid java name */
        public /* synthetic */ void m225x39c39e34() {
            MultiAdsFullscreenManager.this.noFullscreenAvailable = false;
            MultiAdsFullscreenManager.this.reloadRequired = true;
            Log.d(FastTrackMultiAdsAdapter.multiAdsLogTag, "Fullscreen loading block disabled");
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: lambda$onFullscreenError$1$com-appsgeyser-sdk-ads-fastTrack-adapters-multiAds-fullscreen-MultiAdsFullscreenManager$1  reason: not valid java name */
        public /* synthetic */ void m226xffee26f5() {
            MultiAdsFullscreenManager.access$108(MultiAdsFullscreenManager.this);
            MultiAdsFullscreenManager.this.loadFullscreen();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public MultiAdsFullscreenInterface.FullscreenListener createDefaultListener(final MultiAdsFullscreenInterface.FullscreenListener fullscreenListener) {
        return new MultiAdsFullscreenInterface.FullscreenListener() { // from class: com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.fullscreen.MultiAdsFullscreenManager.2
            @Override // com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.fullscreen.MultiAdsFullscreenInterface.FullscreenListener
            public void onFullscreenLoaded() {
            }

            @Override // com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.fullscreen.MultiAdsFullscreenInterface.FullscreenListener
            public void onFullscreenOpened() {
                fullscreenListener.onFullscreenOpened();
            }

            @Override // com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.fullscreen.MultiAdsFullscreenInterface.FullscreenListener
            public void onFullscreenClicked() {
                fullscreenListener.onFullscreenClicked();
            }

            @Override // com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.fullscreen.MultiAdsFullscreenInterface.FullscreenListener
            public void onFullscreenClosed() {
                MultiAdsFullscreenManager.this.currentlyLoadingAdapterIndex = 0;
                MultiAdsFullscreenManager.this.indexOfLoadedAdapter = -1;
                MultiAdsFullscreenManager.this.pendingListener = null;
                MultiAdsFullscreenManager.this.loadFullscreen();
                fullscreenListener.onFullscreenClosed();
            }

            @Override // com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.fullscreen.MultiAdsFullscreenInterface.FullscreenListener
            public void onFullscreenError(String str) {
                fullscreenListener.onFullscreenError(str);
                MultiAdsFullscreenManager.this.pendingListener = null;
                MultiAdsFullscreenManager.this.loadFullscreen();
            }
        };
    }

    public void loadFullscreen(final MultiAdsFullscreenInterface.FullscreenListener fullscreenListener, String str) {
        int i;
        if (this.reloadRequired) {
            this.reloadRequired = false;
            loadFullscreen();
            loadFullscreen(fullscreenListener, str);
            Log.d(FastTrackMultiAdsAdapter.multiAdsLogTag, "Reloading fullscreen");
        } else if (this.noFullscreenAvailable || ((i = this.indexOfLoadedAdapter) == -1 && !this.loadingProcess)) {
            Log.d(FastTrackMultiAdsAdapter.multiAdsLogTag, "No SDK fullscreen available at the moment, requesting HTML banner");
            AppsgeyserSDK.getFullScreenBanner(this.context).setListener(new IFullScreenBannerListener() { // from class: com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.fullscreen.MultiAdsFullscreenManager.3
                @Override // com.appsgeyser.sdk.ads.IFullScreenBannerListener
                public void onLoadStarted() {
                }

                @Override // com.appsgeyser.sdk.ads.IFullScreenBannerListener
                public void onLoadFinished(FullScreenBanner fullScreenBanner) {
                    MultiAdsFullscreenInterface.FullscreenListener fullscreenListener2 = fullscreenListener;
                    if (fullscreenListener2 != null) {
                        fullscreenListener2.onFullscreenOpened();
                    }
                }

                @Override // com.appsgeyser.sdk.ads.IFullScreenBannerListener
                public void onAdFailedToLoad(Context context, String str2) {
                    MultiAdsFullscreenInterface.FullscreenListener fullscreenListener2 = fullscreenListener;
                    if (fullscreenListener2 != null) {
                        fullscreenListener2.onFullscreenError("No fullscreen available at the moment");
                    }
                }

                @Override // com.appsgeyser.sdk.ads.IFullScreenBannerListener
                public void onAdHided(Context context, String str2) {
                    MultiAdsFullscreenInterface.FullscreenListener fullscreenListener2 = fullscreenListener;
                    if (fullscreenListener2 != null) {
                        fullscreenListener2.onFullscreenClosed();
                    }
                }
            });
            InternalEntryPoint.getInstance().getFullScreenBanner(this.context).load(str);
        } else if (this.loadingProcess) {
            this.pendingListener = fullscreenListener;
        } else {
            MultiAdsFullscreenBaseAdapter multiAdsFullscreenBaseAdapter = this.fullscreenAdaptersArrayList.get(i);
            if (multiAdsFullscreenBaseAdapter.isFullscreenLoaded()) {
                multiAdsFullscreenBaseAdapter.setListener(createDefaultListener(fullscreenListener));
                fullscreenListener.onFullscreenLoaded();
                return;
            }
            loadFullscreen();
            loadFullscreen(fullscreenListener, str);
        }
    }

    public void showFullscreen(Context context) {
        Log.d(FastTrackMultiAdsAdapter.multiAdsLogTag, "indexOfLoadedAdapter = " + this.indexOfLoadedAdapter + " fullscreenAdaptersArrayList.get(indexOfLoadedAdapter).isFullscreenLoaded() = " + this.fullscreenAdaptersArrayList.get(this.indexOfLoadedAdapter).isFullscreenLoaded());
        int i = this.indexOfLoadedAdapter;
        if (i == -1 || !this.fullscreenAdaptersArrayList.get(i).isFullscreenLoaded()) {
            return;
        }
        this.fullscreenAdaptersArrayList.get(this.indexOfLoadedAdapter).showFullscreen(context);
    }

    public void appodealInitCompleted() {
        Iterator<MultiAdsFullscreenBaseAdapter> it = this.fullscreenAdaptersArrayList.iterator();
        while (it.hasNext()) {
            MultiAdsFullscreenBaseAdapter next = it.next();
            if (next instanceof MultiAdsFullscreenAppodealAdapter) {
                next.initCompleted();
            }
        }
    }

    public void facebookInitCompleted() {
        Iterator<MultiAdsFullscreenBaseAdapter> it = this.fullscreenAdaptersArrayList.iterator();
        while (it.hasNext()) {
            MultiAdsFullscreenBaseAdapter next = it.next();
            if (next instanceof MultiAdsFullscreenFacebookAdapter) {
                next.initCompleted();
            }
        }
    }

    public void unityInitCompleted() {
        Iterator<MultiAdsFullscreenBaseAdapter> it = this.fullscreenAdaptersArrayList.iterator();
        while (it.hasNext()) {
            MultiAdsFullscreenBaseAdapter next = it.next();
            if (next instanceof MultiAdsFullscreenUnityAdapter) {
                next.initCompleted();
            }
        }
    }

    public void setContext(Context context) {
        this.context = context;
    }

    public void onPause() {
        Iterator<MultiAdsFullscreenBaseAdapter> it = this.fullscreenAdaptersArrayList.iterator();
        while (it.hasNext()) {
            it.next().onPause();
        }
    }

    public void onResume() {
        Iterator<MultiAdsFullscreenBaseAdapter> it = this.fullscreenAdaptersArrayList.iterator();
        while (it.hasNext()) {
            it.next().onResume();
        }
    }

    public void onDestroy() {
        Iterator<MultiAdsFullscreenBaseAdapter> it = this.fullscreenAdaptersArrayList.iterator();
        while (it.hasNext()) {
            it.next().onDestroy();
        }
    }
}
