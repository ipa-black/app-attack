package com.amazon.aps.shared.util;

import android.util.Log;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
/* loaded from: classes.dex */
public class ApsAsyncUtil {
    private static ApsAsyncUtil INSTANCE = null;
    private static final String TAG = "ApsAsyncUtil";
    private final ExecutorService executorService = Executors.newFixedThreadPool(1);
    private boolean shutdownInProgress = false;

    /* loaded from: classes.dex */
    public interface ApsExecutionListener {
        void onExecutionCompleted(ApsResult apsResult);
    }

    private ApsAsyncUtil() {
        Runtime.getRuntime().addShutdownHook(new Thread() { // from class: com.amazon.aps.shared.util.ApsAsyncUtil.1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                try {
                    ApsAsyncUtil.this.shutdownInProgress = true;
                    Log.d(ApsAsyncUtil.TAG, "App is shutting down, terminating the thread executor");
                    ApsAsyncUtil.this.executorService.shutdown();
                } catch (RuntimeException e2) {
                    Log.e(ApsAsyncUtil.TAG, "Error in stopping the executor", e2);
                }
            }
        });
    }

    public static ApsAsyncUtil getInstance() {
        if (INSTANCE == null) {
            INSTANCE = new ApsAsyncUtil();
        }
        return INSTANCE;
    }

    public synchronized void runAsyncAndCallback(final Runnable runnable, final ApsExecutionListener apsExecutionListener) {
        APSSharedUtil.checkNullAndThrowException(runnable);
        try {
            if (!this.shutdownInProgress) {
                this.executorService.execute(new Runnable() { // from class: com.amazon.aps.shared.util.ApsAsyncUtil$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        ApsAsyncUtil.lambda$runAsyncAndCallback$0(runnable, apsExecutionListener);
                    }
                });
            }
        } catch (RuntimeException e2) {
            Log.e(TAG, "Error running the thread", e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$runAsyncAndCallback$0(Runnable runnable, ApsExecutionListener apsExecutionListener) {
        ApsResult apsResult = ApsResult.FAILURE;
        try {
            try {
                runnable.run();
                ApsResult apsResult2 = ApsResult.SUCCESS;
                if (apsExecutionListener != null) {
                    apsExecutionListener.onExecutionCompleted(apsResult2);
                }
            } catch (Exception e2) {
                Log.e(TAG, "Error running the thread", e2);
                if (apsExecutionListener != null) {
                    apsExecutionListener.onExecutionCompleted(apsResult);
                }
            }
        } catch (Throwable th) {
            if (apsExecutionListener != null) {
                apsExecutionListener.onExecutionCompleted(apsResult);
            }
            throw th;
        }
    }
}
