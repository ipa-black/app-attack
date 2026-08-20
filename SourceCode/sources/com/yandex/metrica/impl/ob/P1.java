package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.C1811qf;
import com.yandex.metrica.impl.ob.C1842s;
import com.yandex.metrica.networktasks.api.DefaultNetworkResponseHandler;
import com.yandex.metrica.networktasks.api.FullUrlFormer;
import com.yandex.metrica.networktasks.api.RequestBodyEncrypter;
import com.yandex.metrica.networktasks.api.RequestDataHolder;
import com.yandex.metrica.networktasks.api.ResponseDataHolder;
import com.yandex.metrica.networktasks.api.RetryPolicyConfig;
import com.yandex.metrica.networktasks.api.SendingDataTaskHelper;
import com.yandex.metrica.networktasks.api.UnderlyingNetworkTask;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import javax.net.ssl.SSLSocketFactory;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public class P1 implements UnderlyingNetworkTask {

    /* renamed from: a  reason: collision with root package name */
    private final L3 f13661a;

    /* renamed from: b  reason: collision with root package name */
    private final Map<String, String> f13662b;

    /* renamed from: c  reason: collision with root package name */
    private Ig f13663c;

    /* renamed from: d  reason: collision with root package name */
    private C1811qf f13664d;

    /* renamed from: e  reason: collision with root package name */
    private final L7 f13665e;

    /* renamed from: f  reason: collision with root package name */
    private List<Long> f13666f;

    /* renamed from: g  reason: collision with root package name */
    private int f13667g;

    /* renamed from: h  reason: collision with root package name */
    private int f13668h;
    private b i;
    private final InterfaceC1546fn<byte[]> j;
    private final C1470cm k;
    private final C1431b8 l;
    private final M0 m;
    private final Qg n;
    private final FullUrlFormer<Lg> o;
    private final C1474d1 p;
    private final RequestDataHolder q;
    private final ResponseDataHolder r;
    private final SendingDataTaskHelper s;
    private int t;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        final C1811qf.d f13669a;

        /* renamed from: b  reason: collision with root package name */
        final C1842s.a f13670b;

        /* renamed from: c  reason: collision with root package name */
        final boolean f13671c;

        a(C1811qf.d dVar, C1842s.a aVar, boolean z) {
            this.f13669a = dVar;
            this.f13670b = aVar;
            this.f13671c = z;
        }
    }

    /* loaded from: classes5.dex */
    static final class b {

        /* renamed from: a  reason: collision with root package name */
        final List<C1811qf.d> f13672a;

        /* renamed from: b  reason: collision with root package name */
        final List<Long> f13673b;

        /* renamed from: c  reason: collision with root package name */
        final JSONObject f13674c;

        b(List<C1811qf.d> list, List<Long> list2, JSONObject jSONObject) {
            this.f13672a = list;
            this.f13673b = list2;
            this.f13674c = jSONObject;
        }
    }

    public P1(L3 l3, Qg qg, C1474d1 c1474d1, FullUrlFormer<Lg> fullUrlFormer, RequestDataHolder requestDataHolder, ResponseDataHolder responseDataHolder, RequestBodyEncrypter requestBodyEncrypter) {
        this(l3, qg, c1474d1, fullUrlFormer, requestDataHolder, responseDataHolder, l3.i(), l3.q(), l3.x(), requestBodyEncrypter);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ int a(P1 p1, int i) {
        int i2 = p1.f13667g + i;
        p1.f13667g = i2;
        return i2;
    }

    @Override // com.yandex.metrica.networktasks.api.UnderlyingNetworkTask
    public String description() {
        return "ReportTask_" + this.f13661a.e().a();
    }

    @Override // com.yandex.metrica.networktasks.api.UnderlyingNetworkTask
    public FullUrlFormer<?> getFullUrlFormer() {
        return this.o;
    }

    @Override // com.yandex.metrica.networktasks.api.UnderlyingNetworkTask
    public RequestDataHolder getRequestDataHolder() {
        return this.q;
    }

    @Override // com.yandex.metrica.networktasks.api.UnderlyingNetworkTask
    public ResponseDataHolder getResponseDataHolder() {
        return this.r;
    }

    @Override // com.yandex.metrica.networktasks.api.UnderlyingNetworkTask
    public RetryPolicyConfig getRetryPolicyConfig() {
        return this.f13661a.m().q();
    }

    @Override // com.yandex.metrica.networktasks.api.UnderlyingNetworkTask
    public SSLSocketFactory getSslSocketFactory() {
        F0.g().t().getClass();
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:88:0x01e6 A[LOOP:2: B:86:0x01e0->B:88:0x01e6, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:91:0x01ff A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0201  */
    @Override // com.yandex.metrica.networktasks.api.UnderlyingNetworkTask
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onCreateTask() {
        /*
            Method dump skipped, instructions count: 678
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.P1.onCreateTask():boolean");
    }

    @Override // com.yandex.metrica.networktasks.api.UnderlyingNetworkTask
    public void onPerformRequest() {
        this.s.onPerformRequest();
    }

    @Override // com.yandex.metrica.networktasks.api.UnderlyingNetworkTask
    public void onPostRequestComplete(boolean z) {
        if (z) {
            a(false);
        } else if (A2.b(this.r.getResponseCode())) {
            a(true);
        }
        if (z && this.k.isEnabled()) {
            for (int i = 0; i < this.i.f13672a.size(); i++) {
                this.k.a(this.i.f13672a.get(i), "Event sent");
            }
        }
    }

    @Override // com.yandex.metrica.networktasks.api.UnderlyingNetworkTask
    public boolean onRequestComplete() {
        return this.s.isResponseValid();
    }

    @Override // com.yandex.metrica.networktasks.api.UnderlyingNetworkTask
    public void onRequestError(Throwable th) {
    }

    @Override // com.yandex.metrica.networktasks.api.UnderlyingNetworkTask
    public void onShouldNotExecute() {
    }

    @Override // com.yandex.metrica.networktasks.api.UnderlyingNetworkTask
    public void onSuccessfulTaskFinished() {
        this.f13661a.l().c();
    }

    @Override // com.yandex.metrica.networktasks.api.UnderlyingNetworkTask
    public void onTaskAdded() {
        this.f13661a.l().a();
    }

    @Override // com.yandex.metrica.networktasks.api.UnderlyingNetworkTask
    public void onTaskFinished() {
        this.f13661a.i().a();
        this.f13661a.l().b();
    }

    @Override // com.yandex.metrica.networktasks.api.UnderlyingNetworkTask
    public void onTaskRemoved() {
        this.f13661a.l().b();
    }

    @Override // com.yandex.metrica.networktasks.api.UnderlyingNetworkTask
    public void onUnsuccessfulTaskFinished() {
    }

    private C1811qf.a[] a(JSONObject jSONObject) {
        int length = jSONObject.length();
        if (length > 0) {
            C1811qf.a[] aVarArr = new C1811qf.a[length];
            Iterator<String> keys = jSONObject.keys();
            int i = 0;
            while (keys.hasNext()) {
                String next = keys.next();
                try {
                    C1811qf.a aVar = new C1811qf.a();
                    aVar.f15516a = next;
                    aVar.f15517b = jSONObject.getString(next);
                    aVarArr[i] = aVar;
                } catch (Throwable unused) {
                }
                i++;
            }
            return aVarArr;
        }
        return null;
    }

    private P1(L3 l3, Qg qg, C1474d1 c1474d1, FullUrlFormer<Lg> fullUrlFormer, RequestDataHolder requestDataHolder, ResponseDataHolder responseDataHolder, L7 l7, C1470cm c1470cm, C1431b8 c1431b8, RequestBodyEncrypter requestBodyEncrypter) {
        this(l3, c1470cm, l7, qg, c1431b8, c1474d1, new Tm(1024000, "event value in ReportTask", c1470cm), C1764oh.a(), fullUrlFormer, requestDataHolder, responseDataHolder, requestBodyEncrypter);
    }

    private void a(boolean z) {
        this.l.c(this.t);
        C1811qf.d[] dVarArr = this.f13664d.f15510a;
        for (int i = 0; i < dVarArr.length; i++) {
            try {
                C1811qf.d dVar = dVarArr[i];
                this.f13665e.a(this.f13666f.get(i).longValue(), J1.a(dVar.f15539b.f15561c).a(), dVar.f15540c.length, z);
                int i2 = J1.f13235e;
            } catch (Throwable unused) {
            }
        }
        this.f13665e.a(this.f13661a.v().a());
    }

    P1(L3 l3, C1470cm c1470cm, L7 l7, Qg qg, C1431b8 c1431b8, C1474d1 c1474d1, Tm tm, M0 m0, FullUrlFormer<Lg> fullUrlFormer, RequestDataHolder requestDataHolder, ResponseDataHolder responseDataHolder, RequestBodyEncrypter requestBodyEncrypter) {
        this.f13662b = new LinkedHashMap();
        this.f13667g = 0;
        this.f13668h = -1;
        this.s = new SendingDataTaskHelper(requestBodyEncrypter, new Ql(), requestDataHolder, responseDataHolder, new DefaultNetworkResponseHandler());
        this.n = qg;
        this.f13661a = l3;
        this.f13665e = l7;
        this.k = c1470cm;
        this.j = tm;
        this.l = c1431b8;
        this.p = c1474d1;
        this.m = m0;
        this.q = requestDataHolder;
        this.r = responseDataHolder;
        this.o = fullUrlFormer;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0054 A[Catch: all -> 0x0124, TRY_LEAVE, TryCatch #0 {all -> 0x0124, blocks: (B:5:0x0022, B:6:0x0028, B:8:0x002f, B:20:0x0054, B:23:0x0060, B:26:0x006f, B:28:0x0078, B:37:0x009a, B:42:0x00ab, B:44:0x00b9, B:51:0x00c5, B:50:0x00c4, B:47:0x00bf, B:52:0x00cb, B:55:0x00dd, B:58:0x00e4, B:39:0x00a3, B:61:0x00ec, B:18:0x004e, B:62:0x00f1, B:64:0x00f7, B:65:0x010c, B:67:0x0110), top: B:81:0x0020 }] */
    /* JADX WARN: Removed duplicated region for block: B:98:0x00ec A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    com.yandex.metrica.impl.ob.P1.a a(long r17, com.yandex.metrica.impl.ob.C1811qf.d.b r19, com.yandex.metrica.impl.ob.Lg r20, java.util.List<java.lang.Throwable> r21, int r22) {
        /*
            Method dump skipped, instructions count: 309
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.P1.a(long, com.yandex.metrica.impl.ob.qf$d$b, com.yandex.metrica.impl.ob.Lg, java.util.List, int):com.yandex.metrica.impl.ob.P1$a");
    }
}
