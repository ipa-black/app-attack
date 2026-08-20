package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.os.Bundle;
import com.yandex.metrica.impl.ob.C1878tb;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* loaded from: classes5.dex */
public class Kb implements InterfaceC1926vb {

    /* renamed from: a  reason: collision with root package name */
    private final String f13363a;

    /* renamed from: b  reason: collision with root package name */
    private final Jb f13364b;

    public Kb(String str) {
        this(str, new Jb());
    }

    private C1902ub b(Context context) throws Throwable {
        Method method = Class.forName("com.yandex.metrica.identifiers.AdsIdentifiersProvider").getMethod("requestIdentifiers", Context.class, Bundle.class);
        Bundle bundle = new Bundle();
        bundle.putString("com.yandex.metrica.identifiers.extra.PROVIDER", this.f13363a);
        Jb jb = this.f13364b;
        Object[] objArr = {context, bundle};
        C1878tb c1878tb = null;
        Bundle bundle2 = (Bundle) method.invoke(null, objArr);
        jb.getClass();
        if (bundle2 != null) {
            Bundle bundle3 = bundle2.getBundle("com.yandex.metrica.identifiers.extra.TRACKING_INFO");
            if (bundle3 != null) {
                C1878tb.a aVar = Ib.f13068a.get(bundle3.getString("com.yandex.metrica.identifiers.extra.PROVIDER"));
                if (aVar != null) {
                    c1878tb = new C1878tb(aVar, bundle3.getString("com.yandex.metrica.identifiers.extra.ID"), bundle3.containsKey("com.yandex.metrica.identifiers.extra.LIMITED") ? Boolean.valueOf(bundle3.getBoolean("com.yandex.metrica.identifiers.extra.LIMITED")) : null);
                } else {
                    throw new IllegalArgumentException(("Provider " + bundle3.getString("com.yandex.metrica.identifiers.extra.PROVIDER") + " is invalid").toString());
                }
            }
            return new C1902ub(c1878tb, U0.a(bundle2.getString("com.yandex.metrica.identifiers.extra.STATUS")), bundle2.getString("com.yandex.metrica.identifiers.extra.ERROR_MESSAGE"));
        }
        return null;
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1926vb
    public C1902ub a(Context context) {
        return a(context, new Fb());
    }

    Kb(String str, Jb jb) {
        this.f13363a = str;
        this.f13364b = jb;
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1926vb
    public C1902ub a(Context context, Gb gb) {
        C1902ub c1902ub;
        gb.c();
        C1902ub c1902ub2 = null;
        while (gb.b()) {
            try {
                return b(context);
            } catch (InvocationTargetException e2) {
                c1902ub = new C1902ub(null, U0.UNKNOWN, "exception while fetching " + this.f13363a + " adv_id: " + (e2.getTargetException() != null ? e2.getTargetException().getMessage() : null));
                c1902ub2 = c1902ub;
                try {
                    Thread.sleep(gb.a());
                } catch (InterruptedException unused) {
                }
            } catch (Throwable th) {
                c1902ub = new C1902ub(null, U0.UNKNOWN, "exception while fetching " + this.f13363a + " adv_id: " + th.getMessage());
                c1902ub2 = c1902ub;
                Thread.sleep(gb.a());
            }
        }
        return c1902ub2 == null ? new C1902ub() : c1902ub2;
    }
}
