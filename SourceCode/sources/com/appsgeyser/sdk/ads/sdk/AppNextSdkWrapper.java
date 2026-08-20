package com.appsgeyser.sdk.ads.sdk;

import com.appsgeyser.sdk.InternalEntryPoint;
import com.appsgeyser.sdk.ads.FullScreenBanner;
import com.appsgeyser.sdk.ads.sdk.SdkWrapper;
/* loaded from: classes2.dex */
public class AppNextSdkWrapper extends SdkWrapper {
    @Override // com.appsgeyser.sdk.ads.sdk.SdkWrapper
    public void getNativeAd() {
    }

    @Override // com.appsgeyser.sdk.ads.sdk.SdkWrapper
    public void showFsBanner() {
        InternalEntryPoint.getInstance().getFullScreenBanner(this.context).setBannerType(FullScreenBanner.BannerTypes.SDK);
    }

    /* renamed from: com.appsgeyser.sdk.ads.sdk.AppNextSdkWrapper$1  reason: invalid class name */
    /* loaded from: classes2.dex */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$appsgeyser$sdk$ads$sdk$SdkWrapper$AdType;

        static {
            int[] iArr = new int[SdkWrapper.AdType.values().length];
            $SwitchMap$com$appsgeyser$sdk$ads$sdk$SdkWrapper$AdType = iArr;
            try {
                iArr[SdkWrapper.AdType.FULLSCREEN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$appsgeyser$sdk$ads$sdk$SdkWrapper$AdType[SdkWrapper.AdType.NATIVE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    @Override // com.appsgeyser.sdk.ads.sdk.SdkWrapper
    public boolean isAdSupported(SdkWrapper.AdType adType) {
        int i = AnonymousClass1.$SwitchMap$com$appsgeyser$sdk$ads$sdk$SdkWrapper$AdType[adType.ordinal()];
        return i == 1 || i == 2;
    }
}
