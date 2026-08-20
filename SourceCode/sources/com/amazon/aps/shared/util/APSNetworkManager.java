package com.amazon.aps.shared.util;

import android.content.Context;
import android.util.Log;
import com.amazon.aps.shared.APSAnalytics;
import com.amazon.aps.shared.analytics.APSEvent;
import com.amazon.aps.shared.analytics.APSEventSeverity;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URL;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import javax.net.ssl.HttpsURLConnection;
/* loaded from: classes.dex */
public class APSNetworkManager {
    private static final String API_HEADER = "x-api-key";
    private static final int BUFFER_SIZE = 1024;
    private static final String CONTENT_TYPE_HEADER = "Content-Type";
    private static final String CONTENT_TYPE_VALUE = "application/json";
    private static final String HTTP_POST_METHOD = "POST";
    private static long SCHEDULE_INTERVAL = 10;
    private static final int SOCK_TIMEOUT = 10000;
    private static final String TAG = "APSNetworkManager";
    private static APSNetworkManager apsNetworkManager;
    private Context context;
    private final ExecutorService executor = Executors.newFixedThreadPool(1);
    private boolean shutdownInProgress = false;

    private APSNetworkManager(Context context) {
        this.context = context;
        Runtime.getRuntime().addShutdownHook(new Thread() { // from class: com.amazon.aps.shared.util.APSNetworkManager.1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                try {
                    APSNetworkManager.this.shutdownInProgress = true;
                    Log.d(APSNetworkManager.TAG, "App is shutting down, terminating the thread executor");
                    APSNetworkManager.this.executor.shutdown();
                } catch (RuntimeException e2) {
                    Log.e(APSNetworkManager.TAG, "Error in stopping the executor", e2);
                }
            }
        });
    }

    public static APSNetworkManager getInstance(Context context) {
        if (apsNetworkManager == null) {
            apsNetworkManager = new APSNetworkManager(context);
        }
        return apsNetworkManager;
    }

    public void uploadEvent(APSEvent aPSEvent) {
        if (aPSEvent.getEventSeverity() == APSEventSeverity.FATAL) {
            uploadFatalEvent(aPSEvent);
        }
    }

    private void uploadFatalEvent(final APSEvent aPSEvent) {
        execute(new Runnable() { // from class: com.amazon.aps.shared.util.APSNetworkManager$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                APSNetworkManager.this.m33xd84bdbfe(aPSEvent);
            }
        });
    }

    private synchronized void execute(Runnable runnable) {
        try {
            if (!this.shutdownInProgress) {
                this.executor.execute(runnable);
            }
        } catch (InternalError e2) {
            Log.e(TAG, "Internal error in executing the thread", e2);
            handleError(e2);
        } catch (RuntimeException e3) {
            Log.e(TAG, "Error running the thread", e3);
        }
    }

    private void handleError(InternalError internalError) {
        if (internalError.getLocalizedMessage().contains("shutdown")) {
            Log.e(TAG, "Got the shutdown signal", internalError);
        }
    }

    private boolean setConfigsInConnection(HttpsURLConnection httpsURLConnection) {
        try {
            httpsURLConnection.setReadTimeout(10000);
            httpsURLConnection.setConnectTimeout(10000);
            httpsURLConnection.setDoInput(true);
            httpsURLConnection.setDoOutput(true);
            httpsURLConnection.setChunkedStreamingMode(0);
            httpsURLConnection.setRequestMethod("POST");
            httpsURLConnection.setRequestProperty("Content-Type", CONTENT_TYPE_VALUE);
            httpsURLConnection.setRequestProperty(API_HEADER, APSAnalytics.getApiKey());
            httpsURLConnection.connect();
            return true;
        } catch (IOException e2) {
            Log.e(TAG, "Error in setting the connection parameter:", e2);
            return false;
        }
    }

    private void closeStreamsAndConnection(InputStream inputStream, OutputStream outputStream, HttpsURLConnection httpsURLConnection) {
        if (outputStream != null) {
            try {
                outputStream.close();
            } catch (IOException | RuntimeException e2) {
                Log.e(TAG, "Unable to close the out stream", e2);
            }
        }
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException | RuntimeException e3) {
                Log.e(TAG, "Unable to close the in stream", e3);
            }
        }
        try {
            httpsURLConnection.disconnect();
        } catch (RuntimeException e4) {
            Log.e(TAG, "Unable to close the url connection", e4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: sendData */
    public boolean m33xd84bdbfe(APSEvent aPSEvent) {
        HttpsURLConnection httpsURLConnection;
        OutputStream outputStream;
        BufferedInputStream bufferedInputStream = null;
        try {
            try {
                httpsURLConnection = (HttpsURLConnection) new URL(APSAnalytics.getHttpUrl()).openConnection();
                try {
                    if (setConfigsInConnection(httpsURLConnection)) {
                        outputStream = new BufferedOutputStream(httpsURLConnection.getOutputStream());
                        try {
                            String jsonPayload = aPSEvent.toJsonPayload();
                            outputStream.write(jsonPayload.getBytes());
                            outputStream.flush();
                            String str = TAG;
                            Log.d(str, "Sending the event data: " + jsonPayload);
                            int responseCode = httpsURLConnection.getResponseCode();
                            Log.d(str, "Response code received : " + responseCode);
                            if (responseCode == 200) {
                                byte[] bArr = new byte[1024];
                                BufferedInputStream bufferedInputStream2 = new BufferedInputStream(httpsURLConnection.getInputStream());
                                try {
                                    bufferedInputStream2.read(bArr);
                                    Log.d(str, "Response received: ".concat(new String(bArr)));
                                    closeStreamsAndConnection(bufferedInputStream2, outputStream, httpsURLConnection);
                                    return true;
                                } catch (IOException e2) {
                                    e = e2;
                                    bufferedInputStream = bufferedInputStream2;
                                    Log.e(TAG, "Error in sendData: ", e);
                                    closeStreamsAndConnection(bufferedInputStream, outputStream, httpsURLConnection);
                                    return false;
                                } catch (RuntimeException e3) {
                                    e = e3;
                                    bufferedInputStream = bufferedInputStream2;
                                    Log.e(TAG, "Error in sendData: ", e);
                                    closeStreamsAndConnection(bufferedInputStream, outputStream, httpsURLConnection);
                                    return false;
                                } catch (Throwable th) {
                                    th = th;
                                    bufferedInputStream = bufferedInputStream2;
                                    closeStreamsAndConnection(bufferedInputStream, outputStream, httpsURLConnection);
                                    throw th;
                                }
                            }
                        } catch (IOException e4) {
                            e = e4;
                        } catch (RuntimeException e5) {
                            e = e5;
                        }
                    } else {
                        outputStream = null;
                    }
                    closeStreamsAndConnection(null, outputStream, httpsURLConnection);
                    return false;
                } catch (IOException e6) {
                    e = e6;
                    outputStream = null;
                    Log.e(TAG, "Error in sendData: ", e);
                    closeStreamsAndConnection(bufferedInputStream, outputStream, httpsURLConnection);
                    return false;
                } catch (RuntimeException e7) {
                    e = e7;
                    outputStream = null;
                    Log.e(TAG, "Error in sendData: ", e);
                    closeStreamsAndConnection(bufferedInputStream, outputStream, httpsURLConnection);
                    return false;
                } catch (Throwable th2) {
                    th = th2;
                    outputStream = null;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (IOException e8) {
            e = e8;
            httpsURLConnection = null;
            outputStream = null;
            Log.e(TAG, "Error in sendData: ", e);
            closeStreamsAndConnection(bufferedInputStream, outputStream, httpsURLConnection);
            return false;
        } catch (RuntimeException e9) {
            e = e9;
            httpsURLConnection = null;
            outputStream = null;
            Log.e(TAG, "Error in sendData: ", e);
            closeStreamsAndConnection(bufferedInputStream, outputStream, httpsURLConnection);
            return false;
        } catch (Throwable th4) {
            th = th4;
            httpsURLConnection = null;
            outputStream = null;
        }
    }
}
