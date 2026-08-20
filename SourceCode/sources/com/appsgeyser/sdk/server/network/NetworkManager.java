package com.appsgeyser.sdk.server.network;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.android.volley.AuthFailureError;
import com.android.volley.DefaultRetryPolicy;
import com.android.volley.RedirectError;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.StringRequest;
import com.appsgeyser.sdk.server.RequestQueueHolder;
import com.appsgeyser.sdk.server.implementation.OnRequestDoneListener;
import com.ironsource.mediationsdk.config.VersionInfo;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public class NetworkManager {
    private static final NetworkManager INSTANCE = new NetworkManager();

    /* loaded from: classes2.dex */
    public enum RequestType {
        AFTERINSTALL,
        USAGE,
        UPDATE,
        CLICK,
        APPMODE,
        CONFIG_PHP,
        NATIVE_ADS,
        IMPRESSION,
        RMA,
        REFERRER
    }

    public static NetworkManager getInstance() {
        return INSTANCE;
    }

    public void sendRequestAsync(final String str, final Integer num, Context context, final OnRequestDoneListener onRequestDoneListener, final Response.ErrorListener errorListener) {
        sendRequestAsync(str, num, context, new Response.Listener<String>() { // from class: com.appsgeyser.sdk.server.network.NetworkManager.1
            @Override // com.android.volley.Response.Listener
            public void onResponse(String str2) {
                OnRequestDoneListener onRequestDoneListener2 = onRequestDoneListener;
                if (onRequestDoneListener2 != null) {
                    onRequestDoneListener2.onRequestDone(str, num.intValue(), str2);
                }
            }
        }, new Response.ErrorListener() { // from class: com.appsgeyser.sdk.server.network.NetworkManager.2
            @Override // com.android.volley.Response.ErrorListener
            public void onErrorResponse(VolleyError volleyError) {
                Response.ErrorListener errorListener2 = errorListener;
                if (errorListener2 != null) {
                    errorListener2.onErrorResponse(volleyError);
                }
            }
        });
    }

    public void sendRequestAsync(String str, Integer num, Context context, Response.Listener<String> listener, Response.ErrorListener errorListener) {
        HttpURLConnection.setFollowRedirects(true);
        StringRequest stringRequest = new StringRequest(str, listener, errorListener);
        stringRequest.setRetryPolicy(new HandleRedirectRetryPolicy(10000, 5, 1.0f));
        stringRequest.setTag(num);
        RequestQueueHolder.getInstance(context).getQueue().add(stringRequest);
    }

    public void sendRequestAsyncPost(final String str, final Integer num, Context context, final OnRequestDoneListener onRequestDoneListener, final Response.ErrorListener errorListener, Map<String, String> map) {
        sendRequestAsyncPost(str, num, context, new Response.Listener<String>() { // from class: com.appsgeyser.sdk.server.network.NetworkManager.3
            @Override // com.android.volley.Response.Listener
            public void onResponse(String str2) {
                OnRequestDoneListener onRequestDoneListener2 = onRequestDoneListener;
                if (onRequestDoneListener2 != null) {
                    onRequestDoneListener2.onRequestDone(str, num.intValue(), str2);
                }
            }
        }, new Response.ErrorListener() { // from class: com.appsgeyser.sdk.server.network.NetworkManager.4
            @Override // com.android.volley.Response.ErrorListener
            public void onErrorResponse(VolleyError volleyError) {
                Response.ErrorListener errorListener2 = errorListener;
                if (errorListener2 != null) {
                    errorListener2.onErrorResponse(volleyError);
                }
            }
        }, map);
    }

    public void sendRequestAsyncPost(String str, Integer num, Context context, Response.Listener<String> listener, Response.ErrorListener errorListener, final Map<String, String> map) {
        HttpURLConnection.setFollowRedirects(true);
        StringRequest stringRequest = new StringRequest(1, str, listener, errorListener) { // from class: com.appsgeyser.sdk.server.network.NetworkManager.5
            @Override // com.android.volley.Request
            protected Map<String, String> getParams() throws AuthFailureError {
                return map;
            }
        };
        stringRequest.setRetryPolicy(new HandleRedirectRetryPolicy(10000, 5, 1.0f));
        stringRequest.setTag(num);
        RequestQueueHolder.getInstance(context).getQueue().add(stringRequest);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class HandleRedirectRetryPolicy extends DefaultRetryPolicy {
        HandleRedirectRetryPolicy(int i, int i2, float f2) {
            super(i, i2, f2);
        }

        @Override // com.android.volley.DefaultRetryPolicy, com.android.volley.RetryPolicy
        public void retry(VolleyError volleyError) throws VolleyError {
            if (volleyError instanceof RedirectError) {
                super.retry(volleyError);
                return;
            }
            throw volleyError;
        }
    }

    public Response.ErrorListener getDefaultErrorListener(Integer num, Context context) {
        return new Response.ErrorListener() { // from class: com.appsgeyser.sdk.server.network.NetworkManager.6
            @Override // com.android.volley.Response.ErrorListener
            public void onErrorResponse(VolleyError volleyError) {
                if (volleyError != null) {
                    volleyError.printStackTrace();
                    if (volleyError.getMessage() != null) {
                        System.err.println(volleyError.getMessage());
                    } else {
                        System.err.println("volley request error");
                    }
                }
            }
        };
    }

    public OnRequestDoneListener getEmptyRequestDoneListener(Context context) {
        return new OnRequestDoneListener() { // from class: com.appsgeyser.sdk.server.network.NetworkManager.7
            @Override // com.appsgeyser.sdk.server.implementation.OnRequestDoneListener
            public void onRequestDone(String str, int i, String str2) {
            }
        };
    }

    public Map<String, List<String>> loadHeaders(String str) {
        try {
            HttpURLConnection.setFollowRedirects(true);
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str + "&test=1").openConnection();
            httpURLConnection.setRequestMethod(VersionInfo.GIT_BRANCH);
            int responseCode = httpURLConnection.getResponseCode();
            Map<String, List<String>> headerFields = httpURLConnection.getHeaderFields();
            if (responseCode != 200) {
                return null;
            }
            return headerFields;
        } catch (Exception unused) {
            return null;
        }
    }

    public static boolean isOnline(Context context) {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }
}
