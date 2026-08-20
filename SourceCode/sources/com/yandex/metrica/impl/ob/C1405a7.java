package com.yandex.metrica.impl.ob;

import android.text.TextUtils;
import java.io.File;
/* renamed from: com.yandex.metrica.impl.ob.a7  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1405a7 implements InterfaceC1744nm<File, Z6>, InterfaceC1719mm<File> {
    @Override // com.yandex.metrica.impl.ob.InterfaceC1744nm
    public Z6 a(File file) {
        String a2 = L0.a(file);
        if (!TextUtils.isEmpty(a2)) {
            try {
                return new Z6(a2);
            } catch (Throwable unused) {
                return null;
            }
        }
        return null;
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1719mm
    public void b(File file) {
        try {
            file.delete();
        } catch (Throwable unused) {
        }
    }
}
