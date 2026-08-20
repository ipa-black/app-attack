package com.google.firebase.iid;

import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.firebase:firebase-iid@@20.2.3 */
/* loaded from: classes2.dex */
public final /* synthetic */ class FcmBroadcastProcessor$$Lambda$2 implements Continuation {
    static final Continuation $instance = new FcmBroadcastProcessor$$Lambda$2();

    private FcmBroadcastProcessor$$Lambda$2() {
    }

    @Override // com.google.android.gms.tasks.Continuation
    public final Object then(Task task) {
        return FcmBroadcastProcessor.lambda$bindToMessagingService$3$FcmBroadcastProcessor(task);
    }
}
