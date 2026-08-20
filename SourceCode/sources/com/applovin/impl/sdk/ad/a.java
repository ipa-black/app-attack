package com.applovin.impl.sdk.ad;

import android.net.Uri;
import com.applovin.impl.adview.i;
import com.applovin.impl.sdk.n;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.onesignal.OSInAppMessageContentKt;
import io.bidmachine.utils.IabUtils;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes.dex */
public final class a extends e {

    /* renamed from: a  reason: collision with root package name */
    private final String f5490a;

    /* renamed from: b  reason: collision with root package name */
    private final String f5491b;

    /* renamed from: c  reason: collision with root package name */
    private final String f5492c;

    /* renamed from: d  reason: collision with root package name */
    private final com.applovin.impl.sdk.a.c f5493d;

    public a(JSONObject jSONObject, JSONObject jSONObject2, b bVar, n nVar) {
        super(jSONObject, jSONObject2, bVar, nVar);
        this.f5490a = b();
        this.f5491b = i();
        this.f5492c = aM();
        this.f5493d = new com.applovin.impl.sdk.a.c(this);
    }

    private String aM() {
        return getStringFromAdObject("stream_url", "");
    }

    @Override // com.applovin.impl.sdk.ad.e
    public void a() {
        synchronized (this.adObjectLock) {
            JsonUtils.putString(this.adObject, OSInAppMessageContentKt.HTML, this.f5490a);
            JsonUtils.putString(this.adObject, "stream_url", this.f5492c);
        }
    }

    public void a(Uri uri) {
        synchronized (this.adObjectLock) {
            JsonUtils.putString(this.adObject, "video", uri.toString());
        }
    }

    public void a(String str) {
        synchronized (this.adObjectLock) {
            JsonUtils.putString(this.adObject, OSInAppMessageContentKt.HTML, str);
        }
    }

    public String b() {
        String string;
        synchronized (this.adObjectLock) {
            string = JsonUtils.getString(this.adObject, OSInAppMessageContentKt.HTML, "");
        }
        return string;
    }

    @Override // com.applovin.impl.sdk.ad.e
    /* renamed from: c */
    public com.applovin.impl.sdk.a.c o() {
        return this.f5493d;
    }

    @Override // com.applovin.impl.sdk.ad.e
    public String d() {
        return this.f5491b;
    }

    public String e() {
        return this.f5492c;
    }

    @Override // com.applovin.impl.sdk.ad.e
    public boolean f() {
        return this.adObject.has("stream_url");
    }

    public void g() {
        synchronized (this.adObjectLock) {
            this.adObject.remove("stream_url");
        }
    }

    @Override // com.applovin.impl.sdk.ad.AppLovinAdImpl
    public JSONObject getOriginalFullResponse() {
        JSONObject deepCopy;
        synchronized (this.fullResponseLock) {
            deepCopy = JsonUtils.deepCopy(this.fullResponse);
        }
        JSONArray jSONArray = JsonUtils.getJSONArray(deepCopy, "ads", new JSONArray());
        if (jSONArray.length() > 0) {
            JSONObject jSONObject = JsonUtils.getJSONObject(jSONArray, 0, new JSONObject());
            JsonUtils.putString(jSONObject, OSInAppMessageContentKt.HTML, this.f5490a);
            JsonUtils.putString(jSONObject, "video", this.f5491b);
            JsonUtils.putString(jSONObject, "stream_url", this.f5492c);
        }
        return deepCopy;
    }

    @Override // com.applovin.impl.sdk.ad.e
    public Uri h() {
        String aM = aM();
        if (StringUtils.isValidString(aM)) {
            return Uri.parse(aM);
        }
        String i = i();
        if (StringUtils.isValidString(i)) {
            return Uri.parse(i);
        }
        return null;
    }

    @Override // com.applovin.impl.sdk.ad.AppLovinAdImpl
    public boolean hasVideoUrl() {
        return h() != null;
    }

    public String i() {
        return getStringFromAdObject("video", "");
    }

    @Override // com.applovin.impl.sdk.ad.e, com.applovin.impl.sdk.a.a
    public boolean isOpenMeasurementEnabled() {
        return getBooleanFromAdObject(IabUtils.KEY_OM_SDK_ENABLED, false);
    }

    @Override // com.applovin.impl.sdk.ad.e
    public Uri j() {
        String stringFromAdObject = getStringFromAdObject("click_url", "");
        if (StringUtils.isValidString(stringFromAdObject)) {
            return Uri.parse(stringFromAdObject);
        }
        return null;
    }

    @Override // com.applovin.impl.sdk.ad.e
    public Uri k() {
        String stringFromAdObject = getStringFromAdObject("video_click_url", "");
        return StringUtils.isValidString(stringFromAdObject) ? Uri.parse(stringFromAdObject) : j();
    }

    public float l() {
        return getFloatFromAdObject("mraid_close_delay_graphic", 0.0f);
    }

    public boolean m() {
        if (this.adObject.has("close_button_expandable_hidden")) {
            return getBooleanFromAdObject("close_button_expandable_hidden", false);
        }
        return true;
    }

    public i.a n() {
        return a(getIntFromAdObject("expandable_style", i.a.INVISIBLE.a()));
    }
}
