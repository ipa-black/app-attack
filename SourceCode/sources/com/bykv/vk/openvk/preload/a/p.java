package com.bykv.vk.openvk.preload.a;

import java.math.BigInteger;
/* compiled from: JsonPrimitive.java */
/* loaded from: classes2.dex */
public final class p extends k {

    /* renamed from: a  reason: collision with root package name */
    public final Object f8395a;

    public p(Boolean bool) {
        this.f8395a = com.bykv.vk.openvk.preload.a.b.a.a(bool);
    }

    public p(Number number) {
        this.f8395a = com.bykv.vk.openvk.preload.a.b.a.a(number);
    }

    public p(String str) {
        this.f8395a = com.bykv.vk.openvk.preload.a.b.a.a(str);
    }

    @Override // com.bykv.vk.openvk.preload.a.k
    public final Number a() {
        Object obj = this.f8395a;
        return obj instanceof String ? new com.bykv.vk.openvk.preload.a.b.g((String) this.f8395a) : (Number) obj;
    }

    public final int hashCode() {
        long doubleToLongBits;
        if (this.f8395a == null) {
            return 31;
        }
        if (a(this)) {
            doubleToLongBits = a().longValue();
        } else {
            Object obj = this.f8395a;
            if (obj instanceof Number) {
                doubleToLongBits = Double.doubleToLongBits(a().doubleValue());
            } else {
                return obj.hashCode();
            }
        }
        return (int) ((doubleToLongBits >>> 32) ^ doubleToLongBits);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        p pVar = (p) obj;
        if (this.f8395a == null) {
            return pVar.f8395a == null;
        } else if (a(this) && a(pVar)) {
            return a().longValue() == pVar.a().longValue();
        } else {
            Object obj2 = this.f8395a;
            if ((obj2 instanceof Number) && (pVar.f8395a instanceof Number)) {
                double doubleValue = a().doubleValue();
                double doubleValue2 = pVar.a().doubleValue();
                return doubleValue == doubleValue2 || (Double.isNaN(doubleValue) && Double.isNaN(doubleValue2));
            }
            return obj2.equals(pVar.f8395a);
        }
    }

    private static boolean a(p pVar) {
        Object obj = pVar.f8395a;
        if (obj instanceof Number) {
            Number number = (Number) obj;
            return (number instanceof BigInteger) || (number instanceof Long) || (number instanceof Integer) || (number instanceof Short) || (number instanceof Byte);
        }
        return false;
    }

    @Override // com.bykv.vk.openvk.preload.a.k
    public final boolean f() {
        Object obj = this.f8395a;
        if (obj instanceof Boolean) {
            return ((Boolean) obj).booleanValue();
        }
        return Boolean.parseBoolean(b());
    }

    @Override // com.bykv.vk.openvk.preload.a.k
    public final String b() {
        Object obj = this.f8395a;
        if (obj instanceof Number) {
            return a().toString();
        }
        if (obj instanceof Boolean) {
            return ((Boolean) obj).toString();
        }
        return (String) obj;
    }

    @Override // com.bykv.vk.openvk.preload.a.k
    public final double c() {
        return this.f8395a instanceof Number ? a().doubleValue() : Double.parseDouble(b());
    }

    @Override // com.bykv.vk.openvk.preload.a.k
    public final long d() {
        return this.f8395a instanceof Number ? a().longValue() : Long.parseLong(b());
    }

    @Override // com.bykv.vk.openvk.preload.a.k
    public final int e() {
        return this.f8395a instanceof Number ? a().intValue() : Integer.parseInt(b());
    }
}
