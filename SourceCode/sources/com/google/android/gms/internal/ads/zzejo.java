package com.google.android.gms.internal.ads;

import android.database.sqlite.SQLiteDatabase;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzejo implements zzfnk {
    private final zzejc zza;
    private final zzejg zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzejo(zzejc zzejcVar, zzejg zzejgVar) {
        this.zza = zzejcVar;
        this.zzb = zzejgVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfnk
    public final void zzbH(zzfnd zzfndVar, String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzfnk
    public final void zzbI(zzfnd zzfndVar, String str, Throwable th) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzfE)).booleanValue() && zzfnd.RENDERER == zzfndVar && this.zza.zzc() != 0) {
            this.zza.zzf(com.google.android.gms.ads.internal.zzt.zzB().elapsedRealtime() - this.zza.zzc());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfnk
    public final void zzc(zzfnd zzfndVar, String str) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzfE)).booleanValue()) {
            if (zzfnd.RENDERER == zzfndVar) {
                this.zza.zzg(com.google.android.gms.ads.internal.zzt.zzB().elapsedRealtime());
            } else if (zzfnd.PRELOADED_LOADER == zzfndVar || zzfnd.SERVER_TRANSACTION == zzfndVar) {
                this.zza.zzh(com.google.android.gms.ads.internal.zzt.zzB().elapsedRealtime());
                final zzejg zzejgVar = this.zzb;
                final long zzd = this.zza.zzd();
                zzejgVar.zza.zza(new zzfmm() { // from class: com.google.android.gms.internal.ads.zzejf
                    @Override // com.google.android.gms.internal.ads.zzfmm
                    public final Object zza(Object obj) {
                        zzejg zzejgVar2 = zzejg.this;
                        long j = zzd;
                        SQLiteDatabase sQLiteDatabase = (SQLiteDatabase) obj;
                        if (zzejgVar2.zzf()) {
                            return null;
                        }
                        zzbhe zzg = zzbhf.zzg();
                        zzg.zzh(j);
                        byte[] zzaw = ((zzbhf) zzg.zzak()).zzaw();
                        zzejn.zzg(sQLiteDatabase, false, false);
                        zzejn.zzd(sQLiteDatabase, j, zzaw);
                        return null;
                    }
                });
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfnk
    public final void zzd(zzfnd zzfndVar, String str) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzfE)).booleanValue() && zzfnd.RENDERER == zzfndVar && this.zza.zzc() != 0) {
            this.zza.zzf(com.google.android.gms.ads.internal.zzt.zzB().elapsedRealtime() - this.zza.zzc());
        }
    }
}
