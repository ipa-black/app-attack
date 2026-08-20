package org.altbeacon.beacon;

import android.app.IntentService;
import android.content.Intent;
/* loaded from: classes5.dex */
public class BeaconIntentProcessor extends IntentService {
    private static final String TAG = "BeaconIntentProcessor";

    public BeaconIntentProcessor() {
        super(TAG);
    }

    @Override // android.app.IntentService
    protected void onHandleIntent(Intent intent) {
        new IntentHandler().convertIntentsToCallbacks(getApplicationContext(), intent);
    }
}
