package com.appsgeyser.multiTabApp.server;

import android.content.Context;
import com.android.volley.RequestQueue;
import com.android.volley.toolbox.StringRequest;
import com.android.volley.toolbox.Volley;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public class RequestQueueHolder {
    private static volatile boolean _ready = false;
    private static ArrayList<String> deferredUrls;
    private static RequestQueueHolder instance;
    private RequestQueue _queue;

    public static RequestQueueHolder getInstance(Context context) {
        if (instance == null) {
            instance = new RequestQueueHolder(context);
        }
        return instance;
    }

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
        return this._queue;
    }

    private RequestQueueHolder(Context context) {
        this._queue = null;
        this._queue = Volley.newRequestQueue(context);
        _ready = true;
    }

    public static boolean ready() {
        return _ready;
    }
}
