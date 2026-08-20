package com.ironsource.mediationsdk.model;

import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes3.dex */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    public com.ironsource.sdk.g.d f11246a;

    /* renamed from: b  reason: collision with root package name */
    public long f11247b;

    /* renamed from: c  reason: collision with root package name */
    public ArrayList<f> f11248c;

    /* renamed from: d  reason: collision with root package name */
    public f f11249d;

    /* renamed from: e  reason: collision with root package name */
    public int f11250e;

    /* renamed from: f  reason: collision with root package name */
    public int f11251f;

    /* renamed from: g  reason: collision with root package name */
    public com.ironsource.mediationsdk.utils.c f11252g;

    /* renamed from: h  reason: collision with root package name */
    private int f11253h;

    public e() {
        this.f11246a = new com.ironsource.sdk.g.d();
        this.f11248c = new ArrayList<>();
    }

    public e(int i, long j, com.ironsource.sdk.g.d dVar, int i2, com.ironsource.mediationsdk.utils.c cVar, int i3) {
        this.f11248c = new ArrayList<>();
        this.f11253h = i;
        this.f11247b = j;
        this.f11246a = dVar;
        this.f11250e = i2;
        this.f11251f = i3;
        this.f11252g = cVar;
    }

    public final f a() {
        Iterator<f> it = this.f11248c.iterator();
        while (it.hasNext()) {
            f next = it.next();
            if (next.isDefault()) {
                return next;
            }
        }
        return this.f11249d;
    }

    public final f a(String str) {
        Iterator<f> it = this.f11248c.iterator();
        while (it.hasNext()) {
            f next = it.next();
            if (next.getPlacementName().equals(str)) {
                return next;
            }
        }
        return null;
    }
}
