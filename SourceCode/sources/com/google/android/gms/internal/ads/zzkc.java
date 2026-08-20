package com.google.android.gms.internal.ads;

import android.content.Context;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
@Deprecated
/* loaded from: classes4.dex */
public final class zzkc {
    private final zzhk zza;

    @Deprecated
    public zzkc(Context context, zzcmx zzcmxVar, byte[] bArr) {
        this.zza = new zzhk(context, zzcmxVar, null);
    }

    @Deprecated
    public final zzkc zza(final zzjf zzjfVar) {
        zzhk zzhkVar = this.zza;
        zzdd.zzf(!zzhkVar.zzq);
        zzjfVar.getClass();
        zzhkVar.zzf = new zzfyu() { // from class: com.google.android.gms.internal.ads.zzhc
            @Override // com.google.android.gms.internal.ads.zzfyu
            public final Object zza() {
                return zzjf.this;
            }
        };
        return this;
    }

    @Deprecated
    public final zzkc zzb(final zzvz zzvzVar) {
        zzhk zzhkVar = this.zza;
        zzdd.zzf(!zzhkVar.zzq);
        zzvzVar.getClass();
        zzhkVar.zze = new zzfyu() { // from class: com.google.android.gms.internal.ads.zzhd
            @Override // com.google.android.gms.internal.ads.zzfyu
            public final Object zza() {
                return zzvz.this;
            }
        };
        return this;
    }

    @Deprecated
    public final zzkd zzc() {
        zzhk zzhkVar = this.zza;
        zzdd.zzf(!zzhkVar.zzq);
        zzhkVar.zzq = true;
        return new zzkd(zzhkVar);
    }
}
