package com.appsgeyser.sdk.utils.RateApp;

import android.app.Activity;
import android.content.Context;
import android.util.Log;
import com.appsgeyser.sdk.AppsgeyserSDK;
import com.appsgeyser.sdk.server.StatController;
import com.appsgeyser.sdk.utils.RateApp.SharedPrefsCounter;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.android.play.core.review.ReviewInfo;
import com.google.android.play.core.review.ReviewManager;
import com.google.android.play.core.review.ReviewManagerFactory;
/* loaded from: classes2.dex */
public class RateAppManager {
    private static RateAppManager instance;
    private Activity currentActivity;
    private final SharedPrefsCounter sharedPrefs;
    private final String LOG_TAG = "RateAppManager";
    private boolean isPause = true;

    private RateAppManager(Context context) {
        this.sharedPrefs = new SharedPrefsCounter(context, new SharedPrefsCounter.OnEntriesListener() { // from class: com.appsgeyser.sdk.utils.RateApp.RateAppManager$$ExternalSyntheticLambda1
            @Override // com.appsgeyser.sdk.utils.RateApp.SharedPrefsCounter.OnEntriesListener
            public final void onComplete() {
                RateAppManager.this.launchRateMyAppProcess();
            }
        });
    }

    public static RateAppManager getInstance(Context context) {
        if (instance == null) {
            instance = new RateAppManager(context);
        }
        return instance;
    }

    public void setCurrentActivity(Activity activity) {
        Log.d("RateAppManager", "setCurrentActivity()");
        this.currentActivity = activity;
        this.isPause = false;
        this.sharedPrefs.checkNeedToShow();
    }

    public void increaseEntries() {
        this.sharedPrefs.increaseEntries();
    }

    public void setPause() {
        Log.d("RateAppManager", "setPause()");
        this.isPause = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void launchRateMyAppProcess() {
        Log.d("RateAppManager", "Start launchRateMyAppProcess method, currentActivity == null => " + (this.currentActivity == null));
        Activity activity = this.currentActivity;
        if (activity == null || this.isPause) {
            return;
        }
        AppsgeyserSDK.isRateMyAppEnabled(activity, new AppsgeyserSDK.OnRateMyAppEnableListener() { // from class: com.appsgeyser.sdk.utils.RateApp.RateAppManager$$ExternalSyntheticLambda0
            @Override // com.appsgeyser.sdk.AppsgeyserSDK.OnRateMyAppEnableListener
            public final void onRateMyAppEnableReceived(boolean z) {
                RateAppManager.this.m252x7a29f943(z);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$launchRateMyAppProcess$0$com-appsgeyser-sdk-utils-RateApp-RateAppManager  reason: not valid java name */
    public /* synthetic */ void m252x7a29f943(boolean z) {
        Log.d("RateAppManager", "isRateMyAppIsEnable = " + z);
        if (z) {
            rateApp(this.currentActivity);
        }
    }

    private void rateApp(final Activity activity) {
        Log.d("RateAppManager", "Start rateApp() method");
        final ReviewManager create = ReviewManagerFactory.create(activity);
        create.requestReviewFlow().addOnCompleteListener(new OnCompleteListener() { // from class: com.appsgeyser.sdk.utils.RateApp.RateAppManager$$ExternalSyntheticLambda3
            @Override // com.google.android.gms.tasks.OnCompleteListener
            public final void onComplete(Task task) {
                RateAppManager.this.m254lambda$rateApp$2$comappsgeysersdkutilsRateAppRateAppManager(create, activity, task);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$rateApp$2$com-appsgeyser-sdk-utils-RateApp-RateAppManager  reason: not valid java name */
    public /* synthetic */ void m254lambda$rateApp$2$comappsgeysersdkutilsRateAppRateAppManager(ReviewManager reviewManager, Activity activity, Task task) {
        if (task.isSuccessful()) {
            Log.d("RateAppManager", "Success get rate app task");
            reviewManager.launchReviewFlow(activity, (ReviewInfo) task.getResult()).addOnCompleteListener(new OnCompleteListener() { // from class: com.appsgeyser.sdk.utils.RateApp.RateAppManager$$ExternalSyntheticLambda2
                @Override // com.google.android.gms.tasks.OnCompleteListener
                public final void onComplete(Task task2) {
                    RateAppManager.this.m253lambda$rateApp$1$comappsgeysersdkutilsRateAppRateAppManager(task2);
                }
            });
            this.sharedPrefs.setShownFlag(true);
            return;
        }
        Log.e("RateAppManager", "Error while reviewManager requesting: ", task.getException());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$rateApp$1$com-appsgeyser-sdk-utils-RateApp-RateAppManager  reason: not valid java name */
    public /* synthetic */ void m253lambda$rateApp$1$comappsgeysersdkutilsRateAppRateAppManager(Task task) {
        sendAnalyticsEvent();
        Log.d("RateAppManager", "App evaluation process is completed");
    }

    private void sendAnalyticsEvent() {
        StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_RMA_IMPRESSIONS);
    }
}
