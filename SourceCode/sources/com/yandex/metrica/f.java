package com.yandex.metrica;

import android.app.Application;
import android.content.Context;
import android.webkit.WebView;
import com.yandex.metrica.impl.ob.C1398a0;
import com.yandex.metrica.impl.ob.C1749o2;
import com.yandex.metrica.impl.ob.C1795q;
import com.yandex.metrica.impl.ob.D2;
import com.yandex.metrica.impl.ob.P;
import com.yandex.metrica.impl.ob.R2;
import com.yandex.metrica.impl.ob.Sf;
import com.yandex.metrica.impl.ob.Uf;
/* loaded from: classes3.dex */
public class f {

    /* renamed from: a  reason: collision with root package name */
    private final Sf f12540a;

    /* renamed from: b  reason: collision with root package name */
    private final D2 f12541b;

    /* renamed from: c  reason: collision with root package name */
    private final C1795q f12542c;

    /* renamed from: d  reason: collision with root package name */
    private final C1749o2 f12543d;

    /* renamed from: e  reason: collision with root package name */
    private final C1398a0 f12544e;

    public f(Sf sf, D2 d2) {
        this(sf, d2, P.g().b(), P.g().l(), P.g().e());
    }

    public void a(Context context, YandexMetricaConfig yandexMetricaConfig) {
        i iVar = (i) yandexMetricaConfig;
        this.f12544e.a(context);
        Boolean bool = iVar.sessionsAutoTrackingEnabled;
        Boolean bool2 = Boolean.TRUE;
        if (bool == null) {
            bool = bool2;
        }
        if (bool.booleanValue()) {
            this.f12543d.a();
        }
        this.f12540a.getClass();
        R2.a(context).b(iVar);
    }

    public void b(Context context) {
        this.f12544e.a(context);
    }

    public void c(Context context) {
        this.f12544e.a(context);
    }

    public f(Sf sf, D2 d2, C1795q c1795q, C1749o2 c1749o2, C1398a0 c1398a0) {
        this.f12540a = sf;
        this.f12541b = d2;
        this.f12542c = c1795q;
        this.f12543d = c1749o2;
        this.f12544e = c1398a0;
    }

    public C1795q.c a(Application application) {
        this.f12542c.a(application);
        return this.f12543d.a();
    }

    public void a(Context context) {
        this.f12544e.a(context);
    }

    public void a(WebView webView, Uf uf) {
        this.f12541b.a(webView, uf);
    }
}
