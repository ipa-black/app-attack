package com.google.android.gms.internal.ads;

import android.media.AudioTrack;
import android.os.ConditionVariable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzaub extends Thread {
    final /* synthetic */ AudioTrack zza;
    final /* synthetic */ zzaul zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaub(zzaul zzaulVar, AudioTrack audioTrack) {
        this.zzb = zzaulVar;
        this.zza = audioTrack;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        ConditionVariable conditionVariable;
        try {
            this.zza.flush();
            this.zza.release();
        } finally {
            conditionVariable = this.zzb.zze;
            conditionVariable.open();
        }
    }
}
