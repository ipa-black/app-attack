package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.database.Cursor;
import com.yandex.metrica.impl.ob.C1738ng;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;
/* renamed from: com.yandex.metrica.impl.ob.gg  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1564gg {

    /* renamed from: a  reason: collision with root package name */
    private final Context f14802a;

    /* renamed from: b  reason: collision with root package name */
    private Cursor f14803b;

    public C1564gg(Context context) {
        this.f14802a = context;
    }

    public void a(InterfaceC1931vg interfaceC1931vg) {
        try {
            try {
                FutureTask futureTask = new FutureTask(new CallableC1539fg(this));
                F0.g().q().a(futureTask).start();
                C1489dg c1489dg = (C1489dg) futureTask.get(5L, TimeUnit.SECONDS);
                A2.a(this.f14803b);
                ((C1738ng.a) interfaceC1931vg).a(c1489dg);
            } finally {
                A2.a(this.f14803b);
            }
        } catch (Throwable unused) {
            C1713mg c1713mg = C1713mg.this;
            C1713mg.a(c1713mg, null, C1713mg.c(c1713mg));
        }
    }
}
