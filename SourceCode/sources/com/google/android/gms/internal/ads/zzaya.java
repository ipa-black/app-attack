package com.google.android.gms.internal.ads;

import android.util.SparseArray;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzaya implements Runnable {
    final /* synthetic */ zzayd zza;
    final /* synthetic */ zzayf zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaya(zzayf zzayfVar, zzayd zzaydVar) {
        this.zzb = zzayfVar;
        this.zza = zzaydVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        SparseArray sparseArray;
        SparseArray sparseArray2;
        this.zza.zza();
        sparseArray = this.zzb.zzn;
        int size = sparseArray.size();
        for (int i = 0; i < size; i++) {
            sparseArray2 = this.zzb.zzn;
            ((zzayu) sparseArray2.valueAt(i)).zzi();
        }
    }
}
