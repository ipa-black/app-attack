package com.amazon.device.ads;

import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class MraidOpenCommand extends MraidCommand {
    static final String NAME = "open";

    @Override // com.amazon.device.ads.MraidCommand
    public String getName() {
        return "open";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String getMraidName() {
        return "open";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.amazon.device.ads.MraidCommand
    public void execute(JSONObject jSONObject, DTBAdMRAIDController dTBAdMRAIDController) throws JSONException {
        dTBAdMRAIDController.openUrl(jSONObject.getString("url"));
    }
}
