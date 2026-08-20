package com.bytedance.sdk.openadsdk.core.ugen;

import android.text.TextUtils;
import com.amazon.aps.shared.APSAnalytics;
import com.bytedance.sdk.component.utils.ABk;
import com.bytedance.sdk.openadsdk.core.hm;
import com.bytedance.sdk.openadsdk.core.model.tP;
import com.bytedance.sdk.openadsdk.core.ugen.CJ.Tgh;
import com.bytedance.sdk.openadsdk.core.zc;
import com.google.android.gms.common.internal.ImagesContract;
import com.google.firebase.analytics.FirebaseAnalytics;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: UgenUtils.java */
/* loaded from: classes2.dex */
public class ac {
    private static String Qhi = "";

    public static JSONObject Qhi(tP tPVar, String str) {
        JSONObject mZ = tPVar.mZ();
        try {
            mZ.put("show_dislike", tPVar.rB());
            mZ.put("language", zc.Qhi());
            if ("open_ad".equals(str)) {
                JSONObject jSONObject = new JSONObject();
                String Tgh = hm.cJ().Tgh();
                int ROR = hm.cJ().ROR();
                jSONObject.put("app_name", Tgh);
                jSONObject.put("app_icon_id", "@".concat(String.valueOf(ROR)));
                mZ.put("open_app_info", jSONObject);
            }
            mZ.put("os", APSAnalytics.OS_NAME);
            JSONArray cJ = cJ(tPVar);
            if (cJ != null) {
                mZ.put("dpa_data", cJ);
            }
        } catch (Throwable th) {
            ABk.Qhi("UgenUtils", "parseUGenDataInfo exception", th.getMessage());
        }
        return mZ;
    }

    private static JSONArray cJ(tP tPVar) {
        try {
            tP.Qhi es = tPVar.es();
            if (es != null) {
                JSONObject jSONObject = new JSONObject(es.WAv());
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.putOpt("original_price", Double.valueOf(jSONObject.optDouble("original_price", 0.0d)));
                jSONObject2.putOpt("price_unit", jSONObject.optString("price_unit"));
                jSONObject2.putOpt(FirebaseAnalytics.Param.DISCOUNT, Double.valueOf(jSONObject.optDouble(FirebaseAnalytics.Param.DISCOUNT, 0.0d)));
                jSONObject2.putOpt("product_name", jSONObject.optString("dpa_product_name"));
                jSONObject2.putOpt("description", jSONObject.optString("dpa_description"));
                JSONArray optJSONArray = jSONObject.optJSONArray("dpa_images");
                if (optJSONArray != null && optJSONArray.length() > 0) {
                    jSONObject2.putOpt("image", optJSONArray.get(0));
                }
                jSONObject2.putOpt("brand_name", jSONObject.optString("dpa_brand_name"));
                jSONObject2.putOpt("sale_price_i18n", Integer.valueOf(jSONObject.optInt("sale_price_i18n")));
                jSONObject2.putOpt("real_price", Double.valueOf(jSONObject.optDouble("real_price", 0.0d)));
                jSONObject2.put("button_text", tPVar.ots());
                JSONArray jSONArray = new JSONArray();
                JSONArray optJSONArray2 = jSONObject.optJSONArray("dpa_related_products");
                if (optJSONArray2 != null) {
                    jSONArray.put(jSONObject2);
                    for (int i = 0; i < optJSONArray2.length(); i++) {
                        try {
                            JSONObject jSONObject3 = optJSONArray2.getJSONObject(i);
                            jSONObject3.put("button_text", tPVar.ots());
                            jSONArray.put(jSONObject3);
                        } catch (Throwable unused) {
                        }
                    }
                }
                return jSONArray;
            }
            return null;
        } catch (Throwable unused2) {
            return null;
        }
    }

    public static boolean Qhi(tP tPVar) {
        return tPVar != null && tPVar.CQU() == 7;
    }

    public static String Qhi() {
        return Qhi;
    }

    public static JSONObject Qhi(tP tPVar, Tgh tgh) {
        JSONObject jSONObject;
        tgh.Qhi();
        String str = "";
        Qhi = "";
        JSONObject jSONObject2 = null;
        try {
            tP.Qhi es = tPVar.es();
            if (tPVar.es() != null) {
                str = es.hpZ();
            }
            if (TextUtils.isEmpty(str) && !TextUtils.isEmpty(es.pA()) && !TextUtils.isEmpty(es.fl())) {
                str = com.bytedance.sdk.openadsdk.core.ugen.Qhi.cJ.Qhi().Qhi("ad", es.fl(), es.pA());
            }
            if (!TextUtils.isEmpty(str)) {
                try {
                    jSONObject = new JSONObject(str);
                    try {
                        try {
                            Qhi = "getTemplate success";
                            tgh.Qhi(ImagesContract.LOCAL);
                            return jSONObject;
                        } catch (JSONException unused) {
                            String concat = "parse json exception data is ".concat(String.valueOf(str));
                            Qhi = concat;
                            tgh.Qhi(2, concat, ImagesContract.LOCAL);
                            return null;
                        }
                    } catch (Throwable th) {
                        jSONObject2 = jSONObject;
                        th = th;
                        String str2 = "get template error " + th.getMessage();
                        Qhi = str2;
                        tgh.Qhi(2, str2, ImagesContract.LOCAL);
                        return jSONObject2;
                    }
                } catch (JSONException unused2) {
                    jSONObject = null;
                }
            } else {
                String str3 = "local data is null id is " + es.fl() + " md5 is " + es.pA();
                Qhi = str3;
                tgh.Qhi(3, str3, "net");
                return null;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }
}
