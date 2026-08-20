package com.onesignal;

import androidx.browser.trusted.sharing.ShareTarget;
import com.onesignal.OSThrowable;
import java.io.IOException;
import java.lang.Thread;
import java.net.HttpURLConnection;
import java.net.URL;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public class OneSignalRestClient {
    private static final String BASE_URL = "https://api.onesignal.com/";
    static final String CACHE_KEY_GET_TAGS = "CACHE_KEY_GET_TAGS";
    static final String CACHE_KEY_REMOTE_PARAMS = "CACHE_KEY_REMOTE_PARAMS";
    private static final int GET_TIMEOUT = 60000;
    private static final String OS_ACCEPT_HEADER = "application/vnd.onesignal.v1+json";
    private static final String OS_API_VERSION = "1";
    private static final int THREAD_ID = 10000;
    private static final int TIMEOUT = 120000;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static abstract class ResponseHandler {
        void onFailure(int i, String str, Throwable th) {
        }

        void onSuccess(String str) {
        }
    }

    private static int getThreadTimeout(int i) {
        return i + 5000;
    }

    OneSignalRestClient() {
    }

    public static void put(final String str, final JSONObject jSONObject, final ResponseHandler responseHandler) {
        new Thread(new Runnable() { // from class: com.onesignal.OneSignalRestClient.1
            @Override // java.lang.Runnable
            public void run() {
                OneSignalRestClient.makeRequest(str, "PUT", jSONObject, responseHandler, 120000, null);
            }
        }, "OS_REST_ASYNC_PUT").start();
    }

    public static void post(final String str, final JSONObject jSONObject, final ResponseHandler responseHandler) {
        new Thread(new Runnable() { // from class: com.onesignal.OneSignalRestClient.2
            @Override // java.lang.Runnable
            public void run() {
                OneSignalRestClient.makeRequest(str, ShareTarget.METHOD_POST, jSONObject, responseHandler, 120000, null);
            }
        }, "OS_REST_ASYNC_POST").start();
    }

    public static void get(final String str, final ResponseHandler responseHandler, final String str2) {
        new Thread(new Runnable() { // from class: com.onesignal.OneSignalRestClient.3
            @Override // java.lang.Runnable
            public void run() {
                OneSignalRestClient.makeRequest(str, null, null, responseHandler, 60000, str2);
            }
        }, "OS_REST_ASYNC_GET").start();
    }

    public static void getSync(String str, ResponseHandler responseHandler, String str2) {
        makeRequest(str, null, null, responseHandler, 60000, str2);
    }

    public static void putSync(String str, JSONObject jSONObject, ResponseHandler responseHandler) {
        makeRequest(str, "PUT", jSONObject, responseHandler, 120000, null);
    }

    public static void postSync(String str, JSONObject jSONObject, ResponseHandler responseHandler) {
        makeRequest(str, ShareTarget.METHOD_POST, jSONObject, responseHandler, 120000, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void makeRequest(final String str, final String str2, final JSONObject jSONObject, final ResponseHandler responseHandler, final int i, final String str3) {
        if (OSUtils.isRunningOnMainThread()) {
            throw new OSThrowable.OSMainThreadException("Method: " + str2 + " was called from the Main Thread!");
        }
        if (str2 == null || !OneSignal.shouldLogUserPrivacyConsentErrorMessageForMethodName(null)) {
            final Thread[] threadArr = new Thread[1];
            Thread thread = new Thread(new Runnable() { // from class: com.onesignal.OneSignalRestClient.4
                @Override // java.lang.Runnable
                public void run() {
                    threadArr[0] = OneSignalRestClient.startHTTPConnection(str, str2, jSONObject, responseHandler, i, str3);
                }
            }, "OS_HTTPConnection");
            thread.start();
            try {
                thread.join(getThreadTimeout(i));
                if (thread.getState() != Thread.State.TERMINATED) {
                    thread.interrupt();
                }
                Thread thread2 = threadArr[0];
                if (thread2 != null) {
                    thread2.join();
                }
            } catch (InterruptedException e2) {
                e2.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x02b3, code lost:
        if (r13 != null) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x02b6, code lost:
        return r0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Thread startHTTPConnection(java.lang.String r17, java.lang.String r18, org.json.JSONObject r19, com.onesignal.OneSignalRestClient.ResponseHandler r20, int r21, java.lang.String r22) {
        /*
            Method dump skipped, instructions count: 702
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onesignal.OneSignalRestClient.startHTTPConnection(java.lang.String, java.lang.String, org.json.JSONObject, com.onesignal.OneSignalRestClient$ResponseHandler, int, java.lang.String):java.lang.Thread");
    }

    private static Thread callResponseHandlerOnSuccess(final ResponseHandler responseHandler, final String str) {
        if (responseHandler == null) {
            return null;
        }
        Thread thread = new Thread(new Runnable() { // from class: com.onesignal.OneSignalRestClient.5
            @Override // java.lang.Runnable
            public void run() {
                ResponseHandler.this.onSuccess(str);
            }
        }, "OS_REST_SUCCESS_CALLBACK");
        thread.start();
        return thread;
    }

    private static Thread callResponseHandlerOnFailure(final ResponseHandler responseHandler, final int i, final String str, final Throwable th) {
        if (responseHandler == null) {
            return null;
        }
        Thread thread = new Thread(new Runnable() { // from class: com.onesignal.OneSignalRestClient.6
            @Override // java.lang.Runnable
            public void run() {
                ResponseHandler.this.onFailure(i, str, th);
            }
        }, "OS_REST_FAILURE_CALLBACK");
        thread.start();
        return thread;
    }

    private static HttpURLConnection newHttpURLConnection(String str) throws IOException {
        return (HttpURLConnection) new URL(BASE_URL + str).openConnection();
    }
}
