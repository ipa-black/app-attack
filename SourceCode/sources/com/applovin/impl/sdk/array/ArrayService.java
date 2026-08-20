package com.applovin.impl.sdk.array;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.ResolveInfo;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import com.applovin.array.apphub.aidl.IAppHubDirectDownloadServiceCallback;
import com.applovin.array.apphub.aidl.IAppHubService;
import com.applovin.impl.sdk.n;
import com.applovin.impl.sdk.utils.a;
import com.applovin.impl.sdk.v;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes.dex */
public class ArrayService extends IAppHubDirectDownloadServiceCallback.Stub {
    private static final int MAX_RECONNECT_RETRY_COUNT = 3;
    private static final String SERVICE_INTENT_CLASS_NAME = "com.applovin.oem.am.android.external.AppHubService";
    private static final String SERVICE_INTENT_FILTER_ACTION = "com.applovin.am.intent.action.APPHUB_SERVICE";
    private static final String TAG = "ArrayService";
    private IAppHubService appHubService;
    private final Intent appHubServiceIntent;
    private long appHubVersionCode = -1;
    private DirectDownloadState currentDownloadState;
    private int currentRetryCount;
    private final ArrayDataCollector dataCollector;
    private boolean isDirectDownloadEnabled;
    private final v logger;
    private String randomUserToken;
    private final n sdk;

    /* loaded from: classes.dex */
    public interface DirectDownloadListener {
        void onAppDetailsDismissed();

        void onAppDetailsDisplayed();

        void onFailure();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class DirectDownloadState {
        private final String adToken;
        private final AtomicBoolean errorCallbackInvoked = new AtomicBoolean();
        private final DirectDownloadListener listener;
        private final Bundle parameters;

        public DirectDownloadState(String str, Bundle bundle, DirectDownloadListener directDownloadListener) {
            this.adToken = str;
            this.parameters = bundle;
            this.listener = directDownloadListener;
        }

        protected boolean canEqual(Object obj) {
            return obj instanceof DirectDownloadState;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (obj instanceof DirectDownloadState) {
                DirectDownloadState directDownloadState = (DirectDownloadState) obj;
                if (directDownloadState.canEqual(this)) {
                    AtomicBoolean errorCallbackInvoked = getErrorCallbackInvoked();
                    AtomicBoolean errorCallbackInvoked2 = directDownloadState.getErrorCallbackInvoked();
                    if (errorCallbackInvoked != null ? errorCallbackInvoked.equals(errorCallbackInvoked2) : errorCallbackInvoked2 == null) {
                        String adToken = getAdToken();
                        String adToken2 = directDownloadState.getAdToken();
                        if (adToken != null ? adToken.equals(adToken2) : adToken2 == null) {
                            Bundle parameters = getParameters();
                            Bundle parameters2 = directDownloadState.getParameters();
                            if (parameters != null ? parameters.equals(parameters2) : parameters2 == null) {
                                DirectDownloadListener listener = getListener();
                                DirectDownloadListener listener2 = directDownloadState.getListener();
                                return listener != null ? listener.equals(listener2) : listener2 == null;
                            }
                            return false;
                        }
                        return false;
                    }
                    return false;
                }
                return false;
            }
            return false;
        }

        public String getAdToken() {
            return this.adToken;
        }

        public AtomicBoolean getErrorCallbackInvoked() {
            return this.errorCallbackInvoked;
        }

        public DirectDownloadListener getListener() {
            return this.listener;
        }

        public Bundle getParameters() {
            return this.parameters;
        }

        public int hashCode() {
            AtomicBoolean errorCallbackInvoked = getErrorCallbackInvoked();
            int hashCode = errorCallbackInvoked == null ? 43 : errorCallbackInvoked.hashCode();
            String adToken = getAdToken();
            int hashCode2 = ((hashCode + 59) * 59) + (adToken == null ? 43 : adToken.hashCode());
            Bundle parameters = getParameters();
            int hashCode3 = (hashCode2 * 59) + (parameters == null ? 43 : parameters.hashCode());
            DirectDownloadListener listener = getListener();
            return (hashCode3 * 59) + (listener != null ? listener.hashCode() : 43);
        }

        public String toString() {
            return "ArrayService.DirectDownloadState(errorCallbackInvoked=" + getErrorCallbackInvoked() + ", adToken=" + getAdToken() + ", parameters=" + getParameters() + ", listener=" + getListener() + ")";
        }
    }

    public ArrayService(n nVar) {
        this.sdk = nVar;
        this.logger = nVar.D();
        this.dataCollector = new ArrayDataCollector(nVar);
        Intent createAppHubServiceIntent = createAppHubServiceIntent();
        this.appHubServiceIntent = createAppHubServiceIntent;
        if (createAppHubServiceIntent != null) {
            bindAppHubService();
        }
        nVar.ai().a(new a() { // from class: com.applovin.impl.sdk.array.ArrayService.1
            @Override // com.applovin.impl.sdk.utils.a, android.app.Application.ActivityLifecycleCallbacks
            public void onActivityStopped(Activity activity) {
                DirectDownloadState directDownloadState = ArrayService.this.currentDownloadState;
                if (!ArrayService.this.isAppHubInstalled() || directDownloadState == null) {
                    return;
                }
                try {
                    v unused = ArrayService.this.logger;
                    if (v.a()) {
                        ArrayService.this.logger.b(ArrayService.TAG, "Dismissing Direct Download Activity");
                    }
                    ArrayService.this.appHubService.dismissDirectDownloadAppDetails(directDownloadState.adToken);
                    directDownloadState.listener.onAppDetailsDismissed();
                    ArrayService.this.currentDownloadState = null;
                } catch (RemoteException e2) {
                    v unused2 = ArrayService.this.logger;
                    if (v.a()) {
                        ArrayService.this.logger.b(ArrayService.TAG, "Failed dismiss Direct Download Activity", e2);
                    }
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void bindAppHubService() {
        if (this.currentRetryCount > 3) {
            if (v.a()) {
                this.logger.d(TAG, "Exceeded maximum retry count");
                return;
            }
            return;
        }
        if (v.a()) {
            this.logger.b(TAG, "Attempting connection to App Hub service...");
        }
        this.currentRetryCount++;
        try {
            if (this.sdk.P().bindService(this.appHubServiceIntent, new ServiceConnection() { // from class: com.applovin.impl.sdk.array.ArrayService.2
                @Override // android.content.ServiceConnection
                public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
                    v unused = ArrayService.this.logger;
                    if (v.a()) {
                        ArrayService.this.logger.b(ArrayService.TAG, "Connection successful: " + componentName);
                    }
                    ArrayService.this.appHubService = IAppHubService.Stub.asInterface(iBinder);
                }

                @Override // android.content.ServiceConnection
                public void onServiceDisconnected(ComponentName componentName) {
                    v unused = ArrayService.this.logger;
                    if (v.a()) {
                        ArrayService.this.logger.e(ArrayService.TAG, "Service disconnected: " + componentName);
                    }
                    ArrayService.this.appHubService = null;
                    v unused2 = ArrayService.this.logger;
                    if (v.a()) {
                        ArrayService.this.logger.e(ArrayService.TAG, "Retrying...");
                    }
                    ArrayService.this.bindAppHubService();
                }
            }, 1) || !v.a()) {
                return;
            }
            this.logger.e(TAG, "App Hub not available");
        } catch (Throwable th) {
            if (v.a()) {
                this.logger.b(TAG, "Failed to bind to service", th);
            }
        }
    }

    private Intent createAppHubServiceIntent() {
        Intent intent = new Intent(SERVICE_INTENT_FILTER_ACTION);
        List<ResolveInfo> queryIntentServices = this.sdk.P().getPackageManager().queryIntentServices(intent, 0);
        if (queryIntentServices != null && !queryIntentServices.isEmpty()) {
            intent.setClassName(queryIntentServices.get(0).serviceInfo.packageName, SERVICE_INTENT_CLASS_NAME);
            return intent;
        } else if (v.a()) {
            this.logger.e(TAG, "App Hub not available");
            return null;
        } else {
            return null;
        }
    }

    public void collectAppHubData() {
        if (isAppHubInstalled()) {
            if (v.a()) {
                this.logger.b(TAG, "Collecting data...");
            }
            this.appHubVersionCode = this.dataCollector.maybeCollectAppHubVersionCode(this.appHubService);
            this.isDirectDownloadEnabled = this.dataCollector.maybeCollectDirectDownloadEnabled(this.appHubService);
            this.randomUserToken = this.dataCollector.maybeCollectRandomUserToken(this.appHubService);
        }
    }

    public long getAppHubVersionCode() {
        return this.appHubVersionCode;
    }

    public String getRandomUserToken() {
        return this.randomUserToken;
    }

    public boolean isAppHubInstalled() {
        return this.appHubService != null;
    }

    public boolean isDirectDownloadEnabled() {
        return this.isDirectDownloadEnabled;
    }

    @Override // com.applovin.array.apphub.aidl.IAppHubDirectDownloadServiceCallback
    public void onAppDetailsDismissed(String str) {
        if (v.a()) {
            this.logger.b(TAG, "App details dismissed");
        }
        DirectDownloadState directDownloadState = this.currentDownloadState;
        if (directDownloadState == null) {
            return;
        }
        directDownloadState.listener.onAppDetailsDismissed();
        this.currentDownloadState = null;
    }

    @Override // com.applovin.array.apphub.aidl.IAppHubDirectDownloadServiceCallback
    public void onAppDetailsShown(String str) {
        if (v.a()) {
            this.logger.b(TAG, "App details shown");
        }
        DirectDownloadState directDownloadState = this.currentDownloadState;
        if (directDownloadState == null) {
            return;
        }
        directDownloadState.listener.onAppDetailsDisplayed();
    }

    @Override // com.applovin.array.apphub.aidl.IAppHubDirectDownloadServiceCallback
    public void onDownloadStarted(String str) {
        if (v.a()) {
            this.logger.b(TAG, "Download started");
        }
    }

    @Override // com.applovin.array.apphub.aidl.IAppHubDirectDownloadServiceCallback
    public void onError(String str, String str2) {
        if (v.a()) {
            this.logger.e(TAG, "Encountered error: " + str2);
        }
        DirectDownloadState directDownloadState = this.currentDownloadState;
        if (directDownloadState != null && directDownloadState.errorCallbackInvoked.compareAndSet(false, true)) {
            directDownloadState.listener.onFailure();
            this.currentDownloadState = null;
        }
    }

    public void startDirectDownloadActivity(ArrayDirectDownloadAd arrayDirectDownloadAd, DirectDownloadListener directDownloadListener) {
        if (!isAppHubInstalled()) {
            if (v.a()) {
                this.logger.e(TAG, "Cannot begin Direct Download process - service disconnected");
            }
            directDownloadListener.onFailure();
        } else if (!arrayDirectDownloadAd.isDirectDownloadEnabled()) {
            if (v.a()) {
                this.logger.e(TAG, "Cannot begin Direct Download process - missing token");
            }
            directDownloadListener.onFailure();
        } else {
            try {
                this.currentDownloadState = new DirectDownloadState(arrayDirectDownloadAd.getDirectDownloadToken(), arrayDirectDownloadAd.getDirectDownloadParameters(), directDownloadListener);
                if (v.a()) {
                    this.logger.b(TAG, "Starting Direct Download Activity");
                }
                if (this.appHubVersionCode >= 21) {
                    this.appHubService.showDirectDownloadAppDetailsWithExtra(this.currentDownloadState.adToken, this.currentDownloadState.parameters, this);
                } else {
                    this.appHubService.showDirectDownloadAppDetails(this.currentDownloadState.adToken, this);
                }
                if (v.a()) {
                    this.logger.b(TAG, "Activity started");
                }
            } catch (Throwable th) {
                if (v.a()) {
                    this.logger.b(TAG, "Failed start Direct Download Activity", th);
                }
                this.currentDownloadState = null;
                directDownloadListener.onFailure();
            }
        }
    }
}
