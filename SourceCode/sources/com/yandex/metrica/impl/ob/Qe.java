package com.yandex.metrica.impl.ob;
/* loaded from: classes5.dex */
public class Qe implements Kn<String> {
    @Override // com.yandex.metrica.impl.ob.Kn
    public In a(String str) {
        String str2 = str;
        if (str2 == null) {
            return In.a(this, "key is null");
        }
        if (str2.startsWith("appmetrica")) {
            return In.a(this, "key starts with appmetrica");
        }
        if (str2.length() > 200) {
            return In.a(this, "key length more then 200 characters");
        }
        return In.a(this);
    }
}
