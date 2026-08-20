package com.yandex.metrica.impl.ob;

import com.yandex.metrica.coreutils.services.SystemTimeProvider;
import com.yandex.metrica.coreutils.services.TimeProvider;
import com.yandex.metrica.networktasks.api.ConfigProvider;
import com.yandex.metrica.networktasks.api.DefaultResponseParser;
import com.yandex.metrica.networktasks.api.FullUrlFormer;
import com.yandex.metrica.networktasks.api.NetworkResponseHandler;
import com.yandex.metrica.networktasks.api.RequestDataHolder;
import com.yandex.metrica.networktasks.api.ResponseDataHolder;
import com.yandex.metrica.networktasks.api.RetryPolicyConfig;
import com.yandex.metrica.networktasks.api.UnderlyingNetworkTask;
import javax.net.ssl.SSLSocketFactory;
/* loaded from: classes5.dex */
public class B4 implements UnderlyingNetworkTask {

    /* renamed from: a  reason: collision with root package name */
    private final ConfigProvider<D4> f12664a;

    /* renamed from: b  reason: collision with root package name */
    private final C1448c0 f12665b;

    /* renamed from: c  reason: collision with root package name */
    private final E4 f12666c;

    /* renamed from: d  reason: collision with root package name */
    private final TimeProvider f12667d = new SystemTimeProvider();

    /* renamed from: e  reason: collision with root package name */
    private final Ql f12668e = new Ql();

    /* renamed from: f  reason: collision with root package name */
    private final String f12669f = B4.class.getName() + "@" + Integer.toHexString(hashCode());

    /* renamed from: g  reason: collision with root package name */
    private final C1431b8 f12670g;

    /* renamed from: h  reason: collision with root package name */
    private final FullUrlFormer<D4> f12671h;
    private final RequestDataHolder i;
    private final ResponseDataHolder j;
    private final NetworkResponseHandler<DefaultResponseParser.Response> k;

    public B4(ConfigProvider<D4> configProvider, C1448c0 c1448c0, E4 e4, C1431b8 c1431b8, NetworkResponseHandler<DefaultResponseParser.Response> networkResponseHandler, RequestDataHolder requestDataHolder, ResponseDataHolder responseDataHolder, FullUrlFormer<D4> fullUrlFormer) {
        this.f12664a = configProvider;
        this.f12665b = c1448c0;
        this.f12666c = e4;
        this.f12670g = c1431b8;
        this.i = requestDataHolder;
        this.j = responseDataHolder;
        this.k = networkResponseHandler;
        this.f12671h = fullUrlFormer;
    }

    @Override // com.yandex.metrica.networktasks.api.UnderlyingNetworkTask
    public String description() {
        return this.f12669f;
    }

    @Override // com.yandex.metrica.networktasks.api.UnderlyingNetworkTask
    public FullUrlFormer<?> getFullUrlFormer() {
        return this.f12671h;
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
        return null;
    }

    @Override // com.yandex.metrica.networktasks.api.UnderlyingNetworkTask
    public SSLSocketFactory getSslSocketFactory() {
        F0.g().t().getClass();
        return null;
    }

    @Override // com.yandex.metrica.networktasks.api.UnderlyingNetworkTask
    public boolean onCreateTask() {
        byte[] bArr;
        D4 d4 = (D4) this.f12664a.getConfig();
        boolean x = d4.x();
        boolean b2 = A2.b(d4.C());
        if (!x || b2) {
            return false;
        }
        this.f12671h.setHosts(d4.C());
        byte[] a2 = new C4(this.f12665b, d4, this.f12666c, new O3(this.f12670g), new C1471cn(1024, "diagnostic event name"), new C1471cn(204800, "diagnostic event value"), new SystemTimeProvider()).a();
        try {
            bArr = this.f12668e.compress(a2);
        } catch (Throwable unused) {
            bArr = null;
        }
        if (!A2.a(bArr)) {
            this.i.setHeader("Content-Encoding", "gzip");
            a2 = bArr;
        }
        this.i.setPostData(a2);
        return true;
    }

    @Override // com.yandex.metrica.networktasks.api.UnderlyingNetworkTask
    public void onPerformRequest() {
        this.i.applySendTime(this.f12667d.currentTimeMillis());
    }

    @Override // com.yandex.metrica.networktasks.api.UnderlyingNetworkTask
    public void onPostRequestComplete(boolean z) {
    }

    @Override // com.yandex.metrica.networktasks.api.UnderlyingNetworkTask
    public boolean onRequestComplete() {
        DefaultResponseParser.Response response = (DefaultResponseParser.Response) this.k.handle(this.j);
        return response != null && "accepted".equals(response.mStatus);
    }

    @Override // com.yandex.metrica.networktasks.api.UnderlyingNetworkTask
    public void onRequestError(Throwable th) {
    }

    @Override // com.yandex.metrica.networktasks.api.UnderlyingNetworkTask
    public void onShouldNotExecute() {
    }

    @Override // com.yandex.metrica.networktasks.api.UnderlyingNetworkTask
    public void onSuccessfulTaskFinished() {
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
}
