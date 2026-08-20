package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzfff implements zzfln {
    public final zzffz zza;
    public final zzfgb zzb;
    public final com.google.android.gms.ads.internal.client.zzl zzc;
    public final String zzd;
    public final Executor zze;
    public final com.google.android.gms.ads.internal.client.zzw zzf;
    public final zzflc zzg;

    public zzfff(zzffz zzffzVar, zzfgb zzfgbVar, com.google.android.gms.ads.internal.client.zzl zzlVar, String str, Executor executor, com.google.android.gms.ads.internal.client.zzw zzwVar, zzflc zzflcVar) {
        this.zza = zzffzVar;
        this.zzb = zzfgbVar;
        this.zzc = zzlVar;
        this.zzd = str;
        this.zze = executor;
        this.zzf = zzwVar;
        this.zzg = zzflcVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfln
    public final zzflc zza() {
        return this.zzg;
    }

    @Override // com.google.android.gms.internal.ads.zzfln
    public final Executor zzb() {
        return this.zze;
    }
}
