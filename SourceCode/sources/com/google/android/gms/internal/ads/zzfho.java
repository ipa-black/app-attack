package com.google.android.gms.internal.ads;

import java.util.concurrent.atomic.AtomicReference;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzfho extends zzfrt implements zzdgb, zzdeq, zzden, zzdfd, zzdgy, zzffx, zzdmc {
    private final zzfko zza;
    private final AtomicReference zzb = new AtomicReference();
    private final AtomicReference zzc = new AtomicReference();
    private final AtomicReference zzd = new AtomicReference();
    private final AtomicReference zze = new AtomicReference();
    private final AtomicReference zzf = new AtomicReference();
    private final AtomicReference zzg = new AtomicReference();
    private final AtomicReference zzh = new AtomicReference();

    public zzfho(zzfko zzfkoVar) {
        this.zza = zzfkoVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdeq
    public final void zza(final com.google.android.gms.ads.internal.client.zze zzeVar) {
        final int i = zzeVar.zza;
        zzffo.zza(this.zzc, new zzffn() { // from class: com.google.android.gms.internal.ads.zzfgu
            @Override // com.google.android.gms.internal.ads.zzffn
            public final void zza(Object obj) {
                ((zzcdr) obj).zzf(com.google.android.gms.ads.internal.client.zze.this);
            }
        });
        zzffo.zza(this.zzc, new zzffn() { // from class: com.google.android.gms.internal.ads.zzfgv
            @Override // com.google.android.gms.internal.ads.zzffn
            public final void zza(Object obj) {
                ((zzcdr) obj).zze(i);
            }
        });
        zzffo.zza(this.zze, new zzffn() { // from class: com.google.android.gms.internal.ads.zzfgw
            @Override // com.google.android.gms.internal.ads.zzffn
            public final void zza(Object obj) {
                ((zzccx) obj).zzg(i);
            }
        });
    }

    public final void zzb(zzfrt zzfrtVar) {
        this.zzb.set(zzfrtVar);
    }

    @Override // com.google.android.gms.internal.ads.zzffx
    public final void zzbN(zzffx zzffxVar) {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzden
    public final void zzbw() {
        zzffo.zza(this.zze, new zzffn() { // from class: com.google.android.gms.internal.ads.zzfgz
            @Override // com.google.android.gms.internal.ads.zzffn
            public final void zza(Object obj) {
                ((zzccx) obj).zzk();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzden
    public final void zzbx() {
        zzffo.zza(this.zze, new zzffn() { // from class: com.google.android.gms.internal.ads.zzfhd
            @Override // com.google.android.gms.internal.ads.zzffn
            public final void zza(Object obj) {
                ((zzccx) obj).zzl();
            }
        });
    }

    public final void zzc(com.google.android.gms.ads.internal.client.zzdg zzdgVar) {
        this.zzh.set(zzdgVar);
    }

    public final void zzd(zzcdn zzcdnVar) {
        this.zzd.set(zzcdnVar);
    }

    public final void zze(zzcdr zzcdrVar) {
        this.zzc.set(zzcdrVar);
    }

    @Deprecated
    public final void zzf(zzccx zzccxVar) {
        this.zze.set(zzccxVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdgy
    public final void zzg(final com.google.android.gms.ads.internal.client.zzs zzsVar) {
        zzffo.zza(this.zzh, new zzffn() { // from class: com.google.android.gms.internal.ads.zzfgt
            @Override // com.google.android.gms.internal.ads.zzffn
            public final void zza(Object obj) {
                ((com.google.android.gms.ads.internal.client.zzdg) obj).zze(com.google.android.gms.ads.internal.client.zzs.this);
            }
        });
    }

    @Deprecated
    public final void zzh(zzccs zzccsVar) {
        this.zzg.set(zzccsVar);
    }

    public final void zzi(zzcds zzcdsVar) {
        this.zzf.set(zzcdsVar);
    }

    @Override // com.google.android.gms.internal.ads.zzden
    public final void zzj() {
        this.zza.zza();
        zzffo.zza(this.zzd, new zzffn() { // from class: com.google.android.gms.internal.ads.zzfha
            @Override // com.google.android.gms.internal.ads.zzffn
            public final void zza(Object obj) {
                ((zzcdn) obj).zzg();
            }
        });
        zzffo.zza(this.zze, new zzffn() { // from class: com.google.android.gms.internal.ads.zzfhb
            @Override // com.google.android.gms.internal.ads.zzffn
            public final void zza(Object obj) {
                ((zzccx) obj).zzf();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzdfd
    public final void zzk(final com.google.android.gms.ads.internal.client.zze zzeVar) {
        zzffo.zza(this.zzd, new zzffn() { // from class: com.google.android.gms.internal.ads.zzfgx
            @Override // com.google.android.gms.internal.ads.zzffn
            public final void zza(Object obj) {
                ((zzcdn) obj).zzi(com.google.android.gms.ads.internal.client.zze.this);
            }
        });
        zzffo.zza(this.zzd, new zzffn() { // from class: com.google.android.gms.internal.ads.zzfgy
            @Override // com.google.android.gms.internal.ads.zzffn
            public final void zza(Object obj) {
                ((zzcdn) obj).zzh(com.google.android.gms.ads.internal.client.zze.this.zza);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzden
    public final void zzm() {
        zzffo.zza(this.zze, new zzffn() { // from class: com.google.android.gms.internal.ads.zzfhj
            @Override // com.google.android.gms.internal.ads.zzffn
            public final void zza(Object obj) {
                ((zzccx) obj).zzh();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzdgb
    public final void zzn() {
        zzffo.zza(this.zzc, new zzffn() { // from class: com.google.android.gms.internal.ads.zzfhg
            @Override // com.google.android.gms.internal.ads.zzffn
            public final void zza(Object obj) {
                ((zzcdr) obj).zzg();
            }
        });
        zzffo.zza(this.zze, new zzffn() { // from class: com.google.android.gms.internal.ads.zzfhh
            @Override // com.google.android.gms.internal.ads.zzffn
            public final void zza(Object obj) {
                ((zzccx) obj).zzi();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzden
    public final void zzo() {
        zzffo.zza(this.zzd, new zzffn() { // from class: com.google.android.gms.internal.ads.zzfhc
            @Override // com.google.android.gms.internal.ads.zzffn
            public final void zza(Object obj) {
                ((zzcdn) obj).zzj();
            }
        });
        zzffo.zza(this.zze, new zzffn() { // from class: com.google.android.gms.internal.ads.zzfhe
            @Override // com.google.android.gms.internal.ads.zzffn
            public final void zza(Object obj) {
                ((zzccx) obj).zzj();
            }
        });
        zzffo.zza(this.zzd, new zzffn() { // from class: com.google.android.gms.internal.ads.zzfhf
            @Override // com.google.android.gms.internal.ads.zzffn
            public final void zza(Object obj) {
                ((zzcdn) obj).zzf();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzden
    public final void zzp(final zzccr zzccrVar, final String str, final String str2) {
        zzffo.zza(this.zzd, new zzffn() { // from class: com.google.android.gms.internal.ads.zzfhk
            @Override // com.google.android.gms.internal.ads.zzffn
            public final void zza(Object obj) {
                zzccr zzccrVar2 = zzccr.this;
                ((zzcdn) obj).zzk(new zzceb(zzccrVar2.zzc(), zzccrVar2.zzb()));
            }
        });
        zzffo.zza(this.zzf, new zzffn() { // from class: com.google.android.gms.internal.ads.zzfhl
            @Override // com.google.android.gms.internal.ads.zzffn
            public final void zza(Object obj) {
                zzccr zzccrVar2 = zzccr.this;
                ((zzcds) obj).zze(new zzceb(zzccrVar2.zzc(), zzccrVar2.zzb()), str, str2);
            }
        });
        zzffo.zza(this.zze, new zzffn() { // from class: com.google.android.gms.internal.ads.zzfhm
            @Override // com.google.android.gms.internal.ads.zzffn
            public final void zza(Object obj) {
                ((zzccx) obj).zze(zzccr.this);
            }
        });
        zzffo.zza(this.zzg, new zzffn() { // from class: com.google.android.gms.internal.ads.zzfhn
            @Override // com.google.android.gms.internal.ads.zzffn
            public final void zza(Object obj) {
                ((zzccs) obj).zze(zzccr.this, str, str2);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzdmc
    public final void zzq() {
        zzffo.zza(this.zzd, new zzffn() { // from class: com.google.android.gms.internal.ads.zzfgs
            @Override // com.google.android.gms.internal.ads.zzffn
            public final void zza(Object obj) {
                ((zzcdn) obj).zze();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzdmc
    public final void zzr() {
    }

    @Override // com.google.android.gms.internal.ads.zzfrt
    public final void zzv() {
        zzffo.zza(this.zzb, new zzffn() { // from class: com.google.android.gms.internal.ads.zzfhi
            @Override // com.google.android.gms.internal.ads.zzffn
            public final void zza(Object obj) {
                ((zzfrt) obj).zzv();
            }
        });
    }
}
