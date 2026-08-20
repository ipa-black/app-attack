package com.google.android.gms.internal.ads;

import android.content.Context;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzcso implements zzeai {
    private final Long zza;
    private final String zzb;
    private final zzcre zzc;
    private final zzcss zzd;
    private final zzcso zze = this;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzcso(zzcre zzcreVar, zzcss zzcssVar, Long l, String str, zzcsn zzcsnVar) {
        this.zzc = zzcreVar;
        this.zzd = zzcssVar;
        this.zza = l;
        this.zzb = str;
    }

    @Override // com.google.android.gms.internal.ads.zzeai
    public final zzeas zza() {
        Context context;
        zzeal zzc;
        long longValue = this.zza.longValue();
        zzcss zzcssVar = this.zzd;
        context = zzcssVar.zza;
        zzc = zzeam.zzc(zzcssVar.zzb);
        return zzeat.zza(longValue, context, zzc, this.zzc, this.zzb);
    }

    @Override // com.google.android.gms.internal.ads.zzeai
    public final zzeaw zzb() {
        Context context;
        zzeal zzc;
        long longValue = this.zza.longValue();
        zzcss zzcssVar = this.zzd;
        context = zzcssVar.zza;
        zzc = zzeam.zzc(zzcssVar.zzb);
        return zzeax.zza(longValue, context, zzc, this.zzc, this.zzb);
    }
}
