package com.yandex.metrica;

import com.yandex.metrica.impl.ob.A2;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes3.dex */
public class PreloadInfo {

    /* renamed from: a  reason: collision with root package name */
    private String f12312a;

    /* renamed from: b  reason: collision with root package name */
    private Map<String, String> f12313b;

    /* loaded from: classes3.dex */
    public static class Builder {

        /* renamed from: a  reason: collision with root package name */
        private String f12314a;

        /* renamed from: b  reason: collision with root package name */
        private Map<String, String> f12315b;

        public PreloadInfo build() {
            return new PreloadInfo(this);
        }

        public Builder setAdditionalParams(String str, String str2) {
            if (str != null && str2 != null) {
                this.f12315b.put(str, str2);
            }
            return this;
        }

        private Builder(String str) {
            this.f12314a = str;
            this.f12315b = new HashMap();
        }
    }

    public static Builder newBuilder(String str) {
        return new Builder(str);
    }

    public Map<String, String> getAdditionalParams() {
        return this.f12313b;
    }

    public String getTrackingId() {
        return this.f12312a;
    }

    private PreloadInfo(Builder builder) {
        this.f12312a = builder.f12314a;
        this.f12313b = A2.d(builder.f12315b);
    }
}
