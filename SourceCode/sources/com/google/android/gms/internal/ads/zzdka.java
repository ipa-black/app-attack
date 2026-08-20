package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
import java.util.Set;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzdka {
    private final Set zza;
    private final Set zzb;
    private final Set zzc;
    private final Set zzd;
    private final Set zze;
    private final Set zzf;
    private final Set zzg;
    private final Set zzh;
    private final Set zzi;
    private final Set zzj;
    private final Set zzk;
    private final Set zzl;
    private final Set zzm;
    private final Set zzn;
    private final zzffx zzo;
    private zzdep zzp;
    private zzeoj zzq;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzdka(zzdjy zzdjyVar, zzdjz zzdjzVar) {
        this.zza = zzdjy.zzp(zzdjyVar);
        this.zzb = zzdjy.zzC(zzdjyVar);
        this.zzd = zzdjy.zzs(zzdjyVar);
        this.zze = zzdjy.zzx(zzdjyVar);
        this.zzc = zzdjy.zzt(zzdjyVar);
        this.zzf = zzdjy.zzu(zzdjyVar);
        this.zzg = zzdjy.zzv(zzdjyVar);
        this.zzh = zzdjy.zzq(zzdjyVar);
        this.zzi = zzdjy.zzr(zzdjyVar);
        this.zzj = zzdjy.zzw(zzdjyVar);
        this.zzk = zzdjy.zzB(zzdjyVar);
        this.zzl = zzdjy.zzz(zzdjyVar);
        this.zzo = zzdjy.zzo(zzdjyVar);
        this.zzm = zzdjy.zzy(zzdjyVar);
        this.zzn = zzdjy.zzA(zzdjyVar);
    }

    public final zzdep zza(Set set) {
        if (this.zzp == null) {
            this.zzp = new zzdep(set);
        }
        return this.zzp;
    }

    public final zzeoj zzb(Clock clock, zzeok zzeokVar, zzekv zzekvVar, zzfpo zzfpoVar) {
        if (this.zzq == null) {
            this.zzq = new zzeoj(clock, zzeokVar, zzekvVar, zzfpoVar);
        }
        return this.zzq;
    }

    public final zzffx zzc() {
        return this.zzo;
    }

    public final Set zzd() {
        return this.zzm;
    }

    public final Set zze() {
        return this.zza;
    }

    public final Set zzf() {
        return this.zzh;
    }

    public final Set zzg() {
        return this.zzi;
    }

    public final Set zzh() {
        return this.zzd;
    }

    public final Set zzi() {
        return this.zzc;
    }

    public final Set zzj() {
        return this.zzf;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Set zzk() {
        return this.zzg;
    }

    public final Set zzl() {
        return this.zzj;
    }

    public final Set zzm() {
        return this.zze;
    }

    public final Set zzn() {
        return this.zzl;
    }

    public final Set zzo() {
        return this.zzn;
    }

    public final Set zzp() {
        return this.zzk;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Set zzq() {
        return this.zzb;
    }
}
