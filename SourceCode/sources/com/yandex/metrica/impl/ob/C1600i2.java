package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.os.ResultReceiver;
import com.yandex.metrica.CounterConfiguration;
/* renamed from: com.yandex.metrica.impl.ob.i2  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1600i2 {

    /* renamed from: a  reason: collision with root package name */
    private final String f14896a;

    /* renamed from: b  reason: collision with root package name */
    private final Context f14897b;

    /* renamed from: c  reason: collision with root package name */
    private final CounterConfiguration.b f14898c;

    /* renamed from: d  reason: collision with root package name */
    private final C1649k2 f14899d;

    public C1600i2(String str, Context context, CounterConfiguration.b bVar, C1649k2 c1649k2) {
        this.f14896a = str;
        this.f14897b = context;
        int ordinal = bVar.ordinal();
        if (ordinal == 0) {
            this.f14898c = CounterConfiguration.b.SELF_DIAGNOSTIC_MAIN;
        } else if (ordinal != 1) {
            this.f14898c = null;
        } else {
            this.f14898c = CounterConfiguration.b.SELF_DIAGNOSTIC_MANUAL;
        }
        this.f14899d = c1649k2;
    }

    public void a(C1448c0 c1448c0) {
        if (this.f14898c != null) {
            try {
                String str = this.f14896a;
                CounterConfiguration counterConfiguration = new CounterConfiguration();
                synchronized (counterConfiguration) {
                    counterConfiguration.b(str);
                }
                counterConfiguration.a(this.f14898c);
                this.f14899d.a(c1448c0.b(new Q1(new A3(this.f14897b, (ResultReceiver) null), counterConfiguration, null).c()));
            } catch (Throwable unused) {
            }
        }
    }
}
