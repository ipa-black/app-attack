package com.applovin.exoplayer2.h;

import android.content.Context;
import android.util.SparseArray;
import com.applovin.exoplayer2.h.u;
import com.applovin.exoplayer2.k.i;
import com.applovin.exoplayer2.k.o;
import com.google.android.exoplayer2.C;
/* loaded from: classes.dex */
public final class f implements r {

    /* renamed from: a  reason: collision with root package name */
    private final i.a f3036a;

    /* renamed from: b  reason: collision with root package name */
    private final SparseArray<r> f3037b;

    /* renamed from: c  reason: collision with root package name */
    private final int[] f3038c;

    /* renamed from: d  reason: collision with root package name */
    private long f3039d;

    /* renamed from: e  reason: collision with root package name */
    private long f3040e;

    /* renamed from: f  reason: collision with root package name */
    private long f3041f;

    /* renamed from: g  reason: collision with root package name */
    private float f3042g;

    /* renamed from: h  reason: collision with root package name */
    private float f3043h;

    public f(Context context, com.applovin.exoplayer2.e.l lVar) {
        this(new o.a(context), lVar);
    }

    public f(i.a aVar, com.applovin.exoplayer2.e.l lVar) {
        this.f3036a = aVar;
        SparseArray<r> a2 = a(aVar, lVar);
        this.f3037b = a2;
        this.f3038c = new int[a2.size()];
        for (int i = 0; i < this.f3037b.size(); i++) {
            this.f3038c[i] = this.f3037b.keyAt(i);
        }
        this.f3039d = C.TIME_UNSET;
        this.f3040e = C.TIME_UNSET;
        this.f3041f = C.TIME_UNSET;
        this.f3042g = -3.4028235E38f;
        this.f3043h = -3.4028235E38f;
    }

    private static SparseArray<r> a(i.a aVar, com.applovin.exoplayer2.e.l lVar) {
        SparseArray<r> sparseArray = new SparseArray<>();
        try {
            sparseArray.put(0, (r) Class.forName("com.applovin.exoplayer2.source.dash.DashMediaSource$Factory").asSubclass(r.class).getConstructor(i.a.class).newInstance(aVar));
        } catch (Exception unused) {
        }
        try {
            sparseArray.put(1, (r) Class.forName("com.applovin.exoplayer2.source.smoothstreaming.SsMediaSource$Factory").asSubclass(r.class).getConstructor(i.a.class).newInstance(aVar));
        } catch (Exception unused2) {
        }
        try {
            sparseArray.put(2, (r) Class.forName("com.applovin.exoplayer2.source.hls.HlsMediaSource$Factory").asSubclass(r.class).getConstructor(i.a.class).newInstance(aVar));
        } catch (Exception unused3) {
        }
        try {
            sparseArray.put(3, (r) Class.forName("com.applovin.exoplayer2.source.rtsp.RtspMediaSource$Factory").asSubclass(r.class).getConstructor(new Class[0]).newInstance(new Object[0]));
        } catch (Exception unused4) {
        }
        sparseArray.put(4, new u.a(aVar, lVar));
        return sparseArray;
    }
}
