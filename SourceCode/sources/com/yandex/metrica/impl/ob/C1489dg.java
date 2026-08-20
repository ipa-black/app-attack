package com.yandex.metrica.impl.ob;

import com.google.protobuf.nano.ym.InvalidProtocolBufferNanoException;
import com.google.protobuf.nano.ym.MessageNano;
/* renamed from: com.yandex.metrica.impl.ob.dg  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C1489dg {

    /* renamed from: a  reason: collision with root package name */
    public final String f14597a;

    /* renamed from: b  reason: collision with root package name */
    public final long f14598b;

    /* renamed from: c  reason: collision with root package name */
    public final long f14599c;

    /* renamed from: d  reason: collision with root package name */
    public final a f14600d;

    /* renamed from: com.yandex.metrica.impl.ob.dg$a */
    /* loaded from: classes5.dex */
    public enum a {
        UNKNOWN("unknown"),
        GP("gpl"),
        HMS("hms-content-provider");
        

        /* renamed from: a  reason: collision with root package name */
        public final String f14605a;

        a(String str) {
            this.f14605a = str;
        }
    }

    private C1489dg(byte[] bArr) throws InvalidProtocolBufferNanoException {
        C1882tf a2 = C1882tf.a(bArr);
        this.f14597a = a2.f15769a;
        this.f14598b = a2.f15771c;
        this.f14599c = a2.f15770b;
        this.f14600d = a(a2.f15772d);
    }

    public static C1489dg a(byte[] bArr) throws InvalidProtocolBufferNanoException {
        if (A2.a(bArr)) {
            return null;
        }
        return new C1489dg(bArr);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C1489dg.class != obj.getClass()) {
            return false;
        }
        C1489dg c1489dg = (C1489dg) obj;
        return this.f14598b == c1489dg.f14598b && this.f14599c == c1489dg.f14599c && this.f14597a.equals(c1489dg.f14597a) && this.f14600d == c1489dg.f14600d;
    }

    public int hashCode() {
        long j = this.f14598b;
        long j2 = this.f14599c;
        return (((((this.f14597a.hashCode() * 31) + ((int) (j ^ (j >>> 32)))) * 31) + ((int) (j2 ^ (j2 >>> 32)))) * 31) + this.f14600d.hashCode();
    }

    public String toString() {
        return "ReferrerInfo{installReferrer='" + this.f14597a + "', referrerClickTimestampSeconds=" + this.f14598b + ", installBeginTimestampSeconds=" + this.f14599c + ", source=" + this.f14600d + '}';
    }

    public byte[] a() {
        C1882tf c1882tf = new C1882tf();
        c1882tf.f15769a = this.f14597a;
        c1882tf.f15771c = this.f14598b;
        c1882tf.f15770b = this.f14599c;
        int ordinal = this.f14600d.ordinal();
        int i = 1;
        if (ordinal != 1) {
            i = 2;
            if (ordinal != 2) {
                i = 0;
            }
        }
        c1882tf.f15772d = i;
        return MessageNano.toByteArray(c1882tf);
    }

    public C1489dg(String str, long j, long j2, a aVar) {
        this.f14597a = str;
        this.f14598b = j;
        this.f14599c = j2;
        this.f14600d = aVar;
    }

    private a a(int i) {
        if (i != 1) {
            if (i != 2) {
                return a.UNKNOWN;
            }
            return a.HMS;
        }
        return a.GP;
    }
}
