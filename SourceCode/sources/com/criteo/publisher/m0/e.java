package com.criteo.publisher.m0;

import com.criteo.publisher.k0.g;
import com.criteo.publisher.model.a0;
import com.criteo.publisher.model.u;
import com.criteo.publisher.n0.r;
import com.criteo.publisher.n0.s;
import com.criteo.publisher.p;
import com.criteo.publisher.x;
import java.io.InputStream;
import java.net.URL;
/* compiled from: WebViewDataTask.java */
/* loaded from: classes2.dex */
public class e extends x {

    /* renamed from: c  reason: collision with root package name */
    private final String f9029c;

    /* renamed from: d  reason: collision with root package name */
    private final a0 f9030d;

    /* renamed from: e  reason: collision with root package name */
    private final u f9031e;

    /* renamed from: f  reason: collision with root package name */
    private final d f9032f;

    /* renamed from: g  reason: collision with root package name */
    private final g f9033g;

    public e(String str, a0 a0Var, u uVar, d dVar, g gVar) {
        this.f9029c = str;
        this.f9030d = a0Var;
        this.f9031e = uVar;
        this.f9032f = dVar;
        this.f9033g = gVar;
    }

    @Override // com.criteo.publisher.x
    public void a() throws Exception {
        try {
            String b2 = b();
            if (s.a((CharSequence) b2)) {
                c();
            } else {
                a(b2);
            }
        } catch (Throwable th) {
            if (s.a((CharSequence) null)) {
                c();
            } else {
                a((String) null);
            }
            throw th;
        }
    }

    String b() throws Exception {
        InputStream a2 = this.f9033g.a(new URL(this.f9029c), this.f9031e.b().get());
        try {
            String a3 = r.a(a2);
            if (a2 != null) {
                a2.close();
            }
            return a3;
        } catch (Throwable th) {
            if (a2 != null) {
                try {
                    a2.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    void a(String str) {
        this.f9030d.a(str);
        this.f9030d.c();
        this.f9032f.a(p.VALID);
    }

    void c() {
        this.f9030d.a();
        this.f9032f.a(p.INVALID_CREATIVE);
    }
}
