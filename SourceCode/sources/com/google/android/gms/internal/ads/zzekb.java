package com.google.android.gms.internal.ads;

import android.database.sqlite.SQLiteDatabase;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzekb implements zzgen {
    final /* synthetic */ zzfmm zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzekb(zzekc zzekcVar, zzfmm zzfmmVar) {
        this.zza = zzfmmVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgen
    public final void zza(Throwable th) {
        com.google.android.gms.ads.internal.util.zze.zzg("Failed to get offline buffered ping database: ".concat(String.valueOf(th.getMessage())));
    }

    @Override // com.google.android.gms.internal.ads.zzgen
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        try {
            this.zza.zza((SQLiteDatabase) obj);
        } catch (Exception e2) {
            com.google.android.gms.ads.internal.util.zze.zzg("Error executing function on offline buffered ping database: ".concat(String.valueOf(e2.getMessage())));
        }
    }
}
