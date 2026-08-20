package com.yandex.metrica.network;

import android.text.TextUtils;
import androidx.browser.trusted.sharing.ShareTarget;
import com.yandex.metrica.network.impl.e;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes5.dex */
public class Request {

    /* renamed from: a  reason: collision with root package name */
    private final String f16204a;

    /* renamed from: b  reason: collision with root package name */
    private final String f16205b;

    /* renamed from: c  reason: collision with root package name */
    private final byte[] f16206c;

    /* renamed from: d  reason: collision with root package name */
    private final Map f16207d;

    /* loaded from: classes5.dex */
    public class Builder {

        /* renamed from: a  reason: collision with root package name */
        private final String f16208a;

        /* renamed from: b  reason: collision with root package name */
        private String f16209b;

        /* renamed from: c  reason: collision with root package name */
        private byte[] f16210c = new byte[0];

        /* renamed from: d  reason: collision with root package name */
        private final Map f16211d = new HashMap();

        public Builder(String str) {
            this.f16208a = str;
        }

        public Builder addHeader(String str, String str2) {
            this.f16211d.put(str, str2);
            return this;
        }

        public Request build() {
            return new Request(this.f16208a, this.f16209b, this.f16210c, this.f16211d);
        }

        public Builder post(byte[] bArr) {
            this.f16210c = bArr;
            return withMethod(ShareTarget.METHOD_POST);
        }

        public Builder withMethod(String str) {
            this.f16209b = str;
            return this;
        }
    }

    private Request(String str, String str2, byte[] bArr, Map map) {
        this.f16204a = str;
        this.f16205b = TextUtils.isEmpty(str2) ? ShareTarget.METHOD_GET : str2;
        this.f16206c = bArr;
        this.f16207d = e.a(map);
    }

    public byte[] getBody() {
        return this.f16206c;
    }

    public Map getHeaders() {
        return this.f16207d;
    }

    public String getMethod() {
        return this.f16205b;
    }

    public String getUrl() {
        return this.f16204a;
    }

    public String toString() {
        return "Request{url=" + this.f16204a + ", method='" + this.f16205b + "', bodyLength=" + this.f16206c.length + ", headers=" + this.f16207d + '}';
    }
}
