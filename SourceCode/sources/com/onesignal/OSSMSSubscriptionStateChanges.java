package com.onesignal;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class OSSMSSubscriptionStateChanges {
    private OSSMSSubscriptionState from;
    private OSSMSSubscriptionState to;

    public OSSMSSubscriptionStateChanges(OSSMSSubscriptionState oSSMSSubscriptionState, OSSMSSubscriptionState oSSMSSubscriptionState2) {
        this.from = oSSMSSubscriptionState;
        this.to = oSSMSSubscriptionState2;
    }

    public OSSMSSubscriptionState getTo() {
        return this.to;
    }

    public OSSMSSubscriptionState getFrom() {
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
