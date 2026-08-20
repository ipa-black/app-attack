package com.pgl.ssdk.ces.out;

import android.text.TextUtils;
import java.util.Map;
/* loaded from: classes3.dex */
public final class PglSSConfig {
    public static final int COLLECT_MODE_DEFAULT = 0;
    public static final int COLLECT_MODE_ML_MINIMIZE = 1;
    public static final String CUSTOMINFO_KEY_CHECKCLAZZ = "check_clz";
    public static final int OVREGION_TYPE_CN = 2;
    public static final int OVREGION_TYPE_SG = 0;
    public static final int OVREGION_TYPE_UNKNOWN = -1;
    public static final int OVREGION_TYPE_VA = 1;

    /* renamed from: a  reason: collision with root package name */
    private String f12209a;

    /* renamed from: b  reason: collision with root package name */
    private final int f12210b;

    /* renamed from: c  reason: collision with root package name */
    private final int f12211c;

    /* renamed from: d  reason: collision with root package name */
    private final int f12212d;

    /* renamed from: e  reason: collision with root package name */
    private Map<String, Object> f12213e;

    /* renamed from: f  reason: collision with root package name */
    private String f12214f;

    /* renamed from: g  reason: collision with root package name */
    private String f12215g;

    /* loaded from: classes3.dex */
    public static class Builder {

        /* renamed from: a  reason: collision with root package name */
        private String f12216a;

        /* renamed from: b  reason: collision with root package name */
        private int f12217b = -1;

        /* renamed from: c  reason: collision with root package name */
        private int f12218c = 0;

        /* renamed from: d  reason: collision with root package name */
        private int f12219d;

        public PglSSConfig build() {
            if (TextUtils.isEmpty(this.f12216a)) {
                return null;
            }
            int i = this.f12217b;
            if (i == 2 || i == 1 || i == 0) {
                int i2 = this.f12218c;
                if (i2 == 0 || i2 == 1) {
                    return new PglSSConfig(this.f12216a, this.f12217b, this.f12218c, this.f12219d);
                }
                return null;
            }
            return null;
        }

        public Builder setAdsdkVersionCode(int i) {
            this.f12219d = i;
            return this;
        }

        public Builder setAppId(String str) {
            this.f12216a = str;
            return this;
        }

        public Builder setCollectMode(int i) {
            this.f12218c = i;
            return this;
        }

        public Builder setOVRegionType(int i) {
            this.f12217b = i;
            return this;
        }
    }

    public static Builder builder() {
        return new Builder();
    }

    public int getAdSdkVersionCode() {
        return this.f12212d;
    }

    public String getAppId() {
        return this.f12209a;
    }

    public String getCnReportUrl() {
        return this.f12214f;
    }

    public String getCnTokenUrl() {
        return this.f12215g;
    }

    public int getCollectMode() {
        return this.f12211c;
    }

    public Map<String, Object> getCustomInfo() {
        return this.f12213e;
    }

    public int getOVRegionType() {
        return this.f12210b;
    }

    public void setCnReportUrl(String str) {
        this.f12214f = str;
    }

    public void setCnTokenUrl(String str) {
        this.f12215g = str;
    }

    public void setCustomInfo(Map<String, Object> map) {
        this.f12213e = map;
    }

    private PglSSConfig(String str, int i, int i2, int i3) {
        this.f12209a = str;
        this.f12210b = i;
        this.f12211c = i2;
        this.f12212d = i3;
    }
}
