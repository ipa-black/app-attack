package com.yandex.metrica.impl.ob;

import android.os.Bundle;
import android.text.TextUtils;
import com.yandex.metrica.impl.ac.CrashpadServiceHelper;
/* loaded from: classes5.dex */
public class T4 extends X4 {

    /* renamed from: b  reason: collision with root package name */
    private final InterfaceC1719mm<String> f13945b;

    /* loaded from: classes5.dex */
    class a implements InterfaceC1719mm<String> {
        a() {
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC1719mm
        public void b(String str) {
            String str2 = str;
            if (A2.a(21)) {
                CrashpadServiceHelper.a(str2);
            }
        }
    }

    public T4(L3 l3) {
        this(l3, new a());
    }

    @Override // com.yandex.metrica.impl.ob.S4
    public boolean a(C1448c0 c1448c0) {
        Bundle l = c1448c0.l();
        if (l != null) {
            String string = l.getString("payload_crash_id");
            if (TextUtils.isEmpty(string)) {
                return true;
            }
            this.f13945b.b(string);
            return true;
        }
        return true;
    }

    public T4(L3 l3, InterfaceC1719mm<String> interfaceC1719mm) {
        super(l3);
        this.f13945b = interfaceC1719mm;
    }
}
