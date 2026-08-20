package com.iab.omid.library.adcolony.adsession.media;

import com.iab.omid.library.adcolony.d.c;
import com.iab.omid.library.adcolony.d.e;
import io.bidmachine.utils.IabUtils;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public final class VastProperties {

    /* renamed from: a  reason: collision with root package name */
    private final boolean f9828a;

    /* renamed from: b  reason: collision with root package name */
    private final Float f9829b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f9830c;

    /* renamed from: d  reason: collision with root package name */
    private final Position f9831d;

    private VastProperties(boolean z, Float f2, boolean z2, Position position) {
        this.f9828a = z;
        this.f9829b = f2;
        this.f9830c = z2;
        this.f9831d = position;
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
            jSONObject.put("skippable", this.f9828a);
            if (this.f9828a) {
                jSONObject.put(IabUtils.KEY_SKIP_OFFSET, this.f9829b);
            }
            jSONObject.put("autoPlay", this.f9830c);
            jSONObject.put("position", this.f9831d);
        } catch (JSONException e2) {
            c.a("VastProperties: JSON error", e2);
        }
        return jSONObject;
    }

    public Position getPosition() {
        return this.f9831d;
    }

    public Float getSkipOffset() {
        return this.f9829b;
    }

    public boolean isAutoPlay() {
        return this.f9830c;
    }

    public boolean isSkippable() {
        return this.f9828a;
    }
}
