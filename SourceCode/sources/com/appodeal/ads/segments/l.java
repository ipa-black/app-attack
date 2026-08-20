package com.appodeal.ads.segments;

import com.appodeal.ads.modules.common.internal.adtype.AdType;
/* loaded from: classes2.dex */
public final /* synthetic */ class l {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ int[] f7534a;

    static {
        int[] iArr = new int[AdType.values().length];
        f7534a = iArr;
        try {
            iArr[AdType.Interstitial.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f7534a[AdType.Video.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            f7534a[AdType.Rewarded.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            f7534a[AdType.Banner.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            f7534a[AdType.Mrec.ordinal()] = 5;
        } catch (NoSuchFieldError unused5) {
        }
        try {
            f7534a[AdType.Native.ordinal()] = 6;
        } catch (NoSuchFieldError unused6) {
        }
    }
}
