package com.iab.omid.library.appodeal.adsession.media;

import com.iab.omid.library.appodeal.d.c;
import com.iab.omid.library.appodeal.d.e;
import io.bidmachine.utils.IabUtils;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public final class VastProperties {

    /* renamed from: a  reason: collision with root package name */
    private final boolean f10156a;

    /* renamed from: b  reason: collision with root package name */
    private final Float f10157b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f10158c;

    /* renamed from: d  reason: collision with root package name */
    private final Position f10159d;

    private VastProperties(boolean z, Float f2, boolean z2, Position position) {
        this.f10156a = z;
        this.f10157b = f2;
        this.f10158c = z2;
        this.f10159d = position;
    }

    public static VastProperties createVastPropertiesForNonSkippableMedia(boolean z, Position position) {
        e.a(position, "Position is null");
        return new VastProperties(false, null, z, position);
    }

    public static VastProperties createVastPropertiesForSkippableMedia(float f2, boolean z, Position position) {
        e.a(position, "Position is null");
        return new VastProperties(true, Float.valueOf(f2), z, position);
    }

    public JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("skippable", this.f10156a);
            if (this.f10156a) {
                jSONObject.put(IabUtils.KEY_SKIP_OFFSET, this.f10157b);
            }
            jSONObject.put("autoPlay", this.f10158c);
            jSONObject.put("position", this.f10159d);
        } catch (JSONException e2) {
            c.a("VastProperties: JSON error", e2);
        }
        return jSONObject;
    }

    public Position getPosition() {
        return this.f10159d;
    }

    public Float getSkipOffset() {
        return this.f10157b;
    }

    public boolean isAutoPlay() {
        return this.f10158c;
    }

    public boolean isSkippable() {
        return this.f10156a;
    }
}
