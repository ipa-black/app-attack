package com.yandex.metrica.impl.ob;

import android.util.SparseArray;
/* loaded from: classes5.dex */
public class Ze {

    /* renamed from: a  reason: collision with root package name */
    private static SparseArray<String> f14346a;

    static {
        SparseArray<String> sparseArray = new SparseArray<>();
        f14346a = sparseArray;
        sparseArray.put(0, "String");
        f14346a.put(1, "Number");
        f14346a.put(2, "Counter");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(int i) {
        return f14346a.get(i);
    }
}
