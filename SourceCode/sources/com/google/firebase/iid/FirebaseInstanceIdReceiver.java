package com.google.firebase.iid;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import androidx.legacy.content.WakefulBroadcastReceiver;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import java.util.concurrent.ExecutorService;
/* compiled from: com.google.firebase:firebase-iid@@20.2.3 */
/* loaded from: classes2.dex */
public final class FirebaseInstanceIdReceiver extends WakefulBroadcastReceiver {
    private final ExecutorService processorExecutor = FirebaseIidExecutors.newCachedSingleThreadExecutor();

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        if (intent == null) {
            return;
        }
        onReceiveInternal(context, normalizeIntent(context, intent));
    }

    private static Intent normalizeIntent(Context context, Intent intent) {
        Intent unwrapServiceIntent = ServiceStarter.unwrapServiceIntent(intent);
        if (unwrapServiceIntent != null) {
            intent = unwrapServiceIntent;
        }
        intent.setComponent(null);
        intent.setPackage(context.getPackageName());
        return intent;
    }

    private final void onReceiveInternal(Context context, Intent intent) {
        BroadcastProcessor fcmBroadcastProcessor;
        if ("google.com/iid".equals(intent.getStringExtra("from"))) {
            fcmBroadcastProcessor = new IidBroadcastProcessor(this.processorExecutor);
        } else {
            fcmBroadcastProcessor = new FcmBroadcastProcessor(context, this.processorExecutor);
        }
        final boolean isOrderedBroadcast = isOrderedBroadcast();
        final BroadcastReceiver.PendingResult goAsync = goAsync();
        fcmBroadcastProcessor.process(intent).addOnCompleteListener(this.processorExecutor, new OnCompleteListener(isOrderedBroadcast, goAsync) { // from class: com.google.firebase.iid.FirebaseInstanceIdReceiver$$Lambda$0
            private final boolean arg$1;
            private final BroadcastReceiver.PendingResult arg$2;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.arg$1 = isOrderedBroadcast;
                this.arg$2 = goAsync;
            }

            @Override // com.google.android.gms.tasks.OnCompleteListener
            public final void onComplete(Task task) {
                FirebaseInstanceIdReceiver.lambda$onReceiveInternal$0$FirebaseInstanceIdReceiver(this.arg$1, this.arg$2, task);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ void lambda$onReceiveInternal$0$FirebaseInstanceIdReceiver(boolean z, BroadcastReceiver.PendingResult pendingResult, Task task) {
        if (z) {
            pendingResult.setResultCode(task.isSuccessful() ? ((Integer) task.getResult()).intValue() : 500);
        }
        pendingResult.finish();
    }
}
