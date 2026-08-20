package com.onesignal;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class OSEmailSubscriptionStateChanges {
    private OSEmailSubscriptionState from;
    private OSEmailSubscriptionState to;

    public OSEmailSubscriptionStateChanges(OSEmailSubscriptionState oSEmailSubscriptionState, OSEmailSubscriptionState oSEmailSubscriptionState2) {
        this.from = oSEmailSubscriptionState;
        this.to = oSEmailSubscriptionState2;
    }

    public OSEmailSubscriptionState getTo() {
        return this.to;
    }

    public OSEmailSubscriptionState getFrom() {
        return this.from;
    }

    public JSONObject toJSONObject() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("from", this.from.toJSONObject());
            jSONObject.put(TypedValues.TransitionType.S_TO, this.to.toJSONObject());
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        return jSONObject;
    }

    public String toString() {
        return toJSONObject().toString();
    }
}
