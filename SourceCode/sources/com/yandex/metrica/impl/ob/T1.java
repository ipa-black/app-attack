package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.os.ResultReceiver;
import android.util.Base64;
import android.util.Pair;
import com.google.protobuf.nano.ym.MessageNano;
import com.yandex.metrica.IMetricaService;
import com.yandex.metrica.impl.ob.U1;
import java.io.UnsupportedEncodingException;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Future;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public class T1 implements P0 {

    /* renamed from: a  reason: collision with root package name */
    private final Context f13919a;

    /* renamed from: b  reason: collision with root package name */
    private C1748o1 f13920b;

    /* renamed from: c  reason: collision with root package name */
    private C1623j1 f13921c;

    /* renamed from: d  reason: collision with root package name */
    private final T f13922d;

    /* renamed from: e  reason: collision with root package name */
    private InterfaceC1640ji f13923e;

    /* renamed from: f  reason: collision with root package name */
    private final P6 f13924f;

    /* renamed from: g  reason: collision with root package name */
    private final C1921v6 f13925g;

    /* renamed from: h  reason: collision with root package name */
    private final U1 f13926h = new U1(this);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a implements U1.e {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Map f13927a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Q1 f13928b;

        a(Map map, Q1 q1) {
            this.f13927a = map;
            this.f13928b = q1;
        }

        @Override // com.yandex.metrica.impl.ob.U1.e
        public C1448c0 a(C1448c0 c1448c0) {
            T1 t1 = T1.this;
            C1448c0 f2 = c1448c0.f(Tl.g(this.f13927a));
            Q1 q1 = this.f13928b;
            t1.getClass();
            if (C2011z0.f(f2.f14511e)) {
                f2.c(q1.f13738c.a());
            }
            return f2;
        }
    }

    /* loaded from: classes5.dex */
    class b implements U1.e {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ C1930vf f13930a;

        b(T1 t1, C1930vf c1930vf) {
            this.f13930a = c1930vf;
        }

        @Override // com.yandex.metrica.impl.ob.U1.e
        public C1448c0 a(C1448c0 c1448c0) {
            return c1448c0.f(new String(Base64.encode(MessageNano.toByteArray(this.f13930a), 0)));
        }
    }

    /* loaded from: classes5.dex */
    class c implements U1.e {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f13931a;

        c(T1 t1, String str) {
            this.f13931a = str;
        }

        @Override // com.yandex.metrica.impl.ob.U1.e
        public C1448c0 a(C1448c0 c1448c0) {
            return c1448c0.f(this.f13931a);
        }
    }

    /* loaded from: classes5.dex */
    class d implements U1.e {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ W1 f13932a;

        d(T1 t1, W1 w1) {
            this.f13932a = w1;
        }

        @Override // com.yandex.metrica.impl.ob.U1.e
        public C1448c0 a(C1448c0 c1448c0) {
            Pair<byte[], Integer> a2 = this.f13932a.a();
            C1448c0 f2 = c1448c0.f(new String(Base64.encode((byte[]) a2.first, 0)));
            f2.f14514h = ((Integer) a2.second).intValue();
            return f2;
        }
    }

    /* loaded from: classes5.dex */
    class e implements U1.e {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Sg f13933a;

        e(T1 t1, Sg sg) {
            this.f13933a = sg;
        }

        @Override // com.yandex.metrica.impl.ob.U1.e
        public C1448c0 a(C1448c0 c1448c0) {
            kotlin.Pair<byte[], Integer> a2 = this.f13933a.a();
            C1448c0 f2 = c1448c0.f(new String(Base64.encode(a2.getFirst(), 0)));
            f2.f14514h = a2.getSecond().intValue();
            return f2;
        }
    }

    /* loaded from: classes5.dex */
    class f implements U1.e {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Na f13934a;

        f(T1 t1, Na na) {
            this.f13934a = na;
        }

        @Override // com.yandex.metrica.impl.ob.U1.e
        public C1448c0 a(C1448c0 c1448c0) {
            C1448c0 f2 = c1448c0.f(L0.a(MessageNano.toByteArray((MessageNano) this.f13934a.f13532a)));
            f2.f14514h = this.f13934a.f13533b.a();
            return f2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public T1(A3 a3, Context context, C1748o1 c1748o1, P6 p6, C1921v6 c1921v6) {
        this.f13920b = c1748o1;
        this.f13919a = context;
        this.f13922d = new T(a3);
        this.f13924f = p6;
        this.f13925g = c1921v6;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(C1623j1 c1623j1) {
        this.f13921c = c1623j1;
    }

    public void b(Q1 q1) {
        C1612ie c1612ie = q1.f13739d;
        String e2 = q1.e();
        C1470cm a2 = a(q1);
        List<Integer> list = C2011z0.i;
        JSONObject jSONObject = new JSONObject();
        if (c1612ie != null) {
            c1612ie.a(jSONObject);
        }
        a(new J(jSONObject.toString(), "", EnumC1399a1.EVENT_TYPE_ACTIVATION.b(), 0, a2).d(e2), q1);
    }

    public void c(Q1 q1) {
        C1448c0 c1448c0 = new C1448c0();
        c1448c0.f14511e = EnumC1399a1.EVENT_TYPE_APP_ENVIRONMENT_CLEARED.b();
        a(new U1.f(c1448c0, q1));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d() {
        this.f13920b.g();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void e() {
        this.f13920b.f();
    }

    public void f() {
        this.f13920b.a();
    }

    public void g() {
        this.f13920b.c();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(InterfaceC1640ji interfaceC1640ji) {
        this.f13923e = interfaceC1640ji;
        this.f13922d.a(interfaceC1640ji);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Boolean bool, Boolean bool2, Boolean bool3) {
        if (A2.a(bool)) {
            this.f13922d.b().b(bool.booleanValue());
        }
        if (A2.a(bool2)) {
            this.f13922d.b().c(bool2.booleanValue());
        }
        if (A2.a(bool3)) {
            this.f13922d.b().a(bool3.booleanValue());
        }
        C1448c0 c1448c0 = new C1448c0();
        c1448c0.f14511e = EnumC1399a1.EVENT_TYPE_UPDATE_PRE_ACTIVATION_CONFIG.b();
        a(c1448c0, this.f13922d);
    }

    public C1748o1 c() {
        return this.f13920b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(String str, Q1 q1) {
        try {
            a(C2011z0.c(L0.a(MessageNano.toByteArray(this.f13924f.fromModel(new C1480d7(str == null ? new byte[0] : str.getBytes(com.google.android.exoplayer2.C.UTF8_NAME), new C1455c7(EnumC1555g7.USER, null))))), a(q1)), q1);
        } catch (UnsupportedEncodingException unused) {
        }
    }

    public Future<Void> a(C1448c0 c1448c0, Q1 q1, Map<String, Object> map) {
        EnumC1399a1 enumC1399a1 = EnumC1399a1.EVENT_TYPE_EXCEPTION_UNHANDLED_PROTOBUF;
        this.f13920b.f();
        U1.f fVar = new U1.f(c1448c0, q1);
        if (!A2.b(map)) {
            fVar.a(new a(map, q1));
        }
        return a(fVar);
    }

    public Future<Void> a(A3 a3) {
        return this.f13926h.queuePauseUserSession(a3);
    }

    public void a(List<String> list, ResultReceiver resultReceiver, Map<String, String> map) {
        Bundle bundle = new Bundle();
        bundle.putParcelable("com.yandex.metrica.impl.IdentifiersData", new V0(list, map, resultReceiver));
        EnumC1399a1 enumC1399a1 = EnumC1399a1.EVENT_TYPE_STARTUP;
        int i = Ul.f14129e;
        C1470cm a2 = C1470cm.a();
        List<Integer> list2 = C2011z0.i;
        a(new J("", "", enumC1399a1.b(), 0, a2).c(bundle), this.f13922d);
    }

    public void a(ResultReceiverC1514eg resultReceiverC1514eg) {
        Bundle bundle = new Bundle();
        bundle.putParcelable("com.yandex.metrica.impl.referrer.common.ReferrerResultReceiver", resultReceiverC1514eg);
        int i = Ul.f14129e;
        C1470cm a2 = C1470cm.a();
        List<Integer> list = C2011z0.i;
        a(new J("", "", EnumC1399a1.EVENT_TYPE_REQUEST_REFERRER.b(), 0, a2).c(bundle), this.f13922d);
    }

    public Future<Void> b(A3 a3) {
        return this.f13926h.queueResumeUserSession(a3);
    }

    public void b(String str) {
        this.f13922d.a().b(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(H6 h6, Q1 q1) {
        this.f13920b.f();
        a(this.f13925g.a(h6, q1));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(String str, Q1 q1) {
        a(new U1.f(J.a(str, a(q1)), q1).a(new c(this, str)));
    }

    public com.yandex.metrica.rtm.wrapper.k b() {
        return this.f13926h;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(C1448c0 c1448c0, Q1 q1) {
        if (C2011z0.f(c1448c0.f14511e)) {
            c1448c0.c(q1.f13738c.a());
        }
        a(c1448c0, q1, (Map<String, Object>) null);
    }

    public void a(List<String> list) {
        this.f13922d.a().a(list);
    }

    public void a(Map<String, String> map) {
        this.f13922d.a().a(map);
    }

    public void a(String str) {
        this.f13922d.a().a(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(H6 h6, Q1 q1) {
        this.f13920b.f();
        U1.f a2 = this.f13925g.a(h6, q1);
        a2.a().a(this.f13923e);
        this.f13926h.sendCrash(a2);
    }

    public void a(String str, String str2, Q1 q1) {
        C1448c0 c1448c0 = new C1448c0();
        c1448c0.f14511e = EnumC1399a1.EVENT_TYPE_APP_ENVIRONMENT_UPDATED.b();
        a(new U1.f(c1448c0.a(str, str2), q1));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(C1930vf c1930vf, Q1 q1) {
        C1448c0 c1448c0 = new C1448c0();
        c1448c0.f14511e = EnumC1399a1.EVENT_TYPE_SEND_USER_PROFILE.b();
        a(new U1.f(c1448c0, q1).a(new b(this, c1930vf)));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(W1 w1, Q1 q1) {
        J j = new J(a(q1));
        j.f14511e = EnumC1399a1.EVENT_TYPE_SEND_REVENUE_EVENT.b();
        a(new U1.f(j, q1).a(new d(this, w1)));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Sg sg, Q1 q1) {
        J j = new J(a(q1));
        j.f14511e = EnumC1399a1.EVENT_TYPE_SEND_AD_REVENUE_EVENT.b();
        a(new U1.f(j, q1).a(new e(this, sg)));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Za za, Q1 q1) {
        for (Na<C1712mf, Vm> na : za.toProto()) {
            J j = new J(a(q1));
            j.f14511e = EnumC1399a1.EVENT_TYPE_SEND_ECOMMERCE_EVENT.b();
            a(new U1.f(j, q1).a(new f(this, na)));
        }
    }

    public void a(IMetricaService iMetricaService, C1448c0 c1448c0, Q1 q1) throws RemoteException {
        iMetricaService.reportData(c1448c0.b(q1.c()));
        C1623j1 c1623j1 = this.f13921c;
        if (c1623j1 == null || c1623j1.f12654b.f()) {
            this.f13920b.g();
        }
    }

    private Future<Void> a(U1.f fVar) {
        fVar.a().a(this.f13923e);
        return this.f13926h.queueReport(fVar);
    }

    public Context a() {
        return this.f13919a;
    }

    private C1470cm a(Q1 q1) {
        return Ul.b(q1.b().a());
    }
}
