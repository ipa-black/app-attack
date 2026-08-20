package com.applovin.exoplayer2.h;

import android.net.Uri;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicLong;
/* loaded from: classes.dex */
public final class j {

    /* renamed from: h  reason: collision with root package name */
    private static final AtomicLong f3050h = new AtomicLong();

    /* renamed from: a  reason: collision with root package name */
    public final long f3051a;

    /* renamed from: b  reason: collision with root package name */
    public final com.applovin.exoplayer2.k.l f3052b;

    /* renamed from: c  reason: collision with root package name */
    public final Uri f3053c;

    /* renamed from: d  reason: collision with root package name */
    public final Map<String, List<String>> f3054d;

    /* renamed from: e  reason: collision with root package name */
    public final long f3055e;

    /* renamed from: f  reason: collision with root package name */
    public final long f3056f;

    /* renamed from: g  reason: collision with root package name */
    public final long f3057g;

    public j(long j, com.applovin.exoplayer2.k.l lVar, long j2) {
        this(j, lVar, lVar.f3626a, Collections.emptyMap(), j2, 0L, 0L);
    }

    public j(long j, com.applovin.exoplayer2.k.l lVar, Uri uri, Map<String, List<String>> map, long j2, long j3, long j4) {
        this.f3051a = j;
        this.f3052b = lVar;
        this.f3053c = uri;
        this.f3054d = map;
        this.f3055e = j2;
        this.f3056f = j3;
        this.f3057g = j4;
    }

    public static long a() {
        return f3050h.getAndIncrement();
    }
}
