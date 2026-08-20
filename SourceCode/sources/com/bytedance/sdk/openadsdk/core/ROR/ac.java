package com.bytedance.sdk.openadsdk.core.ROR;

import com.bytedance.sdk.openadsdk.core.ROR.ac.Qhi;
import com.bytedance.sdk.openadsdk.core.ROR.cJ.ac;
import com.bytedance.sdk.openadsdk.core.model.tP;
import io.bidmachine.utils.IabUtils;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: VastResource.java */
/* loaded from: classes2.dex */
public class ac {
    protected Qhi.cJ CJ;
    protected int Qhi;
    protected List<com.bytedance.sdk.openadsdk.core.ROR.cJ.ac> ROR;
    protected String Sf;
    protected List<com.bytedance.sdk.openadsdk.core.ROR.cJ.ac> Tgh;
    private String WAv;
    protected Qhi.EnumC0217Qhi ac;
    protected int cJ;
    protected String fl;
    private tP zc;
    private final AtomicBoolean Gm = new AtomicBoolean(false);
    protected String hm = "endcard_click";

    public ac(int i, int i2, Qhi.EnumC0217Qhi enumC0217Qhi, Qhi.cJ cJVar, String str, List<com.bytedance.sdk.openadsdk.core.ROR.cJ.ac> list, List<com.bytedance.sdk.openadsdk.core.ROR.cJ.ac> list2, String str2) {
        this.Tgh = new ArrayList();
        this.ROR = new ArrayList();
        this.Qhi = i;
        this.cJ = i2;
        this.ac = enumC0217Qhi;
        this.CJ = cJVar;
        this.fl = str;
        this.Tgh = list;
        this.ROR = list2;
        this.Sf = str2;
    }

    public int cJ() {
        return this.Qhi;
    }

    public int ac() {
        return this.cJ;
    }

    public void Qhi(long j) {
        com.bytedance.sdk.openadsdk.core.ROR.cJ.ac.Qhi(this.Tgh, null, j, this.WAv, new ac.cJ(this.hm, this.zc));
    }

    public void cJ(long j) {
        if (this.Gm.compareAndSet(false, true)) {
            com.bytedance.sdk.openadsdk.core.ROR.cJ.ac.cJ(this.ROR, null, j, this.WAv);
        }
    }

    public static float Qhi(int i, int i2, int i3, int i4, Qhi.cJ cJVar, Qhi.EnumC0217Qhi enumC0217Qhi) {
        if (i2 == 0 || i4 == 0) {
            return 0.0f;
        }
        float f2 = i;
        float f3 = i3;
        return Qhi(cJVar, enumC0217Qhi) / ((Math.abs((f2 / i2) - (f3 / i4)) + Math.abs((f2 - f3) / f2)) + 1.0f);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: VastResource.java */
    /* renamed from: com.bytedance.sdk.openadsdk.core.ROR.ac$1  reason: invalid class name */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] Qhi;

        static {
            int[] iArr = new int[Qhi.cJ.values().length];
            Qhi = iArr;
            try {
                iArr[Qhi.cJ.STATIC_RESOURCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                Qhi[Qhi.cJ.HTML_RESOURCE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                Qhi[Qhi.cJ.IFRAME_RESOURCE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    private static float Qhi(Qhi.cJ cJVar, Qhi.EnumC0217Qhi enumC0217Qhi) {
        int i = AnonymousClass1.Qhi[cJVar.ordinal()];
        if (i != 1) {
            if (i != 2) {
                return i != 3 ? 0.0f : 1.0f;
            }
            return 1.2f;
        } else if (Qhi.EnumC0217Qhi.JAVASCRIPT.equals(enumC0217Qhi)) {
            return 1.0f;
        } else {
            return Qhi.EnumC0217Qhi.IMAGE.equals(enumC0217Qhi) ? 0.8f : 0.0f;
        }
    }

    public String CJ() {
        int i = AnonymousClass1.Qhi[this.CJ.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    return null;
                }
                return "<iframe frameborder=\"0\" scrolling=\"no\" marginheight=\"0\" marginwidth=\"0\" style=\"border: 0px; margin: 0px;\" width=\"" + this.Qhi + "\" height=\"" + this.cJ + "\" src=\"" + this.fl + "\"></iframe>";
            }
            return this.fl;
        } else if (this.ac == Qhi.EnumC0217Qhi.IMAGE) {
            return "<html><head></head><body style=\"margin:0;padding:0\"><img src=\"" + this.fl + "\" width=\"100%\" style=\"max-width:100%;max-height:100%;\" /></body></html>";
        } else {
            if (this.ac == Qhi.EnumC0217Qhi.JAVASCRIPT) {
                return "<script src=\"" + this.fl + "\"></script>";
            }
            return null;
        }
    }

    public String fl() {
        if (this.CJ == Qhi.cJ.STATIC_RESOURCE && this.ac == Qhi.EnumC0217Qhi.IMAGE) {
            return this.fl;
        }
        return null;
    }

    public String Tgh() {
        return this.fl;
    }

    public void Qhi(String str) {
        this.WAv = str;
    }

    public static ac cJ(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        int optInt = jSONObject.optInt(IabUtils.KEY_WIDTH);
        int optInt2 = jSONObject.optInt(IabUtils.KEY_HEIGHT);
        String optString = jSONObject.optString("creativeType", Qhi.EnumC0217Qhi.NONE.toString());
        String optString2 = jSONObject.optString("resourceType", Qhi.cJ.HTML_RESOURCE.toString());
        String optString3 = jSONObject.optString("contentUrl");
        String optString4 = jSONObject.optString("clickThroughUri");
        JSONArray optJSONArray = jSONObject.optJSONArray("clickTrackers");
        JSONArray optJSONArray2 = jSONObject.optJSONArray("creativeViewTrackers");
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < optJSONArray.length(); i++) {
            arrayList.add(new ac.Qhi(optJSONArray.optString(i)).Qhi());
        }
        ArrayList arrayList2 = new ArrayList();
        for (int i2 = 0; i2 < optJSONArray2.length(); i2++) {
            arrayList2.add(new ac.Qhi(optJSONArray2.optString(i2)).Qhi());
        }
        return new ac(optInt, optInt2, Qhi.EnumC0217Qhi.valueOf(optString), Qhi.cJ.valueOf(optString2), optString3, arrayList, arrayList2, optString4);
    }

    public JSONObject Qhi() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(IabUtils.KEY_WIDTH, this.Qhi);
        jSONObject.put(IabUtils.KEY_HEIGHT, this.cJ);
        jSONObject.put("creativeType", this.ac.toString());
        jSONObject.put("resourceType", this.CJ.toString());
        jSONObject.put("contentUrl", this.fl);
        jSONObject.put("clickThroughUri", this.Sf);
        jSONObject.put("clickTrackers", com.bytedance.sdk.openadsdk.core.ROR.cJ.ac.Qhi(this.Tgh));
        jSONObject.put("creativeViewTrackers", com.bytedance.sdk.openadsdk.core.ROR.cJ.ac.Qhi(this.ROR));
        return jSONObject;
    }

    public void Qhi(tP tPVar) {
        this.zc = tPVar;
    }
}
