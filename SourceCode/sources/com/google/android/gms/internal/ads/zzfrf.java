package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzfrf implements Runnable {
    final /* synthetic */ zzfrk zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfrf(zzfrk zzfrkVar) {
        this.zza = zzfrkVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzfre zzfreVar;
        zzfreVar = this.zza.zzl;
        zzfreVar.zzb();
    }
}
