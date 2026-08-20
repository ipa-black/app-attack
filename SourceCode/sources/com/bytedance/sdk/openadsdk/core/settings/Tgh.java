package com.bytedance.sdk.openadsdk.core.settings;

import java.util.HashSet;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: ISettingsDataRepository.java */
/* loaded from: classes2.dex */
public interface Tgh {
    public static final cJ<JSONObject> Qhi = new cJ<JSONObject>() { // from class: com.bytedance.sdk.openadsdk.core.settings.Tgh.1
        @Override // com.bytedance.sdk.openadsdk.core.settings.Tgh.cJ
        /* renamed from: Qhi */
        public JSONObject cJ(String str) {
            try {
                return new JSONObject(str);
            } catch (Exception e2) {
                com.bytedance.sdk.component.utils.ABk.Qhi("ISettingsDataRepository", "", e2);
                return null;
            }
        }
    };
    public static final cJ<Set<String>> cJ = new cJ<Set<String>>() { // from class: com.bytedance.sdk.openadsdk.core.settings.Tgh.2
        @Override // com.bytedance.sdk.openadsdk.core.settings.Tgh.cJ
        /* renamed from: Qhi */
        public Set<String> cJ(String str) {
            HashSet hashSet = new HashSet();
            try {
                JSONArray jSONArray = new JSONArray(str);
                int length = jSONArray.length();
                for (int i = 0; i < length; i++) {
                    hashSet.add(jSONArray.getString(i));
                }
            } catch (Exception e2) {
                com.bytedance.sdk.component.utils.ABk.Qhi("ISettingsDataRepository", "", e2);
            }
            return hashSet;
        }
    };

    /* compiled from: ISettingsDataRepository.java */
    /* loaded from: classes2.dex */
    public interface Qhi {
        Qhi Qhi(String str);

        Qhi Qhi(String str, float f2);

        Qhi Qhi(String str, int i);

        Qhi Qhi(String str, long j);

        Qhi Qhi(String str, String str2);

        Qhi Qhi(String str, boolean z);

        void Qhi();
    }

    /* compiled from: ISettingsDataRepository.java */
    /* loaded from: classes2.dex */
    public interface cJ<T> {
        T cJ(String str);
    }

    void Qhi(JSONObject jSONObject);
}
