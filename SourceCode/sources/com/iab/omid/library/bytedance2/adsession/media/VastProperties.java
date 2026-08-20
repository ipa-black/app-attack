package com.iab.omid.library.bytedance2.adsession.media;

import com.iab.omid.library.bytedance2.utils.d;
import com.iab.omid.library.bytedance2.utils.g;
import io.bidmachine.utils.IabUtils;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public final class VastProperties {

    /* renamed from: a  reason: collision with root package name */
    private final boolean f10258a;

    /* renamed from: b  reason: collision with root package name */
    private final Float f10259b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f10260c;

    /* renamed from: d  reason: collision with root package name */
    private final Position f10261d;

    private VastProperties(boolean z, Float f2, boolean z2, Position position) {
        this.f10258a = z;
        this.f10259b = f2;
        this.f10260c = z2;
        this.f10261d = position;
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
            jSONObject.put("skippable", this.f10258a);
            if (this.f10258a) {
                jSONObject.put(IabUtils.KEY_SKIP_OFFSET, this.f10259b);
            }
            jSONObject.put("autoPlay", this.f10260c);
            jSONObject.put("position", this.f10261d);
        } catch (JSONException e2) {
            d.a("VastProperties: JSON error", e2);
        }
        return jSONObject;
    }

    public Position getPosition() {
        return this.f10261d;
    }

    public Float getSkipOffset() {
        return this.f10259b;
    }

    public boolean isAutoPlay() {
        return this.f10260c;
    }

    public boolean isSkippable() {
        return this.f10258a;
    }
}
