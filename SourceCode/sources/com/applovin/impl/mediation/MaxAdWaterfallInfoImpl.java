package com.applovin.impl.mediation;

import com.applovin.mediation.MaxAd;
import com.applovin.mediation.MaxAdWaterfallInfo;
import com.applovin.mediation.MaxNetworkResponseInfo;
import java.util.List;
/* loaded from: classes.dex */
public class MaxAdWaterfallInfoImpl implements MaxAdWaterfallInfo {

    /* renamed from: a  reason: collision with root package name */
    private final com.applovin.impl.mediation.a.a f4616a;

    /* renamed from: b  reason: collision with root package name */
    private final String f4617b;

    /* renamed from: c  reason: collision with root package name */
    private final String f4618c;

    /* renamed from: d  reason: collision with root package name */
    private final List<MaxNetworkResponseInfo> f4619d;

    /* renamed from: e  reason: collision with root package name */
    private final long f4620e;

    public MaxAdWaterfallInfoImpl(com.applovin.impl.mediation.a.a aVar, long j, List<MaxNetworkResponseInfo> list) {
        this(aVar, aVar.q(), aVar.r(), j, list);
    }

    public MaxAdWaterfallInfoImpl(com.applovin.impl.mediation.a.a aVar, String str, String str2, long j, List<MaxNetworkResponseInfo> list) {
        this.f4616a = aVar;
        this.f4617b = str;
        this.f4618c = str2;
        this.f4619d = list;
        this.f4620e = j;
    }

    @Override // com.applovin.mediation.MaxAdWaterfallInfo
    public long getLatencyMillis() {
        return this.f4620e;
    }

    @Override // com.applovin.mediation.MaxAdWaterfallInfo
    public MaxAd getLoadedAd() {
        return this.f4616a;
    }

    @Override // com.applovin.mediation.MaxAdWaterfallInfo
    public String getName() {
        return this.f4617b;
    }

    @Override // com.applovin.mediation.MaxAdWaterfallInfo
    public List<MaxNetworkResponseInfo> getNetworkResponses() {
        return this.f4619d;
    }

    @Override // com.applovin.mediation.MaxAdWaterfallInfo
    public String getTestName() {
        return this.f4618c;
    }

    public String toString() {
        return "MaxAdWaterfallInfo{name=" + this.f4617b + ", testName=" + this.f4618c + ", networkResponses=" + this.f4619d + ", latencyMillis=" + this.f4620e + '}';
    }
}
