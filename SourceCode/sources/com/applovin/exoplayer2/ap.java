package com.applovin.exoplayer2;

import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
/* loaded from: classes.dex */
final class ap extends a {

    /* renamed from: c  reason: collision with root package name */
    private final int f1387c;

    /* renamed from: d  reason: collision with root package name */
    private final int f1388d;

    /* renamed from: e  reason: collision with root package name */
    private final int[] f1389e;

    /* renamed from: f  reason: collision with root package name */
    private final int[] f1390f;

    /* renamed from: g  reason: collision with root package name */
    private final ba[] f1391g;

    /* renamed from: h  reason: collision with root package name */
    private final Object[] f1392h;
    private final HashMap<Object, Integer> i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ap(Collection<? extends ag> collection, com.applovin.exoplayer2.h.z zVar) {
        super(false, zVar);
        int i = 0;
        int size = collection.size();
        this.f1389e = new int[size];
        this.f1390f = new int[size];
        this.f1391g = new ba[size];
        this.f1392h = new Object[size];
        this.i = new HashMap<>();
        int i2 = 0;
        int i3 = 0;
        for (ag agVar : collection) {
            this.f1391g[i3] = agVar.b();
            this.f1390f[i3] = i;
            this.f1389e[i3] = i2;
            i += this.f1391g[i3].b();
            i2 += this.f1391g[i3].c();
            this.f1392h[i3] = agVar.a();
            this.i.put(this.f1392h[i3], Integer.valueOf(i3));
            i3++;
        }
        this.f1387c = i;
        this.f1388d = i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<ba> a() {
        return Arrays.asList(this.f1391g);
    }

    @Override // com.applovin.exoplayer2.ba
    public int b() {
        return this.f1387c;
    }

    @Override // com.applovin.exoplayer2.a
    protected int b(int i) {
        return com.applovin.exoplayer2.l.ai.a(this.f1389e, i + 1, false, false);
    }

    @Override // com.applovin.exoplayer2.ba
    public int c() {
        return this.f1388d;
    }

    @Override // com.applovin.exoplayer2.a
    protected int c(int i) {
        return com.applovin.exoplayer2.l.ai.a(this.f1390f, i + 1, false, false);
    }

    @Override // com.applovin.exoplayer2.a
    protected int d(Object obj) {
        Integer num = this.i.get(obj);
        if (num == null) {
            return -1;
        }
        return num.intValue();
    }

    @Override // com.applovin.exoplayer2.a
    protected ba d(int i) {
        return this.f1391g[i];
    }

    @Override // com.applovin.exoplayer2.a
    protected int e(int i) {
        return this.f1389e[i];
    }

    @Override // com.applovin.exoplayer2.a
    protected int f(int i) {
        return this.f1390f[i];
    }

    @Override // com.applovin.exoplayer2.a
    protected Object g(int i) {
        return this.f1392h[i];
    }
}
