package com.iab.omid.library.amazon.adsession.media;

import com.iab.omid.library.amazon.d.c;
import com.iab.omid.library.amazon.d.e;
import io.bidmachine.utils.IabUtils;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public final class VastProperties {

    /* renamed from: a  reason: collision with root package name */
    private final boolean f9935a;

    /* renamed from: b  reason: collision with root package name */
    private final Float f9936b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f9937c;

    /* renamed from: d  reason: collision with root package name */
    private final Position f9938d;

    private VastProperties(boolean z, Float f2, boolean z2, Position position) {
        this.f9935a = z;
        this.f9936b = f2;
        this.f9937c = z2;
        this.f9938d = position;
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
            jSONObject.put("skippable", this.f9935a);
            if (this.f9935a) {
                jSONObject.put(IabUtils.KEY_SKIP_OFFSET, this.f9936b);
            }
            jSONObject.put("autoPlay", this.f9937c);
            jSONObject.put("position", this.f9938d);
        } catch (JSONException e2) {
            c.a("VastProperties: JSON error", e2);
        }
        return jSONObject;
    }

    public Position getPosition() {
        return this.f9938d;
    }

    public Float getSkipOffset() {
        return this.f9936b;
    }

    public boolean isAutoPlay() {
        return this.f9937c;
    }

    public boolean isSkippable() {
        return this.f9935a;
    }
}
