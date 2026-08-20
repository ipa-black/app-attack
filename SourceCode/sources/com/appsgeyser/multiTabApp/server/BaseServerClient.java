package com.appsgeyser.multiTabApp.server;

import android.content.Context;
import com.android.volley.DefaultRetryPolicy;
import com.android.volley.RedirectError;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.StringRequest;
import com.appsgeyser.multiTabApp.MainNavigationActivity;
import com.appsgeyser.multiTabApp.configuration.WebWidgetConfiguration;
import com.ironsource.mediationsdk.config.VersionInfo;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public class BaseServerClient {
    protected static final int FORBIDDEN_RESPONSE = 403;
    protected static final int OK_RESPONSE = 200;
    protected MainNavigationActivity _activity;
    protected WebWidgetConfiguration _config;
    protected Context _context;

    /* loaded from: classes2.dex */
    public interface OnRequestDoneListener {
        void onRequestDone(String str, int i, String str2);
    }

    /* loaded from: classes2.dex */
    public class HandleRedirectRetryPolicy extends DefaultRetryPolicy {
        public HandleRedirectRetryPolicy(int i, int i2, float f2) {
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

    public BaseServerClient(MainNavigationActivity mainNavigationActivity) {
        this._activity = mainNavigationActivity;
        this._context = mainNavigationActivity;
        this._config = mainNavigationActivity.getConfig();
    }

    public BaseServerClient(Context context, WebWidgetConfiguration webWidgetConfiguration) {
        this._activity = null;
        this._context = context;
        this._config = webWidgetConfiguration;
    }

    public void sendRequestAsync(final String str, final Integer num, final OnRequestDoneListener onRequestDoneListener) {
        HttpURLConnection.setFollowRedirects(true);
        StringRequest stringRequest = new StringRequest(str, new Response.Listener<String>() { // from class: com.appsgeyser.multiTabApp.server.BaseServerClient.1
            @Override // com.android.volley.Response.Listener
            public void onResponse(String str2) {
                OnRequestDoneListener onRequestDoneListener2 = onRequestDoneListener;
                if (onRequestDoneListener2 != null) {
                    onRequestDoneListener2.onRequestDone(str, num.intValue(), str2);
                }
            }
        }, new Response.ErrorListener() { // from class: com.appsgeyser.multiTabApp.server.BaseServerClient.2
            @Override // com.android.volley.Response.ErrorListener
            public void onErrorResponse(VolleyError volleyError) {
            }
        });
        stringRequest.setRetryPolicy(new HandleRedirectRetryPolicy(10000, 5, 1.0f));
        stringRequest.setTag(num);
        RequestQueueHolder.getInstance(this._context).getQueue().add(stringRequest);
    }

    public void sendRequestAsync(final String str, final Integer num, final OnRequestDoneListener onRequestDoneListener, final Response.ErrorListener errorListener) {
        HttpURLConnection.setFollowRedirects(true);
        StringRequest stringRequest = new StringRequest(str, new Response.Listener<String>() { // from class: com.appsgeyser.multiTabApp.server.BaseServerClient.3
            @Override // com.android.volley.Response.Listener
            public void onResponse(String str2) {
                OnRequestDoneListener onRequestDoneListener2 = onRequestDoneListener;
                if (onRequestDoneListener2 != null) {
                    onRequestDoneListener2.onRequestDone(str, num.intValue(), str2);
                }
            }
        }, new Response.ErrorListener() { // from class: com.appsgeyser.multiTabApp.server.BaseServerClient.4
            @Override // com.android.volley.Response.ErrorListener
            public void onErrorResponse(VolleyError volleyError) {
                Response.ErrorListener errorListener2 = errorListener;
                if (errorListener2 != null) {
                    errorListener2.onErrorResponse(volleyError);
                }
            }
        });
        stringRequest.setRetryPolicy(new HandleRedirectRetryPolicy(10000, 5, 1.0f));
        stringRequest.setTag(num);
        RequestQueueHolder.getInstance(this._context).getQueue().add(stringRequest);
    }

    public boolean getAvailabilityStatus(String str) {
        try {
            HttpURLConnection.setFollowRedirects(true);
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str + "&test=1").openConnection();
            httpURLConnection.setRequestMethod(VersionInfo.GIT_BRANCH);
            return httpURLConnection.getResponseCode() == 200;
        } catch (Exception unused) {
            return false;
        }
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
}
