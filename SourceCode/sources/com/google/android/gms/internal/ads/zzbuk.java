package com.google.android.gms.internal.ads;

import android.content.Context;
import javax.annotation.ParametersAreNonnullByDefault;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
@ParametersAreNonnullByDefault
/* loaded from: classes4.dex */
public final class zzbuk {
    private final Object zza = new Object();
    private final Object zzb = new Object();
    private zzbut zzc;
    private zzbut zzd;

    private static final Context zzc(Context context) {
        Context applicationContext = context.getApplicationContext();
        return applicationContext == null ? context : applicationContext;
    }

    public final zzbut zza(Context context, zzchu zzchuVar, zzfoy zzfoyVar) {
        zzbut zzbutVar;
        synchronized (this.zza) {
            if (this.zzc == null) {
                this.zzc = new zzbut(zzc(context), zzchuVar, (String) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zza), zzfoyVar);
            }
            zzbutVar = this.zzc;
        }
        return zzbutVar;
    }

    public final zzbut zzb(Context context, zzchu zzchuVar, zzfoy zzfoyVar) {
        zzbut zzbutVar;
        synchronized (this.zzb) {
            if (this.zzd == null) {
                this.zzd = new zzbut(zzc(context), zzchuVar, (String) zzbli.zzb.zze(), zzfoyVar);
            }
            zzbutVar = this.zzd;
        }
        return zzbutVar;
    }
}
