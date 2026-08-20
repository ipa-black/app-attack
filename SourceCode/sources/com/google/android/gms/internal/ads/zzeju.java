package com.google.android.gms.internal.ads;

import android.content.ContentValues;
import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.os.Build;
import java.util.ArrayList;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzeju {
    private final zzbew zza;
    private final Context zzb;
    private final zzeiy zzc;
    private final zzchu zzd;
    private final String zze;
    private final zzfnt zzf;
    private final com.google.android.gms.ads.internal.util.zzg zzg = com.google.android.gms.ads.internal.zzt.zzo().zzh();

    public zzeju(Context context, zzchu zzchuVar, zzbew zzbewVar, zzeiy zzeiyVar, String str, zzfnt zzfntVar) {
        this.zzb = context;
        this.zzd = zzchuVar;
        this.zza = zzbewVar;
        this.zzc = zzeiyVar;
        this.zze = str;
        this.zzf = zzfntVar;
    }

    private static final void zzc(SQLiteDatabase sQLiteDatabase, ArrayList arrayList) {
        int size = arrayList.size();
        long j = 0;
        for (int i = 0; i < size; i++) {
            zzbhf zzbhfVar = (zzbhf) arrayList.get(i);
            if (zzbhfVar.zzw() == 2 && zzbhfVar.zze() > j) {
                j = zzbhfVar.zze();
            }
        }
        if (j != 0) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("value", Long.valueOf(j));
            sQLiteDatabase.update("offline_signal_statistics", contentValues, "statistic_name = 'last_successful_request_time'", null);
        }
    }

    public final void zzb(final boolean z) {
        try {
            this.zzc.zza(new zzfmm() { // from class: com.google.android.gms.internal.ads.zzejq
                @Override // com.google.android.gms.internal.ads.zzfmm
                public final Object zza(Object obj) {
                    zzeju.this.zza(z, (SQLiteDatabase) obj);
                    return null;
                }
            });
        } catch (Exception e2) {
            com.google.android.gms.ads.internal.util.zze.zzg("Error in offline signals database startup: ".concat(String.valueOf(e2.getMessage())));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ Void zza(boolean z, SQLiteDatabase sQLiteDatabase) throws Exception {
        if (!z) {
            if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzhK)).booleanValue()) {
                ArrayList zzc = zzejn.zzc(sQLiteDatabase);
                zzbhg zza = zzbhk.zza();
                zza.zzb(this.zzb.getPackageName());
                zza.zzd(Build.MODEL);
                zza.zze(zzejn.zza(sQLiteDatabase, 0));
                zza.zza(zzc);
                zza.zzg(zzejn.zza(sQLiteDatabase, 1));
                zza.zzc(zzejn.zza(sQLiteDatabase, 3));
                zza.zzh(com.google.android.gms.ads.internal.zzt.zzB().currentTimeMillis());
                zza.zzf(zzejn.zzb(sQLiteDatabase, 2));
                final zzbhk zzbhkVar = (zzbhk) zza.zzak();
                zzc(sQLiteDatabase, zzc);
                this.zza.zzb(new zzbev() { // from class: com.google.android.gms.internal.ads.zzejr
                    @Override // com.google.android.gms.internal.ads.zzbev
                    public final void zza(zzbgl zzbglVar) {
                        zzbglVar.zzi(zzbhk.this);
                    }
                });
                zzbhv zza2 = zzbhw.zza();
                zza2.zza(this.zzd.zzb);
                zza2.zzc(this.zzd.zzc);
                zza2.zzb(true == this.zzd.zzd ? 0 : 2);
                final zzbhw zzbhwVar = (zzbhw) zza2.zzak();
                this.zza.zzb(new zzbev() { // from class: com.google.android.gms.internal.ads.zzejs
                    @Override // com.google.android.gms.internal.ads.zzbev
                    public final void zza(zzbgl zzbglVar) {
                        zzbhw zzbhwVar2 = zzbhw.this;
                        zzbgd zzbgdVar = (zzbgd) zzbglVar.zzb().zzaA();
                        zzbgdVar.zzb(zzbhwVar2);
                        zzbglVar.zzg(zzbgdVar);
                    }
                });
                this.zza.zzc(10004);
            } else {
                zzfns zzb = zzfns.zzb("oa_upload");
                zzb.zza("oa_failed_reqs", String.valueOf(zzejn.zza(sQLiteDatabase, 0)));
                zzb.zza("oa_total_reqs", String.valueOf(zzejn.zza(sQLiteDatabase, 1)));
                zzb.zza("oa_upload_time", String.valueOf(com.google.android.gms.ads.internal.zzt.zzB().currentTimeMillis()));
                zzb.zza("oa_last_successful_time", String.valueOf(zzejn.zzb(sQLiteDatabase, 2)));
                zzb.zza("oa_session_id", this.zzg.zzP() ? "" : this.zze);
                this.zzf.zzb(zzb);
                ArrayList zzc2 = zzejn.zzc(sQLiteDatabase);
                zzc(sQLiteDatabase, zzc2);
                int size = zzc2.size();
                for (int i = 0; i < size; i++) {
                    zzbhf zzbhfVar = (zzbhf) zzc2.get(i);
                    zzfns zzb2 = zzfns.zzb("oa_signals");
                    zzb2.zza("oa_session_id", this.zzg.zzP() ? "" : this.zze);
                    zzbha zzf = zzbhfVar.zzf();
                    String valueOf = zzf.zzf() ? String.valueOf(zzf.zzh() - 1) : "-1";
                    String obj = zzgbi.zzb(zzbhfVar.zzk(), new zzfxt() { // from class: com.google.android.gms.internal.ads.zzejt
                        @Override // com.google.android.gms.internal.ads.zzfxt
                        public final Object apply(Object obj2) {
                            return ((zzbfu) obj2).name();
                        }
                    }).toString();
                    zzb2.zza("oa_sig_ts", String.valueOf(zzbhfVar.zze()));
                    zzb2.zza("oa_sig_status", String.valueOf(zzbhfVar.zzw() - 1));
                    zzb2.zza("oa_sig_resp_lat", String.valueOf(zzbhfVar.zzd()));
                    zzb2.zza("oa_sig_render_lat", String.valueOf(zzbhfVar.zzc()));
                    zzb2.zza("oa_sig_formats", obj);
                    zzb2.zza("oa_sig_nw_type", valueOf);
                    zzb2.zza("oa_sig_wifi", String.valueOf(zzbhfVar.zzx() - 1));
                    zzb2.zza("oa_sig_airplane", String.valueOf(zzbhfVar.zzt() - 1));
                    zzb2.zza("oa_sig_data", String.valueOf(zzbhfVar.zzu() - 1));
                    zzb2.zza("oa_sig_nw_resp", String.valueOf(zzbhfVar.zza()));
                    zzb2.zza("oa_sig_offline", String.valueOf(zzbhfVar.zzv() - 1));
                    zzb2.zza("oa_sig_nw_state", String.valueOf(zzbhfVar.zzj().zza()));
                    if (zzf.zze() && zzf.zzf() && zzf.zzh() == 2) {
                        zzb2.zza("oa_sig_cell_type", String.valueOf(zzf.zzg() - 1));
                    }
                    this.zzf.zzb(zzb2);
                }
            }
            zzejn.zzf(sQLiteDatabase);
            return null;
        }
        this.zzb.deleteDatabase("OfflineUpload.db");
        return null;
    }
}
