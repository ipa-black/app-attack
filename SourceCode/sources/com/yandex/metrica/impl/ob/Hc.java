package com.yandex.metrica.impl.ob;

import android.location.Location;
import com.yandex.metrica.impl.ob.C1759oc;
import com.yandex.metrica.impl.ob.E;
/* loaded from: classes5.dex */
public class Hc {

    /* renamed from: a  reason: collision with root package name */
    public final C1759oc.a f13039a;

    /* renamed from: b  reason: collision with root package name */
    private Long f13040b;

    /* renamed from: c  reason: collision with root package name */
    private long f13041c;

    /* renamed from: d  reason: collision with root package name */
    private long f13042d;

    /* renamed from: e  reason: collision with root package name */
    private Location f13043e;

    /* renamed from: f  reason: collision with root package name */
    private E.b.a f13044f;

    public Hc(C1759oc.a aVar, long j, long j2, Location location, E.b.a aVar2, Long l) {
        this.f13039a = aVar;
        this.f13040b = l;
        this.f13041c = j;
        this.f13042d = j2;
        this.f13043e = location;
        this.f13044f = aVar2;
    }

    public E.b.a a() {
        return this.f13044f;
    }

    public Long b() {
        return this.f13040b;
    }

    public Location c() {
        return this.f13043e;
    }

    public long d() {
        return this.f13042d;
    }

    public long e() {
        return this.f13041c;
    }

    public String toString() {
        return "LocationWrapper{collectionMode=" + this.f13039a + ", mIncrementalId=" + this.f13040b + ", mReceiveTimestamp=" + this.f13041c + ", mReceiveElapsedRealtime=" + this.f13042d + ", mLocation=" + this.f13043e + ", mChargeType=" + this.f13044f + '}';
    }
}
