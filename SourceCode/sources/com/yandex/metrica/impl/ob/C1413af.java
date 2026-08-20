package com.yandex.metrica.impl.ob;

import android.util.SparseArray;
import com.yandex.metrica.impl.ob.C1930vf;
import java.util.ArrayList;
import java.util.HashMap;
/* renamed from: com.yandex.metrica.impl.ob.af  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1413af {

    /* renamed from: c  reason: collision with root package name */
    private static final int[] f14412c = {0, 1, 2, 3};

    /* renamed from: a  reason: collision with root package name */
    private final SparseArray<HashMap<String, C1930vf.a>> f14413a;

    /* renamed from: b  reason: collision with root package name */
    private int f14414b;

    public C1413af() {
        this(f14412c);
    }

    public C1930vf.a a(int i, String str) {
        return this.f14413a.get(i).get(str);
    }

    public void b() {
        this.f14414b++;
    }

    public C1930vf c() {
        C1930vf c1930vf = new C1930vf();
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < this.f14413a.size(); i++) {
            SparseArray<HashMap<String, C1930vf.a>> sparseArray = this.f14413a;
            for (C1930vf.a aVar : sparseArray.get(sparseArray.keyAt(i)).values()) {
                arrayList.add(aVar);
            }
        }
        c1930vf.f15922a = (C1930vf.a[]) arrayList.toArray(new C1930vf.a[arrayList.size()]);
        return c1930vf;
    }

    C1413af(int[] iArr) {
        this.f14413a = new SparseArray<>();
        this.f14414b = 0;
        for (int i : iArr) {
            this.f14413a.put(i, new HashMap<>());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(C1930vf.a aVar) {
        this.f14413a.get(aVar.f15925b).put(new String(aVar.f15924a), aVar);
    }

    public int a() {
        return this.f14414b;
    }
}
