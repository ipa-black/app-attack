package com.yandex.metrica.impl.ob;

import com.google.common.net.HttpHeaders;
import com.yandex.metrica.networktasks.api.ConfigProvider;
import com.yandex.metrica.networktasks.api.FullUrlFormer;
import com.yandex.metrica.networktasks.api.NetworkResponseHandler;
import com.yandex.metrica.networktasks.api.RequestDataHolder;
import com.yandex.metrica.networktasks.api.ResponseDataHolder;
import com.yandex.metrica.networktasks.api.RetryPolicyConfig;
import com.yandex.metrica.networktasks.api.UnderlyingNetworkTask;
import javax.net.ssl.SSLSocketFactory;
/* renamed from: com.yandex.metrica.impl.ob.q2  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1798q2 implements UnderlyingNetworkTask {

    /* renamed from: a  reason: collision with root package name */
    private final C1837ri f15474a;

    /* renamed from: b  reason: collision with root package name */
    private Ui f15475b;

    /* renamed from: c  reason: collision with root package name */
    private EnumC1566gi f15476c;

    /* renamed from: d  reason: collision with root package name */
    private final RequestDataHolder f15477d;

    /* renamed from: e  reason: collision with root package name */
    private final ConfigProvider<Mg> f15478e;

    /* renamed from: f  reason: collision with root package name */
    private final ResponseDataHolder f15479f;

    /* renamed from: g  reason: collision with root package name */
    private final FullUrlFormer<Mg> f15480g;

    /* renamed from: h  reason: collision with root package name */
    private final NetworkResponseHandler<Ui> f15481h;

    public C1798q2(C1837ri c1837ri, FullUrlFormer<Mg> fullUrlFormer, RequestDataHolder requestDataHolder, ResponseDataHolder responseDataHolder, ConfigProvider<Mg> configProvider) {
        this(c1837ri, new C1774p2(), fullUrlFormer, requestDataHolder, responseDataHolder, configProvider);
    }

    @Override // com.yandex.metrica.networktasks.api.UnderlyingNetworkTask
    public String description() {
        return "Startup task for component: " + this.f15474a.a().toString();
    }

    @Override // com.yandex.metrica.networktasks.api.UnderlyingNetworkTask
    public FullUrlFormer<?> getFullUrlFormer() {
        return this.f15480g;
    }

    @Override // com.yandex.metrica.networktasks.api.UnderlyingNetworkTask
    public RequestDataHolder getRequestDataHolder() {
        return this.f15477d;
    }

    @Override // com.yandex.metrica.networktasks.api.UnderlyingNetworkTask
    public ResponseDataHolder getResponseDataHolder() {
        return this.f15479f;
    }

    @Override // com.yandex.metrica.networktasks.api.UnderlyingNetworkTask
    public RetryPolicyConfig getRetryPolicyConfig() {
        return ((Mg) this.f15478e.getConfig()).q();
    }

    @Override // com.yandex.metrica.networktasks.api.UnderlyingNetworkTask
    public SSLSocketFactory getSslSocketFactory() {
        F0.g().t().getClass();
        return null;
    }

    @Override // com.yandex.metrica.networktasks.api.UnderlyingNetworkTask
    public boolean onCreateTask() {
        this.f15477d.setHeader(HttpHeaders.ACCEPT_ENCODING, "encrypted");
        return this.f15474a.e();
    }

    @Override // com.yandex.metrica.networktasks.api.UnderlyingNetworkTask
    public void onPerformRequest() {
    }

    @Override // com.yandex.metrica.networktasks.api.UnderlyingNetworkTask
    public void onPostRequestComplete(boolean z) {
        if (z) {
            return;
        }
        this.f15476c = EnumC1566gi.PARSE;
    }

    @Override // com.yandex.metrica.networktasks.api.UnderlyingNetworkTask
    public boolean onRequestComplete() {
        Ui ui = (Ui) this.f15481h.handle(this.f15479f);
        this.f15475b = ui;
        return ui != null;
    }

    @Override // com.yandex.metrica.networktasks.api.UnderlyingNetworkTask
    public void onRequestError(Throwable th) {
        this.f15476c = EnumC1566gi.NETWORK;
    }

    @Override // com.yandex.metrica.networktasks.api.UnderlyingNetworkTask
    public void onShouldNotExecute() {
        this.f15476c = EnumC1566gi.NETWORK;
    }

    @Override // com.yandex.metrica.networktasks.api.UnderlyingNetworkTask
    public void onSuccessfulTaskFinished() {
        if (this.f15475b == null || this.f15479f.getResponseHeaders() == null) {
            return;
        }
        this.f15474a.a(this.f15475b, (Mg) this.f15478e.getConfig(), this.f15479f.getResponseHeaders());
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
        if (this.f15476c == null) {
            this.f15476c = EnumC1566gi.UNKNOWN;
        }
        this.f15474a.a(this.f15476c);
    }

    C1798q2(C1837ri c1837ri, C1774p2 c1774p2, FullUrlFormer<Mg> fullUrlFormer, RequestDataHolder requestDataHolder, ResponseDataHolder responseDataHolder, ConfigProvider<Mg> configProvider) {
        this.f15474a = c1837ri;
        this.f15481h = c1774p2;
        this.f15477d = requestDataHolder;
        this.f15479f = responseDataHolder;
        this.f15478e = configProvider;
        this.f15480g = fullUrlFormer;
        fullUrlFormer.setHosts(((Mg) configProvider.getConfig()).I());
    }
}
