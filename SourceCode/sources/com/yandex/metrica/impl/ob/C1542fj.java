package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.text.TextUtils;
import java.io.File;
import java.io.FileOutputStream;
/* renamed from: com.yandex.metrica.impl.ob.fj  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
class C1542fj {

    /* renamed from: a  reason: collision with root package name */
    private final Context f14751a;

    /* renamed from: b  reason: collision with root package name */
    private final B0 f14752b;

    /* renamed from: c  reason: collision with root package name */
    private final C1644jm f14753c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1542fj(Context context, B0 b0, C1644jm c1644jm) {
        this.f14751a = context;
        this.f14752b = b0;
        this.f14753c = c1644jm;
    }

    public String a() {
        return L0.a(this.f14752b.a(this.f14751a, "uuid.dat"));
    }

    public String a(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                str = this.f14753c.a();
            }
            File a2 = this.f14752b.a(this.f14751a, "uuid.dat");
            if (a2 != null) {
                L0.a(str, "uuid.dat", new FileOutputStream(a2));
            }
            return str;
        } catch (Throwable unused) {
            return null;
        }
    }
}
