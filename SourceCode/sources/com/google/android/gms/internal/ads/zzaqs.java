package com.google.android.gms.internal.ads;

import android.app.AppOpsManager;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzaqs implements AppOpsManager.OnOpActiveChangedListener {
    final /* synthetic */ zzaqt zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaqs(zzaqt zzaqtVar) {
        this.zza = zzaqtVar;
    }

    @Override // android.app.AppOpsManager.OnOpActiveChangedListener
    public final void onOpActiveChanged(String str, int i, String str2, boolean z) {
        long j;
        long j2;
        long j3;
        if (z) {
            this.zza.zzb = System.currentTimeMillis();
            this.zza.zze = true;
            return;
        }
        long currentTimeMillis = System.currentTimeMillis();
        zzaqt zzaqtVar = this.zza;
        j = zzaqtVar.zzc;
        if (j > 0) {
            j2 = zzaqtVar.zzc;
            if (currentTimeMillis >= j2) {
                j3 = zzaqtVar.zzc;
                zzaqtVar.zzd = currentTimeMillis - j3;
            }
        }
        this.zza.zze = false;
    }
}
