package com.google.firebase.iid;

import android.content.Intent;
import android.util.Log;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
/* compiled from: com.google.firebase:firebase-iid@@20.2.3 */
/* loaded from: classes2.dex */
class IidBroadcastProcessor implements BroadcastProcessor {
    private final ExecutorService executor;

    /* JADX INFO: Access modifiers changed from: package-private */
    public IidBroadcastProcessor(ExecutorService executorService) {
        this.executor = executorService;
    }

    @Override // com.google.firebase.iid.BroadcastProcessor
    public Task<Integer> process(final Intent intent) {
        return Tasks.call(this.executor, new Callable(intent) { // from class: com.google.firebase.iid.IidBroadcastProcessor$$Lambda$0
            private final Intent arg$1;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.arg$1 = intent;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                Integer valueOf;
                valueOf = Integer.valueOf(IidBroadcastProcessor.processImpl(this.arg$1));
                return valueOf;
            }
        });
    }

    private static int processImpl(Intent intent) {
        String stringExtra = intent.getStringExtra("CMD");
        if (stringExtra != null) {
            if (Log.isLoggable("FirebaseInstanceId", 3)) {
                String valueOf = String.valueOf(intent.getExtras());
                Log.d("FirebaseInstanceId", new StringBuilder(String.valueOf(stringExtra).length() + 21 + String.valueOf(valueOf).length()).append("Received command: ").append(stringExtra).append(" - ").append(valueOf).toString());
            }
            if ("RST".equals(stringExtra) || "RST_FULL".equals(stringExtra)) {
                FirebaseInstanceId.getInstance().resetStorageAndScheduleSync();
                return -1;
            } else if ("SYNC".equals(stringExtra)) {
                FirebaseInstanceId.getInstance().forceTokenRefresh();
                return -1;
            } else {
                return -1;
            }
        }
        return -1;
    }
}
