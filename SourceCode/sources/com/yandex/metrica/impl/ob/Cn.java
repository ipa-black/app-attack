package com.yandex.metrica.impl.ob;

import android.text.TextUtils;
import java.util.Comparator;
/* loaded from: classes5.dex */
public class Cn implements Comparator<F2> {
    @Override // java.util.Comparator
    public int compare(F2 f2, F2 f22) {
        F2 f23 = f2;
        F2 f24 = f22;
        return (TextUtils.equals(f23.f12917a, f24.f12917a) && TextUtils.equals(f23.f12918b, f24.f12918b)) ? 0 : 10;
    }
}
