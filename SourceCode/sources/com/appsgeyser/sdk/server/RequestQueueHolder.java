package com.appsgeyser.sdk.server;

import android.content.Context;
import com.android.volley.RequestQueue;
import com.android.volley.toolbox.StringRequest;
import com.android.volley.toolbox.Volley;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public class RequestQueueHolder {
    private static ArrayList<String> deferredUrls = null;
    private static RequestQueueHolder instance = null;
    private static volatile boolean ready = false;
    private RequestQueue queue;

    private RequestQueueHolder(Context context) {
        this.queue = null;
        this.queue = Volley.newRequestQueue(context);
        ready = true;
    }

    public static RequestQueueHolder getInstance(Context context) {
        if (instance == null) {
            instance = new RequestQueueHolder(context);
        }
        return instance;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void addUrl(String str) {
        RequestQueueHolder requestQueueHolder = instance;
        if (requestQueueHolder == null) {
            if (deferredUrls == null) {
                deferredUrls = new ArrayList<>();
            }
            deferredUrls.add(str);
            return;
        }
        requestQueueHolder.getQueue().add(new StringRequest(str, null, null));
    }

    public RequestQueue getQueue() {
        return this.queue;
    }

    public static boolean ready() {
        return ready;
    }
}
