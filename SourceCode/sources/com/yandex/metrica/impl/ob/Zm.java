package com.yandex.metrica.impl.ob;
/* loaded from: classes5.dex */
public class Zm {

    /* renamed from: a  reason: collision with root package name */
    private final String f14365a;

    /* renamed from: b  reason: collision with root package name */
    private final C1470cm f14366b;

    public Zm(int i, String str, C1470cm c1470cm) {
        this.f14365a = str;
        this.f14366b = c1470cm;
    }

    public boolean a(C1420am c1420am, String str, String str2) {
        int a2 = c1420am.a();
        if (str2 != null) {
            a2 += str2.length();
        }
        if (c1420am.containsKey(str)) {
            String str3 = c1420am.get(str);
            if (str3 != null) {
                a2 -= str3.length();
            }
        } else {
            a2 += str.length();
        }
        return a2 > 4500;
    }

    public void a(String str) {
        if (this.f14366b.isEnabled()) {
            this.f14366b.fw("The %s has reached the total size limit that equals %d symbols. Item with key %s will be ignored", this.f14365a, 4500, str);
        }
    }
}
