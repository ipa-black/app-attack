package com.yandex.metrica;
@Deprecated
/* loaded from: classes3.dex */
public enum b {
    PHONE("phone"),
    TABLET("tablet"),
    TV("tv");
    

    /* renamed from: a  reason: collision with root package name */
    private final String f12365a;

    b(String str) {
        this.f12365a = str;
    }

    public String a() {
        return this.f12365a;
    }

    public static b a(String str) {
        b[] values = values();
        for (int i = 0; i < 3; i++) {
            b bVar = values[i];
            if (bVar.f12365a.equals(str)) {
                return bVar;
            }
        }
        return null;
    }
}
