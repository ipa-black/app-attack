package com.appodeal.ads.segments;

import com.appodeal.ads.utils.Version;
import com.ironsource.mediationsdk.IronSourceSegment;
import com.onesignal.outcomes.OSOutcomeConstants;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public final class i {

    /* renamed from: a  reason: collision with root package name */
    public final String f7516a;

    /* renamed from: b  reason: collision with root package name */
    public final b f7517b;

    /* renamed from: c  reason: collision with root package name */
    public Object f7518c;

    /* renamed from: d  reason: collision with root package name */
    public int f7519d;

    public i(JSONObject jSONObject) {
        String string = jSONObject.getString("name");
        this.f7516a = string;
        this.f7517b = b.a(jSONObject.getString("op"));
        this.f7519d = a(string);
        this.f7518c = a(jSONObject);
    }

    public static int a(String str) {
        str.getClass();
        str.hashCode();
        char c2 = 65535;
        switch (str.hashCode()) {
            case -1561358613:
                if (str.equals("bought_inapps")) {
                    c2 = 0;
                    break;
                }
                break;
            case -1542869117:
                if (str.equals(OSOutcomeConstants.DEVICE_TYPE)) {
                    c2 = 1;
                    break;
                }
                break;
            case -1249512767:
                if (str.equals("gender")) {
                    c2 = 2;
                    break;
                }
                break;
            case -901870406:
                if (str.equals("app_version")) {
                    c2 = 3;
                    break;
                }
                break;
            case -686246186:
                if (str.equals("session_time")) {
                    c2 = 4;
                    break;
                }
                break;
            case -376724013:
                if (str.equals("sdk_version")) {
                    c2 = 5;
                    break;
                }
                break;
            case 96511:
                if (str.equals(IronSourceSegment.AGE)) {
                    c2 = 6;
                    break;
                }
                break;
            case 96801:
                if (str.equals("app")) {
                    c2 = 7;
                    break;
                }
                break;
            case 185691686:
                if (str.equals("session_count")) {
                    c2 = '\b';
                    break;
                }
                break;
            case 672836989:
                if (str.equals("os_version")) {
                    c2 = '\t';
                    break;
                }
                break;
            case 731866107:
                if (str.equals("connection_type")) {
                    c2 = '\n';
                    break;
                }
                break;
            case 957831062:
                if (str.equals("country")) {
                    c2 = 11;
                    break;
                }
                break;
            case 1335099163:
                if (str.equals("inapp_amount")) {
                    c2 = '\f';
                    break;
                }
                break;
            case 1660689696:
                if (str.equals("part_of_audience")) {
                    c2 = '\r';
                    break;
                }
                break;
            case 1818604305:
                if (str.equals("average_session_length")) {
                    c2 = 14;
                    break;
                }
                break;
        }
        switch (c2) {
            case 0:
                return 7;
            case 1:
                return 2;
            case 2:
            case 7:
            case '\n':
            case 11:
                return 3;
            case 3:
            case 5:
            case '\t':
                return 1;
            case 4:
                return 8;
            case 6:
            case '\b':
            case '\r':
            case 14:
                return 4;
            case '\f':
                return 6;
            default:
                return 9;
        }
    }

    public final Object a(JSONObject jSONObject) {
        int i = 0;
        switch (com.appodeal.ads.m.a(this.f7519d)) {
            case 0:
                return new Version(jSONObject.getString("value"));
            case 1:
            case 7:
            case 8:
                return jSONObject.get("value");
            case 2:
                JSONArray optJSONArray = jSONObject.optJSONArray("value");
                String[] strArr = new String[optJSONArray.length()];
                while (i < optJSONArray.length()) {
                    strArr[i] = optJSONArray.getString(i);
                    i++;
                }
                return strArr;
            case 3:
                return Integer.valueOf(jSONObject.getInt("value"));
            case 4:
                JSONArray optJSONArray2 = jSONObject.optJSONArray("value");
                Integer[] numArr = new Integer[optJSONArray2.length()];
                while (i < optJSONArray2.length()) {
                    numArr[i] = Integer.valueOf(optJSONArray2.getString(i));
                    i++;
                }
                return numArr;
            case 5:
                return Float.valueOf(jSONObject.getString("value"));
            case 6:
                return Boolean.valueOf(jSONObject.getString("value"));
            default:
                return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0035 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0036  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean a(android.content.Context r8) {
        /*
            Method dump skipped, instructions count: 192
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appodeal.ads.segments.i.a(android.content.Context):boolean");
    }
}
