package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzawx {
    public zzawl zza;
    public long zzb;
    public long zzc;
    public int zzd;
    public int zze;
    public long[] zzf;
    public int[] zzg;
    public int[] zzh;
    public int[] zzi;
    public long[] zzj;
    public boolean[] zzk;
    public boolean zzl;
    public boolean[] zzm;
    public zzaww zzn;
    public int zzo;
    public zzbar zzp;
    public boolean zzq;
    public long zzr;

    public final void zza(int i) {
        zzbar zzbarVar = this.zzp;
        if (zzbarVar == null || zzbarVar.zzd() < i) {
            this.zzp = new zzbar(i);
        }
        this.zzo = i;
        this.zzl = true;
        this.zzq = true;
    }
}
