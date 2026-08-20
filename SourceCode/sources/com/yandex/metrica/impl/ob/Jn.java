package com.yandex.metrica.impl.ob;

import android.text.TextUtils;
import java.util.LinkedList;
import java.util.List;
/* loaded from: classes5.dex */
public class Jn implements Kn<List<In>> {
    @Override // com.yandex.metrica.impl.ob.Kn
    public In a(List<In> list) {
        LinkedList linkedList = new LinkedList();
        boolean z = true;
        for (In in : list) {
            if (!in.b()) {
                linkedList.add(in.a());
                z = false;
            }
        }
        if (z) {
            return In.a(this);
        }
        return In.a(this, TextUtils.join(", ", linkedList));
    }
}
