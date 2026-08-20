package com.appsgeyser.sdk.datasdk;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.appsgeyser.sdk.configuration.Constants;
import com.appsgeyser.sdk.configuration.PreferencesCoder;
import com.appsgeyser.sdk.configuration.models.ConfigPhp;
import com.appsgeyser.sdk.server.network.NetworkManager;
/* loaded from: classes2.dex */
public class DataSdksReceiver extends BroadcastReceiver {
    private static final String LOG_DATA_SDK_RECEIVER = "DataSdksReceiver";
    private static final String LOG_DATA_SDK_RECEIVER_PERMISSIONS = "DataSdksPermission";

    @Override // android.content.BroadcastReceiver
    public void onReceive(final Context context, final Intent intent) {
        if (intent != null) {
            NetworkManager.getInstance().sendRequestAsync(new PreferencesCoder(context).getPrefString(Constants.PREFS_CONFIG_PHP_URL, ""), Integer.valueOf(NetworkManager.RequestType.CONFIG_PHP.ordinal()), context, new Response.Listener<String>() { // from class: com.appsgeyser.sdk.datasdk.DataSdksReceiver.1
                @Override // com.android.volley.Response.Listener
                public void onResponse(String str) {
                    try {
                        ConfigPhp.parseFromJson(str);
                        DataSdksReceiver.this.passDataToSdk(context, intent);
                    } catch (Exception e2) {
                        Log.e(DataSdksReceiver.LOG_DATA_SDK_RECEIVER, "parsing response error...\n" + e2.getMessage());
                        DataSdksReceiver.this.onServerError(context, intent);
                    }
                }
            }, new Response.ErrorListener() { // from class: com.appsgeyser.sdk.datasdk.DataSdksReceiver.2
                @Override // com.android.volley.Response.ErrorListener
                public void onErrorResponse(VolleyError volleyError) {
                    if (volleyError != null) {
                        volleyError.printStackTrace();
                        if (volleyError.getMessage() != null) {
                            Log.e(DataSdksReceiver.LOG_DATA_SDK_RECEIVER, "Volley request error: parsing response error...\n" + volleyError.getMessage());
                        } else {
                            Log.e(DataSdksReceiver.LOG_DATA_SDK_RECEIVER, "Volley request error: parsing response error...\n");
                        }
                    }
                    DataSdksReceiver.this.onServerError(context, intent);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onServerError(Context context, Intent intent) {
        new PreferencesCoder(context);
        passDataToSdk(context, intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void passDataToSdk(Context context, Intent intent) {
        intent.getAction();
    }
}
