package com.bytedance.sdk.openadsdk.core;

import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.FilterWord;
import com.bytedance.sdk.openadsdk.core.MQ;
import java.util.List;
import org.json.JSONObject;
/* compiled from: NetApi.java */
/* loaded from: classes2.dex */
public interface tP<T> {

    /* compiled from: NetApi.java */
    /* loaded from: classes2.dex */
    public interface Qhi {
        void Qhi(int i, String str);

        void Qhi(com.bytedance.sdk.openadsdk.core.model.Qhi qhi, com.bytedance.sdk.openadsdk.core.model.cJ cJVar);
    }

    /* compiled from: NetApi.java */
    /* loaded from: classes2.dex */
    public interface cJ {
        void Qhi(int i, String str);

        void Qhi(MQ.cJ cJVar);
    }

    com.bytedance.sdk.component.adexpress.Qhi.ac.Qhi Qhi();

    com.bytedance.sdk.openadsdk.cJ.Tgh Qhi(JSONObject jSONObject);

    com.bytedance.sdk.openadsdk.cJ.Tgh Qhi(JSONObject jSONObject, String str, boolean z);

    void Qhi(AdSlot adSlot, com.bytedance.sdk.openadsdk.core.model.qMt qmt, int i, Qhi qhi);

    void Qhi(String str);

    void Qhi(String str, List<FilterWord> list, String str2, String str3, String str4);

    void Qhi(JSONObject jSONObject, cJ cJVar);

    void Qhi(JSONObject jSONObject, String str);
}
