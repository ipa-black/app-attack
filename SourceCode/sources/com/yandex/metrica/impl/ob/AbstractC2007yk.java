package com.yandex.metrica.impl.ob;

import java.util.ArrayList;
import java.util.List;
import java.util.regex.Pattern;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.yandex.metrica.impl.ob.yk  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public abstract class AbstractC2007yk<T> {

    /* renamed from: a  reason: collision with root package name */
    private List<Object> f16111a;

    /* renamed from: b  reason: collision with root package name */
    private final C1935vk f16112b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2007yk(T t, C1935vk c1935vk) {
        this.f16111a = c(t);
        this.f16112b = c1935vk;
    }

    private List<Object> c(T t) {
        Object c1887tk;
        Pattern pattern;
        Pattern pattern2;
        ArrayList arrayList = new ArrayList();
        if (t == null) {
            return arrayList;
        }
        int b2 = b(t);
        List<C2032zl> a2 = a(t);
        arrayList.add(new Zk(b2));
        for (C2032zl c2032zl : a2) {
            int ordinal = c2032zl.f16170a.ordinal();
            if (ordinal == 0) {
                c1887tk = new C1887tk(c2032zl.f16171b);
            } else if (ordinal != 1) {
                c1887tk = null;
                if (ordinal == 2) {
                    try {
                        pattern = Pattern.compile(c2032zl.f16171b);
                    } catch (Throwable unused) {
                        pattern = null;
                    }
                    if (pattern != null) {
                        c1887tk = new Nk(pattern);
                    }
                } else if (ordinal == 3) {
                    try {
                        pattern2 = Pattern.compile(c2032zl.f16171b);
                    } catch (Throwable unused2) {
                        pattern2 = null;
                    }
                    if (pattern2 != null) {
                        c1887tk = new C1767ok(pattern2);
                    }
                }
            } else {
                c1887tk = new C1642jk(c2032zl.f16171b);
            }
            if (c1887tk != null) {
                arrayList.add(c1887tk);
            }
        }
        return A2.c(arrayList);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1935vk a() {
        return this.f16112b;
    }

    abstract List<C2032zl> a(T t);

    abstract int b(T t);

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<Object> b() {
        return this.f16111a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d(T t) {
        this.f16112b.a();
        this.f16111a = c(t);
    }
}
