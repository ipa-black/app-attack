package com.google.android.gms.internal.ads;

import java.util.ArrayDeque;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzflk implements zzgen {
    final /* synthetic */ zzfln zza;
    final /* synthetic */ zzflo zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzflk(zzflo zzfloVar, zzfln zzflnVar) {
        this.zzb = zzfloVar;
        this.zza = zzflnVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgen
    public final void zza(Throwable th) {
        synchronized (this.zzb) {
            this.zzb.zze = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgen
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        ArrayDeque arrayDeque;
        int i;
        Void r4 = (Void) obj;
        synchronized (this.zzb) {
            this.zzb.zze = null;
            arrayDeque = this.zzb.zzd;
            arrayDeque.addFirst(this.zza);
            zzflo zzfloVar = this.zzb;
            i = zzfloVar.zzf;
            if (i == 1) {
                zzfloVar.zzh();
            }
        }
    }
}
