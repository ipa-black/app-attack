package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Looper;
import com.google.android.exoplayer2.ExoPlayer;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzhk {
    final Context zza;
    zzde zzb;
    zzfyu zzc;
    zzfyu zzd;
    zzfyu zze;
    zzfyu zzf;
    zzfyu zzg;
    zzfxt zzh;
    Looper zzi;
    zzk zzj;
    int zzk;
    boolean zzl;
    zzkb zzm;
    long zzn;
    long zzo;
    boolean zzp;
    boolean zzq;
    zzgv zzr;

    public static /* synthetic */ zzsg zza(Context context) {
        return new zzru(context, new zzze());
    }

    public zzhk(final Context context, zzcmx zzcmxVar, byte[] bArr) {
        zzhe zzheVar = new zzhe(zzcmxVar, null);
        zzhf zzhfVar = new zzhf(context);
        zzfyu zzfyuVar = new zzfyu() { // from class: com.google.android.gms.internal.ads.zzhg
            @Override // com.google.android.gms.internal.ads.zzfyu
            public final Object zza() {
                return new zzvr(context);
            }
        };
        zzhh zzhhVar = new zzfyu() { // from class: com.google.android.gms.internal.ads.zzhh
            @Override // com.google.android.gms.internal.ads.zzfyu
            public final Object zza() {
                return new zzgw();
            }
        };
        zzhi zzhiVar = new zzhi(context);
        zzhj zzhjVar = new zzfxt() { // from class: com.google.android.gms.internal.ads.zzhj
            @Override // com.google.android.gms.internal.ads.zzfxt
            public final Object apply(Object obj) {
                return new zzmq((zzde) obj);
            }
        };
        context.getClass();
        this.zza = context;
        this.zzc = zzheVar;
        this.zzd = zzhfVar;
        this.zze = zzfyuVar;
        this.zzf = zzhhVar;
        this.zzg = zzhiVar;
        this.zzh = zzhjVar;
        this.zzi = zzen.zzE();
        this.zzj = zzk.zza;
        this.zzk = 1;
        this.zzl = true;
        this.zzm = zzkb.zze;
        this.zzr = new zzgv(0.97f, 1.03f, 1000L, 1.0E-7f, zzen.zzv(20L), zzen.zzv(500L), 0.999f, null);
        this.zzb = zzde.zza;
        this.zzn = 500L;
        this.zzo = ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS;
        this.zzp = true;
    }
}
