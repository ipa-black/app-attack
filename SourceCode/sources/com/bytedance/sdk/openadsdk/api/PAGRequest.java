package com.bytedance.sdk.openadsdk.api;

import android.os.Bundle;
import java.util.Map;
/* loaded from: classes2.dex */
public class PAGRequest {
    private String Qhi;
    private Bundle ac = null;
    private Map<String, Object> cJ;

    public String getAdString() {
        return this.Qhi;
    }

    public void setAdString(String str) {
        this.Qhi = str;
    }

    public Map<String, Object> getExtraInfo() {
        return this.cJ;
    }

    public void setExtraInfo(Map<String, Object> map) {
        this.cJ = map;
    }

    public final void addNetworkExtrasBundle(Class<?> cls, Bundle bundle) {
        if (this.ac == null) {
            this.ac = new Bundle();
        }
        this.ac.putBundle(cls.getName(), bundle);
    }

    public Bundle getNetworkExtrasBundle() {
        return this.ac;
    }
}
