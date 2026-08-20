package com.yandex.metrica.impl.ob;

import java.util.HashSet;
import java.util.Set;
/* loaded from: classes5.dex */
public class N5 {

    /* renamed from: a  reason: collision with root package name */
    private boolean f13518a;

    /* renamed from: b  reason: collision with root package name */
    private Set<Integer> f13519b;

    /* renamed from: c  reason: collision with root package name */
    private int f13520c;

    /* renamed from: d  reason: collision with root package name */
    private int f13521d;

    public N5() {
        this(false, 0, 0, new HashSet());
    }

    public void a() {
        this.f13519b = new HashSet();
        this.f13521d = 0;
    }

    public Set<Integer> b() {
        return this.f13519b;
    }

    public int c() {
        return this.f13521d;
    }

    public int d() {
        return this.f13520c;
    }

    public boolean e() {
        return this.f13518a;
    }

    public N5(boolean z, int i, int i2, Set<Integer> set) {
        this.f13518a = z;
        this.f13519b = set;
        this.f13520c = i;
        this.f13521d = i2;
    }

    public void b(int i) {
        this.f13520c = i;
        this.f13521d = 0;
    }

    public void a(boolean z) {
        this.f13518a = z;
    }

    public void a(int i) {
        this.f13519b.add(Integer.valueOf(i));
        this.f13521d++;
    }
}
