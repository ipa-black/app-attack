package com.yandex.metrica.impl.ob;

import android.util.SparseIntArray;
/* renamed from: com.yandex.metrica.impl.ob.sk  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1863sk implements Qk {

    /* renamed from: a  reason: collision with root package name */
    private final SparseIntArray f15731a = new SparseIntArray();

    /* renamed from: b  reason: collision with root package name */
    private final int f15732b;

    public C1863sk(int i) {
        this.f15732b = i;
    }

    @Override // com.yandex.metrica.impl.ob.Qk
    public void a(C1840rl c1840rl) {
        SparseIntArray sparseIntArray = this.f15731a;
        int i = c1840rl.f15669d;
        sparseIntArray.put(i, sparseIntArray.get(i) + 1);
    }

    public int a(int i) {
        int i2 = this.f15732b;
        Integer valueOf = Integer.valueOf(this.f15731a.get(i));
        if (valueOf == null) {
            valueOf = 0;
        }
        return i2 - valueOf.intValue();
    }
}
