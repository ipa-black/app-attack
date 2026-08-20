package com.applovin.exoplayer2.m;

import android.view.Surface;
/* loaded from: classes.dex */
public class g extends com.applovin.exoplayer2.f.h {

    /* renamed from: c  reason: collision with root package name */
    public final int f3964c;

    /* renamed from: d  reason: collision with root package name */
    public final boolean f3965d;

    public g(Throwable th, com.applovin.exoplayer2.f.i iVar, Surface surface) {
        super(th, iVar);
        this.f3964c = System.identityHashCode(surface);
        this.f3965d = surface == null || surface.isValid();
    }
}
