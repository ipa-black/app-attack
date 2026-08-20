package com.yandex.metrica.impl.ob;

import java.util.HashMap;
import java.util.Map;
import java.util.TreeSet;
/* renamed from: com.yandex.metrica.impl.ob.rk  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1839rk {

    /* renamed from: a  reason: collision with root package name */
    private final Map<Float, Integer> f15665a = new HashMap();

    public C1839rk(TreeSet<Float> treeSet) {
        int i = 0;
        for (Float f2 : treeSet.descendingSet()) {
            this.f15665a.put(f2, Integer.valueOf(i));
            i++;
        }
    }

    public void a(C1444bl c1444bl) {
        c1444bl.s = this.f15665a.get(c1444bl.m);
    }
}
