package com.applovin.exoplayer2.k;

import java.io.IOException;
/* loaded from: classes.dex */
public interface v {

    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final com.applovin.exoplayer2.h.j f3709a;

        /* renamed from: b  reason: collision with root package name */
        public final com.applovin.exoplayer2.h.m f3710b;

        /* renamed from: c  reason: collision with root package name */
        public final IOException f3711c;

        /* renamed from: d  reason: collision with root package name */
        public final int f3712d;

        public a(com.applovin.exoplayer2.h.j jVar, com.applovin.exoplayer2.h.m mVar, IOException iOException, int i) {
            this.f3709a = jVar;
            this.f3710b = mVar;
            this.f3711c = iOException;
            this.f3712d = i;
        }
    }

    int a(int i);

    long a(a aVar);

    default void a(long j) {
    }
}
