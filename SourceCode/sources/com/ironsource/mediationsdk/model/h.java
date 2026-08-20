package com.ironsource.mediationsdk.model;

import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes3.dex */
public final class h {

    /* renamed from: a  reason: collision with root package name */
    public ArrayList<InterstitialPlacement> f11259a;

    /* renamed from: b  reason: collision with root package name */
    public com.ironsource.sdk.g.d f11260b;

    /* renamed from: c  reason: collision with root package name */
    public int f11261c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f11262d;

    /* renamed from: e  reason: collision with root package name */
    public int f11263e;

    /* renamed from: f  reason: collision with root package name */
    public int f11264f;

    /* renamed from: g  reason: collision with root package name */
    public String f11265g;

    /* renamed from: h  reason: collision with root package name */
    public String f11266h;
    public com.ironsource.mediationsdk.utils.c i;
    public InterstitialPlacement j;

    public h() {
        this.f11259a = new ArrayList<>();
        this.f11260b = new com.ironsource.sdk.g.d();
    }

    public h(int i, boolean z, int i2, com.ironsource.sdk.g.d dVar, com.ironsource.mediationsdk.utils.c cVar, int i3) {
        this.f11259a = new ArrayList<>();
        this.f11261c = i;
        this.f11262d = z;
        this.f11263e = i2;
        this.f11260b = dVar;
        this.i = cVar;
        this.f11264f = i3;
    }

    public final InterstitialPlacement a() {
        Iterator<InterstitialPlacement> it = this.f11259a.iterator();
        while (it.hasNext()) {
            InterstitialPlacement next = it.next();
            if (next.isDefault()) {
                return next;
            }
        }
        return this.j;
    }
}
