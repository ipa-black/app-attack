package com.yandex.metrica.network;

import com.yandex.metrica.network.impl.c;
import com.yandex.metrica.network.impl.d;
import javax.net.ssl.SSLSocketFactory;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public class NetworkClient {

    /* renamed from: a  reason: collision with root package name */
    private final Integer f16192a;

    /* renamed from: b  reason: collision with root package name */
    private final Integer f16193b;

    /* renamed from: c  reason: collision with root package name */
    private final SSLSocketFactory f16194c;

    /* renamed from: d  reason: collision with root package name */
    private final Boolean f16195d;

    /* renamed from: e  reason: collision with root package name */
    private final Boolean f16196e;

    /* renamed from: f  reason: collision with root package name */
    private final int f16197f;

    /* loaded from: classes5.dex */
    public class Builder {

        /* renamed from: a  reason: collision with root package name */
        private Integer f16198a;

        /* renamed from: b  reason: collision with root package name */
        private Integer f16199b;

        /* renamed from: c  reason: collision with root package name */
        private SSLSocketFactory f16200c;

        /* renamed from: d  reason: collision with root package name */
        private Boolean f16201d;

        /* renamed from: e  reason: collision with root package name */
        private Boolean f16202e;

        /* renamed from: f  reason: collision with root package name */
        private Integer f16203f;

        public NetworkClient build() {
            return new NetworkClient(this.f16198a, this.f16199b, this.f16200c, this.f16201d, this.f16202e, this.f16203f);
        }

        public Builder withConnectTimeout(int i) {
            this.f16198a = Integer.valueOf(i);
            return this;
        }

        public Builder withInstanceFollowRedirects(boolean z) {
            this.f16202e = Boolean.valueOf(z);
            return this;
        }

        public Builder withMaxResponseSize(int i) {
            this.f16203f = Integer.valueOf(i);
            return this;
        }

        public Builder withReadTimeout(int i) {
            this.f16199b = Integer.valueOf(i);
            return this;
        }

        public Builder withSslSocketFactory(SSLSocketFactory sSLSocketFactory) {
            this.f16200c = sSLSocketFactory;
            return this;
        }

        public Builder withUseCaches(boolean z) {
            this.f16201d = Boolean.valueOf(z);
            return this;
        }
    }

    private NetworkClient(Integer num, Integer num2, SSLSocketFactory sSLSocketFactory, Boolean bool, Boolean bool2, Integer num3) {
        this.f16192a = num;
        this.f16193b = num2;
        this.f16194c = sSLSocketFactory;
        this.f16195d = bool;
        this.f16196e = bool2;
        this.f16197f = num3 == null ? Integer.MAX_VALUE : num3.intValue();
    }

    public Integer getConnectTimeout() {
        return this.f16192a;
    }

    public Boolean getInstanceFollowRedirects() {
        return this.f16196e;
    }

    public int getMaxResponseSize() {
        return this.f16197f;
    }

    public Integer getReadTimeout() {
        return this.f16193b;
    }

    public SSLSocketFactory getSslSocketFactory() {
        return this.f16194c;
    }

    public Boolean getUseCaches() {
        return this.f16195d;
    }

    public Call newCall(Request request) {
        Intrinsics.checkNotNullParameter(this, "client");
        Intrinsics.checkNotNullParameter(request, "request");
        return new c(this, request, new d());
    }

    public String toString() {
        return "NetworkClient{connectTimeout=" + this.f16192a + ", readTimeout=" + this.f16193b + ", sslSocketFactory=" + this.f16194c + ", useCaches=" + this.f16195d + ", instanceFollowRedirects=" + this.f16196e + ", maxResponseSize=" + this.f16197f + '}';
    }
}
