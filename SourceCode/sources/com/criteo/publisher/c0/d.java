package com.criteo.publisher.c0;

import com.criteo.publisher.i;
import java.util.UUID;
import org.apache.commons.collections.primitives.ArrayUnsignedIntList;
/* compiled from: UniqueIdGenerator.java */
/* loaded from: classes2.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private final i f8693a;

    private byte a(long j, int i) {
        int i2 = (64 - (i + 1)) << 2;
        return (byte) (((j & (15 << i2)) >> i2) & 15);
    }

    private long a(long j, int i, byte b2) {
        int i2 = (64 - (i + 1)) << 2;
        return (j & (~(15 << i2))) | (b2 << i2);
    }

    public d(i iVar) {
        this.f8693a = iVar;
    }

    public String a() {
        return a(UUID.randomUUID(), this.f8693a.a() / 1000);
    }

    String a(UUID uuid, long j) {
        long mostSignificantBits = uuid.getMostSignificantBits();
        long leastSignificantBits = uuid.getLeastSignificantBits();
        long a2 = a(mostSignificantBits, 12, a(mostSignificantBits, 0));
        return String.format("%016x%016x", Long.valueOf((j << 32) | (a2 & ArrayUnsignedIntList.MAX_VALUE)), Long.valueOf(a(leastSignificantBits, 0, a(a2, 1))));
    }
}
