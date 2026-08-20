package com.unity3d.services.ads.gmascar.managers;

import com.unity3d.ads.IUnityAdsTokenListener;
import com.unity3d.services.ads.gmascar.GMA;
import com.unity3d.services.core.configuration.IExperiments;
/* loaded from: classes3.dex */
public class BiddingManagerFactory {
    private static BiddingManagerFactory instance;

    private BiddingManagerFactory() {
    }

    public static BiddingManagerFactory getInstance() {
        if (instance == null) {
            instance = new BiddingManagerFactory();
        }
        return instance;
    }

    public BiddingBaseManager createManager(IUnityAdsTokenListener iUnityAdsTokenListener, IExperiments iExperiments) {
        if (GMA.getInstance().hasSCARBiddingSupport()) {
            if (iUnityAdsTokenListener == null || iExperiments == null) {
                return new BiddingEagerManager(null);
            }
            return getExperiment(iUnityAdsTokenListener, iExperiments);
        }
        return new BiddingDisabledManager(iUnityAdsTokenListener);
    }

    private BiddingBaseManager getExperiment(IUnityAdsTokenListener iUnityAdsTokenListener, IExperiments iExperiments) {
        int i = AnonymousClass1.$SwitchMap$com$unity3d$services$ads$gmascar$managers$SCARBiddingManagerType[SCARBiddingManagerType.fromName(iExperiments.getScarBiddingManager()).ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i == 3) {
                    return new BiddingOnDemandManager(iUnityAdsTokenListener);
                }
                return new BiddingDisabledManager(iUnityAdsTokenListener);
            }
            return new BiddingLazyManager(iUnityAdsTokenListener);
        }
        return new BiddingEagerManager(iUnityAdsTokenListener);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.unity3d.services.ads.gmascar.managers.BiddingManagerFactory$1  reason: invalid class name */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$unity3d$services$ads$gmascar$managers$SCARBiddingManagerType;

        static {
            int[] iArr = new int[SCARBiddingManagerType.values().length];
            $SwitchMap$com$unity3d$services$ads$gmascar$managers$SCARBiddingManagerType = iArr;
            try {
                iArr[SCARBiddingManagerType.EAGER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$unity3d$services$ads$gmascar$managers$SCARBiddingManagerType[SCARBiddingManagerType.LAZY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$unity3d$services$ads$gmascar$managers$SCARBiddingManagerType[SCARBiddingManagerType.HYBRID.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$unity3d$services$ads$gmascar$managers$SCARBiddingManagerType[SCARBiddingManagerType.DISABLED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }
}
