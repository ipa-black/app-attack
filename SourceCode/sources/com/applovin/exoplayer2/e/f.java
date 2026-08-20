package com.applovin.exoplayer2.e;

import android.net.Uri;
import com.applovin.exoplayer2.e.i.ac;
import com.google.android.exoplayer2.extractor.ts.TsExtractor;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public final class f implements l {

    /* renamed from: b  reason: collision with root package name */
    private static final int[] f2204b = {5, 4, 12, 8, 3, 10, 9, 11, 6, 2, 0, 1, 7, 14};

    /* renamed from: c  reason: collision with root package name */
    private static final Constructor<? extends h> f2205c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f2206d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f2207e;

    /* renamed from: f  reason: collision with root package name */
    private int f2208f;

    /* renamed from: g  reason: collision with root package name */
    private int f2209g;

    /* renamed from: h  reason: collision with root package name */
    private int f2210h;
    private int i;
    private int j;
    private int k;
    private int l;
    private int n;
    private int m = 1;
    private int o = TsExtractor.DEFAULT_TIMESTAMP_SEARCH_BYTES;

    static {
        Constructor<? extends h> constructor = null;
        try {
            if (Boolean.TRUE.equals(Class.forName("com.applovin.exoplayer2.ext.flac.FlacLibrary").getMethod("isAvailable", new Class[0]).invoke(null, new Object[0]))) {
                constructor = Class.forName("com.applovin.exoplayer2.ext.flac.FlacExtractor").asSubclass(h.class).getConstructor(Integer.TYPE);
            }
        } catch (ClassNotFoundException unused) {
        } catch (Exception e2) {
            throw new RuntimeException("Error instantiating FLAC extension", e2);
        }
        f2205c = constructor;
    }

    private void a(int i, List<h> list) {
        h aVar;
        switch (i) {
            case 0:
                aVar = new com.applovin.exoplayer2.e.i.a();
                break;
            case 1:
                aVar = new com.applovin.exoplayer2.e.i.c();
                break;
            case 2:
                aVar = new com.applovin.exoplayer2.e.i.e((this.f2207e ? 2 : 0) | this.f2208f | (this.f2206d ? 1 : 0));
                break;
            case 3:
                aVar = new com.applovin.exoplayer2.e.a.a((this.f2207e ? 2 : 0) | this.f2209g | (this.f2206d ? 1 : 0));
                break;
            case 4:
                Constructor<? extends h> constructor = f2205c;
                if (constructor == null) {
                    aVar = new com.applovin.exoplayer2.e.b.b(this.f2210h);
                    break;
                } else {
                    try {
                        list.add(constructor.newInstance(Integer.valueOf(this.f2210h)));
                        return;
                    } catch (Exception e2) {
                        throw new IllegalStateException("Unexpected error creating FLAC extractor", e2);
                    }
                }
            case 5:
                aVar = new com.applovin.exoplayer2.e.c.b();
                break;
            case 6:
                aVar = new com.applovin.exoplayer2.e.e.d(this.i);
                break;
            case 7:
                aVar = new com.applovin.exoplayer2.e.f.d((this.f2207e ? 2 : 0) | this.l | (this.f2206d ? 1 : 0));
                break;
            case 8:
                list.add(new com.applovin.exoplayer2.e.g.e(this.k));
                aVar = new com.applovin.exoplayer2.e.g.g(this.j);
                break;
            case 9:
                aVar = new com.applovin.exoplayer2.e.h.c();
                break;
            case 10:
                aVar = new com.applovin.exoplayer2.e.i.w();
                break;
            case 11:
                aVar = new ac(this.m, this.n, this.o);
                break;
            case 12:
                aVar = new com.applovin.exoplayer2.e.j.a();
                break;
            case 13:
            default:
                return;
            case 14:
                aVar = new com.applovin.exoplayer2.e.d.a();
                break;
        }
        list.add(aVar);
    }

    @Override // com.applovin.exoplayer2.e.l
    public synchronized h[] a(Uri uri, Map<String, List<String>> map) {
        ArrayList arrayList;
        int[] iArr;
        arrayList = new ArrayList(14);
        int a2 = com.applovin.exoplayer2.l.l.a(map);
        if (a2 != -1) {
            a(a2, arrayList);
        }
        int a3 = com.applovin.exoplayer2.l.l.a(uri);
        if (a3 != -1 && a3 != a2) {
            a(a3, arrayList);
        }
        for (int i : f2204b) {
            if (i != a2 && i != a3) {
                a(i, arrayList);
            }
        }
        return (h[]) arrayList.toArray(new h[arrayList.size()]);
    }

    @Override // com.applovin.exoplayer2.e.l
    public synchronized h[] createExtractors() {
        return a(Uri.EMPTY, new HashMap());
    }
}
