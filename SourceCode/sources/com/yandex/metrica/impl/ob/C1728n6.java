package com.yandex.metrica.impl.ob;

import android.content.Context;
import com.yandex.metrica.impl.ob.U1;
import java.io.BufferedOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileOutputStream;
import java.io.PrintWriter;
/* renamed from: com.yandex.metrica.impl.ob.n6  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1728n6 {

    /* renamed from: a  reason: collision with root package name */
    private final B0 f15235a;

    /* renamed from: b  reason: collision with root package name */
    private final C1703m6 f15236b;

    /* renamed from: c  reason: collision with root package name */
    private final Context f15237c;

    /* renamed from: d  reason: collision with root package name */
    private final C1913um f15238d;

    public C1728n6(Context context) {
        this(context, new B0(), new C1703m6(), C1913um.a(context));
    }

    public void a(U1.f fVar) {
        A3 a2;
        PrintWriter printWriter;
        File a3 = this.f15235a.a(this.f15237c, "appmetrica_crashes");
        if (this.f15236b.a(a3)) {
            String str = fVar.a().a().g() + "-" + a2.h();
            C1865sm a4 = this.f15238d.a(str);
            try {
                a4.a();
                this.f15235a.getClass();
                printWriter = new PrintWriter(new BufferedOutputStream(new FileOutputStream(new File(a3, str))));
            } catch (Throwable unused) {
                printWriter = null;
            }
            try {
                printWriter.write(new Z6(fVar.b(), fVar.a(), fVar.c()).k());
                A2.a((Closeable) printWriter);
                a4.c();
            } catch (Throwable unused2) {
                A2.a((Closeable) printWriter);
                a4.c();
            }
        }
    }

    C1728n6(Context context, B0 b0, C1703m6 c1703m6, C1913um c1913um) {
        this.f15237c = context;
        this.f15235a = b0;
        this.f15236b = c1703m6;
        this.f15238d = c1913um;
    }
}
