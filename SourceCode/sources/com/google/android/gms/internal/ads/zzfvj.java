package com.google.android.gms.internal.ads;

import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzfvj {
    public static zzgfb zza(Task task) {
        final zzfvi zzfviVar = new zzfvi(task);
        task.addOnCompleteListener(zzgfi.zzb(), new OnCompleteListener() { // from class: com.google.android.gms.internal.ads.zzfvh
            @Override // com.google.android.gms.tasks.OnCompleteListener
            public final void onComplete(Task task2) {
                zzfvi zzfviVar2 = zzfvi.this;
                if (task2.isCanceled()) {
                    zzfviVar2.cancel(false);
                } else if (task2.isSuccessful()) {
                    zzfviVar2.zzd(task2.getResult());
                } else {
                    Exception exception = task2.getException();
                    if (exception != null) {
                        zzfviVar2.zze(exception);
                        return;
                    }
                    throw new IllegalStateException();
                }
            }
        });
        return zzfviVar;
    }
}
