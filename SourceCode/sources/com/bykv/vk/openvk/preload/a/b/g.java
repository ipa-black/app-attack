package com.bykv.vk.openvk.preload.a.b;

import java.math.BigDecimal;
/* compiled from: LazilyParsedNumber.java */
/* loaded from: classes2.dex */
public final class g extends Number {

    /* renamed from: a  reason: collision with root package name */
    private final String f8303a;

    public g(String str) {
        this.f8303a = str;
    }

    @Override // java.lang.Number
    public final int intValue() {
        try {
            try {
                return Integer.parseInt(this.f8303a);
            } catch (NumberFormatException unused) {
                return (int) Long.parseLong(this.f8303a);
            }
        } catch (NumberFormatException unused2) {
            return new BigDecimal(this.f8303a).intValue();
        }
    }

    @Override // java.lang.Number
    public final long longValue() {
        try {
            return Long.parseLong(this.f8303a);
        } catch (NumberFormatException unused) {
            return new BigDecimal(this.f8303a).longValue();
        }
    }

    @Override // java.lang.Number
    public final float floatValue() {
        return Float.parseFloat(this.f8303a);
    }

    @Override // java.lang.Number
    public final double doubleValue() {
        return Double.parseDouble(this.f8303a);
    }

    public final String toString() {
        return this.f8303a;
    }

    public final int hashCode() {
        return this.f8303a.hashCode();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof g) {
            String str = this.f8303a;
            String str2 = ((g) obj).f8303a;
            return str == str2 || str.equals(str2);
        }
        return false;
    }
}
