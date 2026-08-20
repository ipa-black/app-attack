package com.yandex.metrica.impl.ob;

import org.json.JSONObject;
/* renamed from: com.yandex.metrica.impl.ob.x0  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1963x0 {

    /* renamed from: a  reason: collision with root package name */
    private C1420am f16010a = new C1420am();

    /* renamed from: b  reason: collision with root package name */
    private C1446bn f16011b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1963x0(C1446bn c1446bn) {
        this.f16011b = c1446bn;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(String str, String str2) {
        this.f16011b.b(this.f16010a, str, str2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String a() {
        if (this.f16010a.isEmpty()) {
            return null;
        }
        return new JSONObject(this.f16010a).toString();
    }
}
