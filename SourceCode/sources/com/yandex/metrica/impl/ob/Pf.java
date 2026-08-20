package com.yandex.metrica.impl.ob;

import android.content.Context;
import com.yandex.metrica.core.api.executors.ICommonExecutor;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes5.dex */
public class Pf {

    /* renamed from: a  reason: collision with root package name */
    private final Map<String, Of> f13707a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    private final Sf f13708b;

    /* renamed from: c  reason: collision with root package name */
    private final ICommonExecutor f13709c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f13710a;

        a(Context context) {
            this.f13710a = context;
        }

        @Override // java.lang.Runnable
        public void run() {
            Sf sf = Pf.this.f13708b;
            Context context = this.f13710a;
            sf.getClass();
            R2.a(context);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        private static final Pf f13712a = new Pf(P.g().c(), new Sf());
    }

    Pf(ICommonExecutor iCommonExecutor, Sf sf) {
        this.f13709c = iCommonExecutor;
        this.f13708b = sf;
    }

    private Of b(Context context, String str) {
        this.f13708b.getClass();
        if (R2.k() == null) {
            this.f13709c.execute(new a(context));
        }
        Of of = new Of(this.f13709c, context, str);
        this.f13707a.put(str, of);
        return of;
    }

    public static Pf a() {
        return b.f13712a;
    }

    public Of a(Context context, String str) {
        Of of = this.f13707a.get(str);
        if (of == null) {
            synchronized (this.f13707a) {
                of = this.f13707a.get(str);
                if (of == null) {
                    Of b2 = b(context, str);
                    b2.d(str);
                    of = b2;
                }
            }
        }
        return of;
    }

    public Of a(Context context, com.yandex.metrica.e eVar) {
        Of of = this.f13707a.get(eVar.apiKey);
        if (of == null) {
            synchronized (this.f13707a) {
                of = this.f13707a.get(eVar.apiKey);
                if (of == null) {
                    Of b2 = b(context, eVar.apiKey);
                    b2.a(eVar);
                    of = b2;
                }
            }
        }
        return of;
    }
}
