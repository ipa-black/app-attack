package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.text.TextUtils;
import com.google.protobuf.nano.ym.MessageNano;
import com.yandex.metrica.networktasks.api.ConfigProvider;
import com.yandex.metrica.networktasks.api.DefaultNetworkResponseHandler;
import com.yandex.metrica.networktasks.api.FullUrlFormer;
import com.yandex.metrica.networktasks.api.RequestBodyEncrypter;
import com.yandex.metrica.networktasks.api.RequestDataHolder;
import com.yandex.metrica.networktasks.api.ResponseDataHolder;
import com.yandex.metrica.networktasks.api.RetryPolicyConfig;
import com.yandex.metrica.networktasks.api.SendingDataTaskHelper;
import com.yandex.metrica.networktasks.api.UnderlyingNetworkTask;
import javax.net.ssl.SSLSocketFactory;
/* renamed from: com.yandex.metrica.impl.ob.cd  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1461cd implements UnderlyingNetworkTask {

    /* renamed from: a  reason: collision with root package name */
    private final C1845s2 f14549a;

    /* renamed from: b  reason: collision with root package name */
    private final C1709mc f14550b;

    /* renamed from: c  reason: collision with root package name */
    private final C1406a8 f14551c;

    /* renamed from: d  reason: collision with root package name */
    private final C1511ed f14552d;

    /* renamed from: e  reason: collision with root package name */
    private final Fc f14553e;

    /* renamed from: f  reason: collision with root package name */
    private final Pg f14554f;

    /* renamed from: g  reason: collision with root package name */
    private final FullUrlFormer<C1561gd> f14555g;

    /* renamed from: h  reason: collision with root package name */
    private final ConfigProvider<C1561gd> f14556h;
    private final RequestDataHolder i;
    private final ResponseDataHolder j;
    private final SendingDataTaskHelper k;
    private long l;
    private C1486dd m;

    public C1461cd(Context context, C1845s2 c1845s2, Fc fc, Pg pg, ConfigProvider<C1561gd> configProvider, RequestDataHolder requestDataHolder, ResponseDataHolder responseDataHolder, FullUrlFormer<C1561gd> fullUrlFormer, RequestBodyEncrypter requestBodyEncrypter) {
        this(c1845s2, fc, F0.g().w().a(), pg, new C1511ed(context), fullUrlFormer, requestDataHolder, responseDataHolder, configProvider, new SendingDataTaskHelper(requestBodyEncrypter, new Ql(), requestDataHolder, responseDataHolder, new DefaultNetworkResponseHandler()));
    }

    private boolean a() {
        C1486dd a2 = this.f14552d.a(this.f14550b.f15146d);
        this.m = a2;
        C1787pf c1787pf = a2.f14593c;
        if (c1787pf.f15376b.length == 0 && c1787pf.f15375a.length == 0) {
            return false;
        }
        return this.k.prepareAndSetPostData(MessageNano.toByteArray(c1787pf));
    }

    private void b() {
        long f2 = this.f14551c.f() + 1;
        this.l = f2;
        this.f14554f.a(f2);
    }

    @Override // com.yandex.metrica.networktasks.api.UnderlyingNetworkTask
    public String description() {
        return "LocationTask";
    }

    @Override // com.yandex.metrica.networktasks.api.UnderlyingNetworkTask
    public FullUrlFormer<?> getFullUrlFormer() {
        return this.f14555g;
    }

    @Override // com.yandex.metrica.networktasks.api.UnderlyingNetworkTask
    public RequestDataHolder getRequestDataHolder() {
        return this.i;
    }

    @Override // com.yandex.metrica.networktasks.api.UnderlyingNetworkTask
    public ResponseDataHolder getResponseDataHolder() {
        return this.j;
    }

    @Override // com.yandex.metrica.networktasks.api.UnderlyingNetworkTask
    public RetryPolicyConfig getRetryPolicyConfig() {
        return ((C1561gd) this.f14556h.getConfig()).q();
    }

    @Override // com.yandex.metrica.networktasks.api.UnderlyingNetworkTask
    public SSLSocketFactory getSslSocketFactory() {
        F0.g().t().getClass();
        return null;
    }

    @Override // com.yandex.metrica.networktasks.api.UnderlyingNetworkTask
    public boolean onCreateTask() {
        C1561gd c1561gd = (C1561gd) this.f14556h.getConfig();
        if (this.f14549a.d() || TextUtils.isEmpty(c1561gd.g()) || TextUtils.isEmpty(c1561gd.w()) || A2.b(this.f14555g.getAllHosts())) {
            return false;
        }
        return a();
    }

    @Override // com.yandex.metrica.networktasks.api.UnderlyingNetworkTask
    public void onPerformRequest() {
        this.k.onPerformRequest();
    }

    @Override // com.yandex.metrica.networktasks.api.UnderlyingNetworkTask
    public void onPostRequestComplete(boolean z) {
        if (z || A2.b(this.j.getResponseCode())) {
            this.f14552d.a(this.m);
        }
        this.f14551c.c(this.l);
    }

    @Override // com.yandex.metrica.networktasks.api.UnderlyingNetworkTask
    public boolean onRequestComplete() {
        return this.k.isResponseValid();
    }

    @Override // com.yandex.metrica.networktasks.api.UnderlyingNetworkTask
    public void onRequestError(Throwable th) {
        this.f14551c.c(this.l);
    }

    @Override // com.yandex.metrica.networktasks.api.UnderlyingNetworkTask
    public void onShouldNotExecute() {
    }

    @Override // com.yandex.metrica.networktasks.api.UnderlyingNetworkTask
    public void onSuccessfulTaskFinished() {
        this.f14553e.a();
    }

    @Override // com.yandex.metrica.networktasks.api.UnderlyingNetworkTask
    public void onTaskAdded() {
    }

    @Override // com.yandex.metrica.networktasks.api.UnderlyingNetworkTask
    public void onTaskFinished() {
    }

    @Override // com.yandex.metrica.networktasks.api.UnderlyingNetworkTask
    public void onTaskRemoved() {
    }

    @Override // com.yandex.metrica.networktasks.api.UnderlyingNetworkTask
    public void onUnsuccessfulTaskFinished() {
    }

    C1461cd(C1845s2 c1845s2, Fc fc, C1406a8 c1406a8, Pg pg, C1511ed c1511ed, FullUrlFormer<C1561gd> fullUrlFormer, RequestDataHolder requestDataHolder, ResponseDataHolder responseDataHolder, ConfigProvider<C1561gd> configProvider, SendingDataTaskHelper sendingDataTaskHelper) {
        this.k = sendingDataTaskHelper;
        this.f14549a = c1845s2;
        this.f14553e = fc;
        this.f14556h = configProvider;
        C1561gd c1561gd = (C1561gd) configProvider.getConfig();
        this.f14550b = c1561gd.z();
        this.f14551c = c1406a8;
        this.f14552d = c1511ed;
        this.f14554f = pg;
        this.i = requestDataHolder;
        this.j = responseDataHolder;
        this.f14555g = fullUrlFormer;
        b();
        fullUrlFormer.setHosts(c1561gd.A());
    }
}
