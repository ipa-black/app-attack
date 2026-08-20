package com.yandex.metrica.impl.ob;

import android.content.ContentValues;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.yandex.metrica.impl.ob.t3  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C1870t3 implements W<Map<String, ? extends String>> {
    @Override // kotlin.jvm.functions.Function1
    public Object invoke(ContentValues contentValues) {
        String asString = contentValues.getAsString("clids");
        HashMap<String, String> d2 = Tl.d(asString);
        if (Tl.d(d2)) {
            return d2;
        }
        C1575h2.b("Passed clids (" + asString + ") are invalid.", new Object[0]);
        return null;
    }
}
