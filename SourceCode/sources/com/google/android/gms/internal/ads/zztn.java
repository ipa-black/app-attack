package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zztn implements zzst {
    private final zzew zzc;
    private int zzd;
    private final zztm zze;
    private final zzwm zzf;
    private final zzpf zzg;

    public zztn(zzew zzewVar, zztm zztmVar, byte[] bArr) {
        zzpf zzpfVar = new zzpf();
        zzwm zzwmVar = new zzwm(-1);
        this.zzc = zzewVar;
        this.zze = zztmVar;
        this.zzg = zzpfVar;
        this.zzf = zzwmVar;
        this.zzd = 1048576;
    }

    public final zztn zza(int i) {
        this.zzd = i;
        return this;
    }

    public final zztp zzb(zzbg zzbgVar) {
        zzbgVar.zzd.getClass();
        return new zztp(zzbgVar, this.zzc, this.zze, zzpo.zza, this.zzf, this.zzd, null, null);
    }
}
