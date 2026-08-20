package com.ironsource.mediationsdk.model;

import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes3.dex */
public final class o {

    /* renamed from: a  reason: collision with root package name */
    public ArrayList<Placement> f11299a;

    /* renamed from: b  reason: collision with root package name */
    public com.ironsource.sdk.g.d f11300b;

    /* renamed from: c  reason: collision with root package name */
    public int f11301c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f11302d;

    /* renamed from: e  reason: collision with root package name */
    public int f11303e;

    /* renamed from: f  reason: collision with root package name */
    public String f11304f;

    /* renamed from: g  reason: collision with root package name */
    public String f11305g;

    /* renamed from: h  reason: collision with root package name */
    public int f11306h;
    public int i;
    public int j;
    public Placement k;
    public com.ironsource.mediationsdk.utils.c l;

    public o() {
        this.f11299a = new ArrayList<>();
        this.f11300b = new com.ironsource.sdk.g.d();
    }

    public o(int i, boolean z, int i2, int i3, int i4, com.ironsource.sdk.g.d dVar, com.ironsource.mediationsdk.utils.c cVar, int i5) {
        this.f11299a = new ArrayList<>();
        this.f11301c = i;
        this.f11302d = z;
        this.f11303e = i2;
        this.f11306h = i3;
        this.f11300b = dVar;
        this.i = i4;
        this.l = cVar;
        this.j = i5;
    }

    public final Placement a() {
        Iterator<Placement> it = this.f11299a.iterator();
        while (it.hasNext()) {
            Placement next = it.next();
            if (next.isDefault()) {
                return next;
            }
        }
        return this.k;
    }
}
