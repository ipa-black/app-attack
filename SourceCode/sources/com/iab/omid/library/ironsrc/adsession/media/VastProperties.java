package com.iab.omid.library.ironsrc.adsession.media;

import com.iab.omid.library.ironsrc.d.c;
import com.iab.omid.library.ironsrc.d.e;
import io.bidmachine.utils.IabUtils;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public final class VastProperties {

    /* renamed from: a  reason: collision with root package name */
    private final boolean f10378a;

    /* renamed from: b  reason: collision with root package name */
    private final Float f10379b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f10380c;

    /* renamed from: d  reason: collision with root package name */
    private final Position f10381d;

    private VastProperties(boolean z, Float f2, boolean z2, Position position) {
        this.f10378a = z;
        this.f10379b = f2;
        this.f10380c = z2;
        this.f10381d = position;
    }

    public static VastProperties createVastPropertiesForNonSkippableMedia(boolean z, Position position) {
        e.a(position, "Position is null");
        return new VastProperties(false, null, z, position);
    }

    public static VastProperties createVastPropertiesForSkippableMedia(float f2, boolean z, Position position) {
        e.a(position, "Position is null");
        return new VastProperties(true, Float.valueOf(f2), z, position);
    }

    public final JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("skippable", this.f10378a);
            if (this.f10378a) {
                jSONObject.put(IabUtils.KEY_SKIP_OFFSET, this.f10379b);
            }
            jSONObject.put("autoPlay", this.f10380c);
            jSONObject.put("position", this.f10381d);
        } catch (JSONException e2) {
            c.a("VastProperties: JSON error", e2);
        }
        return jSONObject;
    }

    public final Position getPosition() {
        return this.f10381d;
    }

    public final Float getSkipOffset() {
        return this.f10379b;
    }

    public final boolean isAutoPlay() {
        return this.f10380c;
    }

    public final boolean isSkippable() {
        return this.f10378a;
    }
}
