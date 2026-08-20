package com.appodeal.ads.modules.common.internal.adtype;

import com.appodeal.ads.modules.common.internal.Constants;
import com.appodeal.ads.modules.common.internal.LogConstants;
import com.ironsource.sdk.c.d;
import com.onesignal.NotificationBundleProcessor;
import kotlin.Metadata;
@Metadata(bv = {}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0015\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001R\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0017\u0010\r\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\fR\u0017\u0010\u0010\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b\u000e\u0010\n\u001a\u0004\b\u000f\u0010\fR\u0017\u0010\u0013\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b\u0011\u0010\n\u001a\u0004\b\u0012\u0010\fR\u0017\u0010\u0016\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0014\u0010\u0004\u001a\u0004\b\u0015\u0010\u0006j\u0002\b\u0017j\u0002\b\u0018j\u0002\b\u0019j\u0002\b\u001aj\u0002\b\u001bj\u0002\b\u001c¨\u0006\u001d"}, d2 = {"Lcom/appodeal/ads/modules/common/internal/adtype/AdType;", "", "", NotificationBundleProcessor.PUSH_ADDITIONAL_DATA_KEY, "I", "getCode", "()I", "code", "", "b", "Ljava/lang/String;", "getCodeName", "()Ljava/lang/String;", "codeName", "c", "getServerCodeName", "serverCodeName", d.f11571a, "getDisplayName", "displayName", "e", "getNotifyType", "notifyType", "Banner", LogConstants.KEY_MREC, "Interstitial", "Video", "Rewarded", LogConstants.KEY_NATIVE, "apd_internal"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes2.dex */
public enum AdType {
    Banner(4, "banner", Constants.BANNER, "Banner", 4),
    Mrec(256, Constants.PRETTY_MREC_NAME, Constants.MREC, LogConstants.KEY_MREC, 256),
    Interstitial(1, "interstitial", "banner", "Interstitial", 3),
    Video(2, "video", "video", "Video", 3),
    Rewarded(128, "rewarded_video", "rewarded_video", LogConstants.KEY_REWARDED_VIDEO, 128),
    Native(512, "native", "native", LogConstants.KEY_NATIVE, 512);
    

    /* renamed from: a  reason: collision with root package name */
    public final int f6873a;

    /* renamed from: b  reason: collision with root package name */
    public final String f6874b;

    /* renamed from: c  reason: collision with root package name */
    public final String f6875c;

    /* renamed from: d  reason: collision with root package name */
    public final String f6876d;

    /* renamed from: e  reason: collision with root package name */
    public final int f6877e;

    AdType(int i, String str, String str2, String str3, int i2) {
        this.f6873a = i;
        this.f6874b = str;
        this.f6875c = str2;
        this.f6876d = str3;
        this.f6877e = i2;
    }

    public final int getCode() {
        return this.f6873a;
    }

    public final String getCodeName() {
        return this.f6874b;
    }

    public final String getDisplayName() {
        return this.f6876d;
    }

    public final int getNotifyType() {
        return this.f6877e;
    }

    public final String getServerCodeName() {
        return this.f6875c;
    }
}
