package com.yandex.metrica.impl.ob;

import android.app.Activity;
import com.yandex.metrica.impl.ob.C1568gk;
import java.util.Collections;
/* loaded from: classes5.dex */
class Sk {

    /* renamed from: a  reason: collision with root package name */
    private final C1667kk f13909a;

    /* renamed from: b  reason: collision with root package name */
    private final C1432b9 f13910b;

    /* renamed from: c  reason: collision with root package name */
    private volatile C1544fl f13911c;

    /* renamed from: d  reason: collision with root package name */
    private final Bl f13912d;

    /* renamed from: e  reason: collision with root package name */
    private final C1568gk.b f13913e;

    /* renamed from: f  reason: collision with root package name */
    private final C1593hk f13914f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public Sk(C1544fl c1544fl, C1667kk c1667kk, C1432b9 c1432b9, Bl bl, C1593hk c1593hk) {
        this(c1544fl, c1667kk, c1432b9, bl, c1593hk, new C1568gk.b());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(C1544fl c1544fl) {
        this.f13911c = c1544fl;
    }

    Sk(C1544fl c1544fl, C1667kk c1667kk, C1432b9 c1432b9, Bl bl, C1593hk c1593hk, C1568gk.b bVar) {
        this.f13911c = c1544fl;
        this.f13909a = c1667kk;
        this.f13910b = c1432b9;
        this.f13912d = bl;
        this.f13914f = c1593hk;
        this.f13913e = bVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Activity activity, InterfaceC1693ll interfaceC1693ll, boolean z) {
        String format;
        C1544fl c1544fl = this.f13911c;
        if ((z || this.f13909a.b().isEmpty()) && activity != null) {
            Wk a2 = this.f13914f.a(activity, c1544fl);
            if (a2 != Wk.OK) {
                int ordinal = a2.ordinal();
                if (ordinal == 1) {
                    format = String.format("no %s_config", "ui_access");
                } else if (ordinal == 2) {
                    format = String.format("no %s_config", "ui_parsing");
                } else if (ordinal != 3) {
                    format = ordinal != 4 ? ordinal != 5 ? "parsing ui context is forbidden for some reason" : "parsing ui context is forbidden by app for activity" : "parsing ui context is forbidden by app for application";
                } else {
                    format = String.format("feature %s disabled", "ui_parsing");
                }
                interfaceC1693ll.onError(format);
                return;
            } else if (!c1544fl.f14756c) {
                interfaceC1693ll.onError(String.format("feature %s disabled", "ui_collecting_for_bridge"));
                return;
            } else if (c1544fl.f14760g == null) {
                interfaceC1693ll.onError(String.format("no %s_config", "ui_collecting_for_bridge"));
                return;
            } else {
                Bl bl = this.f13912d;
                C1960wl c1960wl = c1544fl.f14758e;
                C1568gk.b bVar = this.f13913e;
                C1667kk c1667kk = this.f13909a;
                C1432b9 c1432b9 = this.f13910b;
                bVar.getClass();
                bl.a(activity, 0L, c1544fl, c1960wl, Collections.singletonList(new C1568gk(c1667kk, c1432b9, z, interfaceC1693ll, new C1568gk.a())));
                return;
            }
        }
        interfaceC1693ll.onResult(this.f13909a.a());
    }
}
