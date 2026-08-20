package com.appsgeyser.sdk.push;

import android.content.Context;
import android.util.Log;
import com.appsgeyser.sdk.configuration.Constants;
import com.appsgeyser.sdk.configuration.PreferencesCoder;
import com.appsgeyser.sdk.configuration.models.ConfigPhp;
import com.appsgeyser.sdk.server.RequestQueueHolder;
import com.appsgeyser.sdk.server.StatController;
import com.onesignal.OSNotificationReceivedEvent;
import com.onesignal.OneSignal;
import java.util.HashMap;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class OneSignalNotificationReceivedHandler implements OneSignal.OSRemoteNotificationReceivedHandler {
    private final String KEY_TITLE = "title";
    private final String KEY_MESSAGE = "message";

    @Override // com.onesignal.OneSignal.OSRemoteNotificationReceivedHandler
    public void remoteNotificationReceived(Context context, OSNotificationReceivedEvent oSNotificationReceivedEvent) {
        Log.d("OneSignalData", "remoteNotificationReceived");
        JSONObject additionalData = oSNotificationReceivedEvent.getNotification().getAdditionalData();
        if (additionalData != null) {
            Log.i("OneSignalData", additionalData.toString());
            Log.i("OneSignalData", "getTitle = " + oSNotificationReceivedEvent.getNotification().getTitle());
            Log.i("OneSignalData", "getBody = " + oSNotificationReceivedEvent.getNotification().getBody());
            String prefString = new PreferencesCoder(context).getPrefString(Constants.PREFS_SERVER_RESPONSE, null);
            if (prefString != null) {
                StatController.getInstance().init(new HashMap<>(ConfigPhp.parseFromJson(prefString).getStatUrls()));
                HashMap<String, String> hashMap = new HashMap<>();
                hashMap.put("title", oSNotificationReceivedEvent.getNotification().getTitle());
                hashMap.put("message", oSNotificationReceivedEvent.getNotification().getBody());
                RequestQueueHolder.getInstance(context);
                StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_ONESIGNAL_PUSH_RECEIVED, hashMap, context, true);
            }
        }
    }
}
