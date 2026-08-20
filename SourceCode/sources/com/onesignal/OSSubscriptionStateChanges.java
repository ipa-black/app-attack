package com.onesignal;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class OSSubscriptionStateChanges {
    private OSSubscriptionState from;
    private OSSubscriptionState to;

    public OSSubscriptionStateChanges(OSSubscriptionState oSSubscriptionState, OSSubscriptionState oSSubscriptionState2) {
        this.from = oSSubscriptionState;
        this.to = oSSubscriptionState2;
    }

    public OSSubscriptionState getTo() {
        return this.to;
    }

    public OSSubscriptionState getFrom() {
        return this.from;
    }

    public JSONObject toJSONObject() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("from", this.from.toJSONObject());
            jSONObject.put(TypedValues.TransitionType.S_TO, this.to.toJSONObject());
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return jSONObject;
    }

    public String toString() {
        return toJSONObject().toString();
    }
}
