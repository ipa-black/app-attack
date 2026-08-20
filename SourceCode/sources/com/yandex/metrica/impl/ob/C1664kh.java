package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.Jf;
import org.json.JSONObject;
/* renamed from: com.yandex.metrica.impl.ob.kh  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1664kh {

    /* renamed from: a  reason: collision with root package name */
    private final C1689lh f15032a;

    /* renamed from: b  reason: collision with root package name */
    private final com.yandex.metrica.d f15033b;

    public C1664kh() {
        this(new C1689lh(), C1764oh.a());
    }

    public void a(Jf.e.b bVar) {
        this.f15033b.b("provided_request_result", this.f15032a.a(bVar));
    }

    public void b(Jf.e.a aVar) {
        String th;
        com.yandex.metrica.d dVar = this.f15033b;
        this.f15032a.getClass();
        try {
            th = new JSONObject().put("id", aVar.f13278a).toString();
        } catch (Throwable th2) {
            th = th2.toString();
        }
        dVar.b("provided_request_send", th);
    }

    C1664kh(C1689lh c1689lh, com.yandex.metrica.d dVar) {
        this.f15032a = c1689lh;
        this.f15033b = dVar;
    }

    public void a(Jf.e.a aVar) {
        String th;
        com.yandex.metrica.d dVar = this.f15033b;
        this.f15032a.getClass();
        try {
            th = new JSONObject().put("id", aVar.f13278a).toString();
        } catch (Throwable th2) {
            th = th2.toString();
        }
        dVar.b("provided_request_schedule", th);
    }
}
