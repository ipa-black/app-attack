package com.yandex.metrica.impl.ob;

import android.content.Context;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
/* renamed from: com.yandex.metrica.impl.ob.j7  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1629j7 {

    /* renamed from: a  reason: collision with root package name */
    private String f14963a;

    /* renamed from: b  reason: collision with root package name */
    private final Context f14964b;

    /* renamed from: c  reason: collision with root package name */
    private final List<InterfaceC1654k7> f14965c;

    /* renamed from: d  reason: collision with root package name */
    private final C1430b7 f14966d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f14967e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f14968f;

    /* renamed from: g  reason: collision with root package name */
    private InterfaceC1654k7 f14969g;

    /* renamed from: h  reason: collision with root package name */
    private final B0 f14970h;

    public C1629j7(Context context, A3 a3) {
        this(context, A2.a(21) ? Arrays.asList(new A7(context, a3), new C1754o7()) : Collections.singletonList(new C1754o7()), new B0(), new C1430b7());
    }

    private void a() {
        InterfaceC1654k7 interfaceC1654k7;
        if (!this.f14968f) {
            Iterator<InterfaceC1654k7> it = this.f14965c.iterator();
            while (true) {
                if (!it.hasNext()) {
                    interfaceC1654k7 = null;
                    break;
                }
                interfaceC1654k7 = it.next();
                try {
                    C1430b7 c1430b7 = this.f14966d;
                    String c2 = interfaceC1654k7.c();
                    c1430b7.getClass();
                    System.loadLibrary(c2);
                    break;
                } catch (Throwable unused) {
                }
            }
            this.f14969g = interfaceC1654k7;
            if (interfaceC1654k7 != null) {
                try {
                    interfaceC1654k7.a(false);
                } catch (Throwable unused2) {
                }
                this.f14963a = this.f14970h.b(this.f14964b, this.f14969g.a());
            }
        }
        this.f14968f = true;
    }

    C1629j7(Context context, List<InterfaceC1654k7> list, B0 b0, C1430b7 c1430b7) {
        this.f14964b = context;
        this.f14965c = list;
        this.f14970h = b0;
        this.f14966d = c1430b7;
    }

    public synchronized void a(boolean z, String str, String str2) {
        String str3;
        if (z) {
            a();
            synchronized (this) {
                InterfaceC1654k7 interfaceC1654k7 = this.f14969g;
                if ((interfaceC1654k7 != null) && (str3 = this.f14963a) != null && !this.f14967e) {
                    interfaceC1654k7.a(str, str3, str2);
                    this.f14967e = true;
                }
            }
        }
        synchronized (this) {
            synchronized (this) {
                InterfaceC1654k7 interfaceC1654k72 = this.f14969g;
                if ((interfaceC1654k72 != null) && this.f14967e) {
                    interfaceC1654k72.b();
                }
                this.f14967e = false;
            }
        }
    }

    public void a(String str) {
        InterfaceC1654k7 interfaceC1654k7 = this.f14969g;
        if (interfaceC1654k7 != null) {
            interfaceC1654k7.a(str);
        }
    }
}
