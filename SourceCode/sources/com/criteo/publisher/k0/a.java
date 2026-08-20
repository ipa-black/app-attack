package com.criteo.publisher.k0;

import android.content.Context;
import com.criteo.publisher.logging.h;
import com.criteo.publisher.model.u;
import com.criteo.publisher.x;
import org.json.JSONObject;
/* compiled from: AppEventTask.java */
/* loaded from: classes2.dex */
public class a extends x {

    /* renamed from: c  reason: collision with root package name */
    private final com.criteo.publisher.logging.g f8884c = h.b(a.class);

    /* renamed from: d  reason: collision with root package name */
    private final Context f8885d;

    /* renamed from: e  reason: collision with root package name */
    private final com.criteo.publisher.n0.d f8886e;

    /* renamed from: f  reason: collision with root package name */
    private final com.criteo.publisher.n0.b f8887f;

    /* renamed from: g  reason: collision with root package name */
    private final g f8888g;

    /* renamed from: h  reason: collision with root package name */
    private final u f8889h;
    private final com.criteo.publisher.l0.c i;
    private final String j;

    public a(Context context, com.criteo.publisher.n0.d dVar, com.criteo.publisher.n0.b bVar, g gVar, u uVar, com.criteo.publisher.l0.c cVar, String str) {
        this.f8885d = context;
        this.f8886e = dVar;
        this.f8887f = bVar;
        this.f8888g = gVar;
        this.f8889h = uVar;
        this.i = cVar;
        this.j = str;
    }

    @Override // com.criteo.publisher.x
    public void a() throws Throwable {
        boolean d2 = this.f8887f.d();
        String b2 = this.f8887f.b();
        String packageName = this.f8885d.getPackageName();
        String str = this.f8889h.b().get();
        JSONObject a2 = this.f8888g.a(2379, packageName, b2, this.j, d2 ? 1 : 0, str, this.i.a());
        this.f8884c.a("App event response: %s", a2);
        if (a2.has("throttleSec")) {
            this.f8886e.a(a2.optInt("throttleSec", 0));
        } else {
            this.f8886e.a(0);
        }
    }
}
