package com.yandex.metrica.impl.ob;
/* renamed from: com.yandex.metrica.impl.ob.wk  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1959wk {

    /* renamed from: a  reason: collision with root package name */
    public final int f15995a;

    /* renamed from: b  reason: collision with root package name */
    public final String f15996b;

    /* renamed from: c  reason: collision with root package name */
    private final int f15997c = a();

    public C1959wk(int i, String str) {
        this.f15995a = i;
        this.f15996b = str;
    }

    private int a() {
        return (this.f15995a * 31) + this.f15996b.length();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C1959wk.class != obj.getClass()) {
            return false;
        }
        C1959wk c1959wk = (C1959wk) obj;
        if (this.f15995a != c1959wk.f15995a) {
            return false;
        }
        return this.f15996b.equals(c1959wk.f15996b);
    }

    public int hashCode() {
        return this.f15997c;
    }
}
