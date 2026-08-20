package com.bytedance.sdk.openadsdk.tool;

import com.bytedance.sdk.component.utils.ABk;
import com.bytedance.sdk.openadsdk.FilterWord;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: MaterialMetaTools.java */
/* loaded from: classes2.dex */
public class Qhi {
    public static String Qhi(List<FilterWord> list) {
        if (list != null) {
            JSONArray jSONArray = new JSONArray();
            for (FilterWord filterWord : list) {
                JSONObject Qhi = Qhi(filterWord);
                if (Qhi != null) {
                    jSONArray.put(Qhi);
                }
            }
            return jSONArray.toString();
        }
        return null;
    }

    public static List<FilterWord> Qhi(String str) {
        ArrayList arrayList = new ArrayList();
        try {
            JSONArray jSONArray = new JSONArray(str);
            for (int i = 0; i < jSONArray.length(); i++) {
                FilterWord Qhi = Qhi(jSONArray.optJSONObject(i));
                if (Qhi != null && Qhi.isValid()) {
                    arrayList.add(Qhi);
                }
            }
        } catch (JSONException e2) {
            ABk.Qhi("MaterialMetaTools", e2.getMessage());
        }
        return arrayList;
    }

    private static FilterWord Qhi(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        try {
            FilterWord filterWord = new FilterWord();
            filterWord.setId(jSONObject.optString("id"));
            filterWord.setName(jSONObject.optString("name"));
            filterWord.setIsSelected(jSONObject.optBoolean("is_selected"));
            JSONArray optJSONArray = jSONObject.optJSONArray("options");
            if (optJSONArray != null && optJSONArray.length() > 0) {
                for (int i = 0; i < optJSONArray.length(); i++) {
                    FilterWord Qhi = Qhi(optJSONArray.optJSONObject(i));
                    if (Qhi != null && Qhi.isValid()) {
                        filterWord.addOption(Qhi);
                    }
                }
            }
            return filterWord;
        } catch (Throwable unused) {
            return null;
        }
    }

    private static JSONObject Qhi(FilterWord filterWord) {
        if (filterWord == null) {
            return null;
        }
        try {
            if (filterWord.isValid()) {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("id", filterWord.getId());
                jSONObject.put("name", filterWord.getName());
                jSONObject.put("is_selected", filterWord.getIsSelected());
                if (filterWord.hasSecondOptions()) {
                    JSONArray jSONArray = new JSONArray();
                    for (FilterWord filterWord2 : filterWord.getOptions()) {
                        jSONArray.put(Qhi(filterWord2));
                    }
                    if (jSONArray.length() > 0) {
                        jSONObject.put("options", jSONArray);
                    }
                }
                return jSONObject;
            }
        } catch (Throwable unused) {
        }
        return null;
    }
}
