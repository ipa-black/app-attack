package com.applovin.impl.mediation;

import android.os.Bundle;
import com.applovin.mediation.MaxError;
import com.applovin.mediation.MaxMediatedNetworkInfo;
import com.applovin.mediation.MaxNetworkResponseInfo;
/* loaded from: classes.dex */
public class MaxNetworkResponseInfoImpl implements MaxNetworkResponseInfo {

    /* renamed from: a  reason: collision with root package name */
    private final MaxNetworkResponseInfo.AdLoadState f4630a;

    /* renamed from: b  reason: collision with root package name */
    private final MaxMediatedNetworkInfo f4631b;

    /* renamed from: c  reason: collision with root package name */
    private final Bundle f4632c;

    /* renamed from: d  reason: collision with root package name */
    private final long f4633d;

    /* renamed from: e  reason: collision with root package name */
    private final MaxError f4634e;

    /* renamed from: com.applovin.impl.mediation.MaxNetworkResponseInfoImpl$1  reason: invalid class name */
    /* loaded from: classes.dex */
    static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f4635a;

        static {
            int[] iArr = new int[MaxNetworkResponseInfo.AdLoadState.values().length];
            f4635a = iArr;
            try {
                iArr[MaxNetworkResponseInfo.AdLoadState.FAILED_TO_LOAD.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f4635a[MaxNetworkResponseInfo.AdLoadState.AD_LOADED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public MaxNetworkResponseInfoImpl(MaxNetworkResponseInfo.AdLoadState adLoadState, Bundle bundle, MaxMediatedNetworkInfo maxMediatedNetworkInfo, long j, MaxError maxError) {
        this.f4630a = adLoadState;
        this.f4631b = maxMediatedNetworkInfo;
        this.f4632c = bundle;
        this.f4633d = j;
        this.f4634e = maxError;
    }

    @Override // com.applovin.mediation.MaxNetworkResponseInfo
    public MaxNetworkResponseInfo.AdLoadState getAdLoadState() {
        return this.f4630a;
    }

    @Override // com.applovin.mediation.MaxNetworkResponseInfo
    public Bundle getCredentials() {
        return this.f4632c;
    }

    @Override // com.applovin.mediation.MaxNetworkResponseInfo
    public MaxError getError() {
        return this.f4634e;
    }

    @Override // com.applovin.mediation.MaxNetworkResponseInfo
    public long getLatencyMillis() {
        return this.f4633d;
    }

    @Override // com.applovin.mediation.MaxNetworkResponseInfo
    public MaxMediatedNetworkInfo getMediatedNetwork() {
        return this.f4631b;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x003c, code lost:
        if (r1 != 2) goto L6;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String toString() {
        /*
            r4 = this;
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            java.lang.String r2 = "MaxResponseInfo{adLoadState="
            r1.<init>(r2)
            com.applovin.mediation.MaxNetworkResponseInfo$AdLoadState r2 = r4.f4630a
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.String r2 = ", mediatedNetwork="
            java.lang.StringBuilder r1 = r1.append(r2)
            com.applovin.mediation.MaxMediatedNetworkInfo r2 = r4.f4631b
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.String r2 = ", credentials="
            java.lang.StringBuilder r1 = r1.append(r2)
            android.os.Bundle r2 = r4.f4632c
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            int[] r1 = com.applovin.impl.mediation.MaxNetworkResponseInfoImpl.AnonymousClass1.f4635a
            com.applovin.mediation.MaxNetworkResponseInfo$AdLoadState r2 = r4.f4630a
            int r2 = r2.ordinal()
            r1 = r1[r2]
            r2 = 1
            if (r1 == r2) goto L3f
            r2 = 2
            if (r1 == r2) goto L53
            goto L67
        L3f:
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            java.lang.String r2 = ", error="
            r1.<init>(r2)
            com.applovin.mediation.MaxError r2 = r4.f4634e
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.String r1 = r1.toString()
            r0.append(r1)
        L53:
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            java.lang.String r2 = ", latencyMillis="
            r1.<init>(r2)
            long r2 = r4.f4633d
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.String r1 = r1.toString()
            r0.append(r1)
        L67:
            java.lang.String r1 = "]"
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.String r0 = r0.toString()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.impl.mediation.MaxNetworkResponseInfoImpl.toString():java.lang.String");
    }
}
