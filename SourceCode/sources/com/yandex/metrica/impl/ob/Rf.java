package com.yandex.metrica.impl.ob;

import android.content.Context;
import com.yandex.metrica.IIdentifierCallback;
import com.yandex.metrica.core.api.executors.ICommonExecutor;
import com.yandex.metrica.impl.interact.CellularNetworkInfo;
import com.yandex.metrica.p;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Future;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public class Rf {

    /* renamed from: a  reason: collision with root package name */
    private final Sf f13804a;

    /* renamed from: b  reason: collision with root package name */
    private final ICommonExecutor f13805b;

    /* renamed from: c  reason: collision with root package name */
    private final Kn<Context> f13806c;

    /* renamed from: d  reason: collision with root package name */
    private final Kn<String> f13807d;

    /* renamed from: e  reason: collision with root package name */
    private final C1595hm f13808e;

    /* loaded from: classes5.dex */
    class a extends AbstractRunnableC1520em {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f13809a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ IIdentifierCallback f13810b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ List f13811c;

        a(Context context, IIdentifierCallback iIdentifierCallback, List list) {
            this.f13809a = context;
            this.f13810b = iIdentifierCallback;
            this.f13811c = list;
        }

        @Override // com.yandex.metrica.impl.ob.AbstractRunnableC1520em
        public void a() throws Exception {
            Sf sf = Rf.this.f13804a;
            Context context = this.f13809a;
            sf.getClass();
            R2.a(context).a(this.f13810b, this.f13811c);
        }
    }

    /* loaded from: classes5.dex */
    class b extends AbstractCallableC1495dm<String> {
        b() {
        }

        @Override // com.yandex.metrica.impl.ob.AbstractCallableC1495dm
        public String a() throws Exception {
            Rf.this.f13804a.getClass();
            R2 k = R2.k();
            if (k == null) {
                return null;
            }
            return k.e().a();
        }
    }

    /* loaded from: classes5.dex */
    class c extends AbstractCallableC1495dm<Boolean> {
        c() {
        }

        @Override // com.yandex.metrica.impl.ob.AbstractCallableC1495dm
        public Boolean a() throws Exception {
            Rf.this.f13804a.getClass();
            R2 k = R2.k();
            if (k == null) {
                return null;
            }
            return k.e().b();
        }
    }

    /* loaded from: classes5.dex */
    class d extends AbstractRunnableC1520em {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f13815a;

        d(boolean z) {
            this.f13815a = z;
        }

        @Override // com.yandex.metrica.impl.ob.AbstractRunnableC1520em
        public void a() throws Exception {
            Sf sf = Rf.this.f13804a;
            boolean z = this.f13815a;
            sf.getClass();
            R2.b(z);
        }
    }

    /* loaded from: classes5.dex */
    class e extends AbstractRunnableC1520em {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ p.Ucc f13817a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ boolean f13818b;

        /* loaded from: classes5.dex */
        class a implements InterfaceC1693ll {
            a() {
            }

            @Override // com.yandex.metrica.impl.ob.InterfaceC1693ll
            public void onError(String str) {
                e.this.f13817a.onError(str);
            }

            @Override // com.yandex.metrica.impl.ob.InterfaceC1693ll
            public void onResult(JSONObject jSONObject) {
                e.this.f13817a.onResult(jSONObject);
            }
        }

        e(p.Ucc ucc, boolean z) {
            this.f13817a = ucc;
            this.f13818b = z;
        }

        @Override // com.yandex.metrica.impl.ob.AbstractRunnableC1520em
        public void a() throws Exception {
            Rf.b(Rf.this).a(new a(), this.f13818b);
        }
    }

    /* loaded from: classes5.dex */
    class f extends AbstractRunnableC1520em {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f13821a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Map f13822b;

        f(Context context, Map map) {
            this.f13821a = context;
            this.f13822b = map;
        }

        @Override // com.yandex.metrica.impl.ob.AbstractRunnableC1520em
        public void a() throws Exception {
            Sf sf = Rf.this.f13804a;
            Context context = this.f13821a;
            sf.getClass();
            R2.a(context).a(this.f13822b);
        }
    }

    public Rf(ICommonExecutor iCommonExecutor, Sf sf) {
        this(iCommonExecutor, sf, new Kf(sf), new Hn(new Gn("Context")), new Hn(new Gn("Event name")), new C1595hm());
    }

    public Future<Boolean> b() {
        return this.f13805b.submit(new c());
    }

    public String c(Context context) {
        this.f13806c.a(context);
        return context.getPackageName();
    }

    public String d(Context context) {
        this.f13806c.a(context);
        this.f13804a.getClass();
        return R2.a(context).a();
    }

    public Rf(ICommonExecutor iCommonExecutor, Sf sf, Kf kf, Kn<Context> kn, Kn<String> kn2, C1595hm c1595hm) {
        this.f13804a = sf;
        this.f13805b = iCommonExecutor;
        this.f13806c = kn;
        this.f13807d = kn2;
        this.f13808e = c1595hm;
    }

    public void a(Context context, IIdentifierCallback iIdentifierCallback, List<String> list) {
        this.f13806c.a(context);
        this.f13805b.execute(new a(context, iIdentifierCallback, list));
    }

    public String b(Context context) {
        this.f13806c.a(context);
        this.f13804a.getClass();
        return R2.a(context).c();
    }

    public Future<String> a() {
        return this.f13805b.submit(new b());
    }

    public String a(Context context) {
        this.f13806c.a(context);
        return this.f13808e.a(context) ? new CellularNetworkInfo(context).getCelluralInfo() : "";
    }

    public void a(Context context, boolean z) {
        this.f13806c.a(context);
        this.f13805b.execute(new d(z));
    }

    public void a(p.Ucc ucc, boolean z) {
        this.f13804a.getClass();
        if (!R2.i()) {
            ucc.onError("Main API key is not activated");
        } else {
            this.f13805b.execute(new e(ucc, z));
        }
    }

    static K0 b(Rf rf) {
        rf.f13804a.getClass();
        return R2.k().d().b();
    }

    public void a(Context context, Map<String, Object> map) {
        this.f13806c.a(context);
        this.f13805b.execute(new f(context, map));
    }
}
