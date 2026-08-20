package com.ironsource.mediationsdk.impressionData;

import com.google.firebase.messaging.Constants;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import java.text.DecimalFormat;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class ImpressionData {
    private String A;
    private JSONObject n;
    private String o;
    private String p;
    private String q;
    private String r;
    private String s;
    private String t;
    private String u;
    private String v;
    private String w;
    private Double x;
    private String y;
    private Double z;

    /* renamed from: a  reason: collision with root package name */
    private final String f11149a = IronSourceConstants.EVENTS_AUCTION_ID;

    /* renamed from: b  reason: collision with root package name */
    private final String f11150b = "adUnit";

    /* renamed from: c  reason: collision with root package name */
    private final String f11151c = "country";

    /* renamed from: d  reason: collision with root package name */
    private final String f11152d = "ab";

    /* renamed from: e  reason: collision with root package name */
    private final String f11153e = "segmentName";

    /* renamed from: f  reason: collision with root package name */
    private final String f11154f = IronSourceConstants.EVENTS_PLACEMENT_NAME;

    /* renamed from: g  reason: collision with root package name */
    private final String f11155g = "adNetwork";

    /* renamed from: h  reason: collision with root package name */
    private final String f11156h = "instanceName";
    private final String i = Constants.FirelogAnalytics.PARAM_INSTANCE_ID;
    private final String j = "revenue";
    private final String k = "precision";
    private final String l = "lifetimeRevenue";
    private final String m = "encryptedCPM";
    private DecimalFormat B = new DecimalFormat("#.#####");

    public ImpressionData(JSONObject jSONObject) {
        this.o = null;
        this.p = null;
        this.q = null;
        this.r = null;
        this.s = null;
        this.t = null;
        this.u = null;
        this.v = null;
        this.w = null;
        this.x = null;
        this.y = null;
        this.z = null;
        this.A = null;
        if (jSONObject != null) {
            try {
                this.n = jSONObject;
                this.o = jSONObject.optString(IronSourceConstants.EVENTS_AUCTION_ID, null);
                this.p = jSONObject.optString("adUnit", null);
                this.q = jSONObject.optString("country", null);
                this.r = jSONObject.optString("ab", null);
                this.s = jSONObject.optString("segmentName", null);
                this.t = jSONObject.optString(IronSourceConstants.EVENTS_PLACEMENT_NAME, null);
                this.u = jSONObject.optString("adNetwork", null);
                this.v = jSONObject.optString("instanceName", null);
                this.w = jSONObject.optString(Constants.FirelogAnalytics.PARAM_INSTANCE_ID, null);
                this.y = jSONObject.optString("precision", null);
                this.A = jSONObject.optString("encryptedCPM", null);
                double optDouble = jSONObject.optDouble("lifetimeRevenue");
                this.z = Double.isNaN(optDouble) ? null : Double.valueOf(optDouble);
                double optDouble2 = jSONObject.optDouble("revenue");
                this.x = Double.isNaN(optDouble2) ? null : Double.valueOf(optDouble2);
            } catch (Exception e2) {
                IronLog.INTERNAL.error("error parsing impression " + e2.getMessage());
            }
        }
    }

    public String getAb() {
        return this.r;
    }

    public String getAdNetwork() {
        return this.u;
    }

    public String getAdUnit() {
        return this.p;
    }

    public JSONObject getAllData() {
        return this.n;
    }

    public String getAuctionId() {
        return this.o;
    }

    public String getCountry() {
        return this.q;
    }

    public String getEncryptedCPM() {
        return this.A;
    }

    public String getInstanceId() {
        return this.w;
    }

    public String getInstanceName() {
        return this.v;
    }

    public Double getLifetimeRevenue() {
        return this.z;
    }

    public String getPlacement() {
        return this.t;
    }

    public String getPrecision() {
        return this.y;
    }

    public Double getRevenue() {
        return this.x;
    }

    public String getSegmentName() {
        return this.s;
    }

    public void replaceMacroForPlacementWithValue(String str, String str2) {
        String str3 = this.t;
        if (str3 != null) {
            String replace = str3.replace(str, str2);
            this.t = replace;
            JSONObject jSONObject = this.n;
            if (jSONObject != null) {
                try {
                    jSONObject.put(IronSourceConstants.EVENTS_PLACEMENT_NAME, replace);
                } catch (JSONException e2) {
                    e2.printStackTrace();
                }
            }
        }
    }

    public String toString() {
        StringBuilder append = new StringBuilder("ImpressionData{auctionId='").append(this.o).append("', adUnit='").append(this.p).append("', country='").append(this.q).append("', ab='").append(this.r).append("', segmentName='").append(this.s).append("', placement='").append(this.t).append("', adNetwork='").append(this.u).append("', instanceName='").append(this.v).append("', instanceId='").append(this.w).append("', revenue=");
        Double d2 = this.x;
        StringBuilder append2 = append.append(d2 == null ? null : this.B.format(d2)).append(", precision='").append(this.y).append("', lifetimeRevenue=");
        Double d3 = this.z;
        return append2.append(d3 != null ? this.B.format(d3) : null).append(", encryptedCPM='").append(this.A).append("'}").toString();
    }
}
