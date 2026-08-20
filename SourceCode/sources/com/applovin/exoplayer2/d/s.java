package com.applovin.exoplayer2.d;

import android.net.Uri;
import java.io.IOException;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public final class s extends IOException {

    /* renamed from: a  reason: collision with root package name */
    public final com.applovin.exoplayer2.k.l f2046a;

    /* renamed from: b  reason: collision with root package name */
    public final Uri f2047b;

    /* renamed from: c  reason: collision with root package name */
    public final Map<String, List<String>> f2048c;

    /* renamed from: d  reason: collision with root package name */
    public final long f2049d;

    public s(com.applovin.exoplayer2.k.l lVar, Uri uri, Map<String, List<String>> map, long j, Throwable th) {
        super(th);
        this.f2046a = lVar;
        this.f2047b = uri;
        this.f2048c = map;
        this.f2049d = j;
    }
}
