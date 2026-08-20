package com.iab.omid.library.applovin.adsession.media;

import com.iab.omid.library.applovin.utils.d;
import com.iab.omid.library.applovin.utils.g;
import io.bidmachine.utils.IabUtils;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public final class VastProperties {

    /* renamed from: a  reason: collision with root package name */
    private final boolean f10037a;

    /* renamed from: b  reason: collision with root package name */
    private final Float f10038b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f10039c;

    /* renamed from: d  reason: collision with root package name */
    private final Position f10040d;

    private VastProperties(boolean z, Float f2, boolean z2, Position position) {
        this.f10037a = z;
        this.f10038b = f2;
        this.f10039c = z2;
        this.f10040d = position;
    }

    public static VastProperties createVastPropertiesForNonSkippableMedia(boolean z, Position position) {
        g.a(position, "Position is null");
        return new VastProperties(false, null, z, position);
    }

    public static VastProperties createVastPropertiesForSkippableMedia(float f2, boolean z, Position position) {
        g.a(position, "Position is null");
        return new VastProperties(true, Float.valueOf(f2), z, position);
    }

    public JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("skippable", this.f10037a);
            if (this.f10037a) {
                jSONObject.put(IabUtils.KEY_SKIP_OFFSET, this.f10038b);
            }
            jSONObject.put("autoPlay", this.f10039c);
            jSONObject.put("position", this.f10040d);
        } catch (JSONException e2) {
            d.a("VastProperties: JSON error", e2);
        }
        return jSONObject;
    }

    public Position getPosition() {
        return this.f10040d;
    }

    public Float getSkipOffset() {
        return this.f10038b;
    }

    public boolean isAutoPlay() {
        return this.f10039c;
    }

    public boolean isSkippable() {
        return this.f10037a;
    }
}
