package com.google.android.gms.internal.ads;

import android.util.Pair;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzesb implements zzdhi, zzdgb, zzdeq, zzdfh, com.google.android.gms.ads.internal.client.zza, zzden, zzdgy, zzasm, zzdfd, zzdmc {
    private final zzfnt zzj;
    private final AtomicReference zzb = new AtomicReference();
    private final AtomicReference zzc = new AtomicReference();
    private final AtomicReference zzd = new AtomicReference();
    private final AtomicReference zze = new AtomicReference();
    private final AtomicReference zzf = new AtomicReference();
    private final AtomicBoolean zzg = new AtomicBoolean(true);
    private final AtomicBoolean zzh = new AtomicBoolean(false);
    private final AtomicBoolean zzi = new AtomicBoolean(false);
    final BlockingQueue zza = new ArrayBlockingQueue(((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzhU)).intValue());

    public zzesb(zzfnt zzfntVar) {
        this.zzj = zzfntVar;
    }

    private final void zzt() {
        if (this.zzh.get() && this.zzi.get()) {
            for (final Pair pair : this.zza) {
                zzffo.zza(this.zzc, new zzffn() { // from class: com.google.android.gms.internal.ads.zzers
                    @Override // com.google.android.gms.internal.ads.zzffn
                    public final void zza(Object obj) {
                        Pair pair2 = pair;
                        ((com.google.android.gms.ads.internal.client.zzcb) obj).zzc((String) pair2.first, (String) pair2.second);
                    }
                });
            }
            this.zza.clear();
            this.zzg.set(false);
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zza
    public final void onAdClicked() {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zziW)).booleanValue()) {
            return;
        }
        zzffo.zza(this.zzb, zzert.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzdeq
    public final void zza(final com.google.android.gms.ads.internal.client.zze zzeVar) {
        zzffo.zza(this.zzb, new zzffn() { // from class: com.google.android.gms.internal.ads.zzerv
            @Override // com.google.android.gms.internal.ads.zzffn
            public final void zza(Object obj) {
                ((com.google.android.gms.ads.internal.client.zzbh) obj).zzf(com.google.android.gms.ads.internal.client.zze.this);
            }
        });
        zzffo.zza(this.zzb, new zzffn() { // from class: com.google.android.gms.internal.ads.zzerw
            @Override // com.google.android.gms.internal.ads.zzffn
            public final void zza(Object obj) {
                ((com.google.android.gms.ads.internal.client.zzbh) obj).zze(com.google.android.gms.ads.internal.client.zze.this.zza);
            }
        });
        zzffo.zza(this.zze, new zzffn() { // from class: com.google.android.gms.internal.ads.zzerx
            @Override // com.google.android.gms.internal.ads.zzffn
            public final void zza(Object obj) {
                ((com.google.android.gms.ads.internal.client.zzbk) obj).zzb(com.google.android.gms.ads.internal.client.zze.this);
            }
        });
        this.zzg.set(false);
        this.zza.clear();
    }

    @Override // com.google.android.gms.internal.ads.zzdhi
    public final void zzb(zzfix zzfixVar) {
        this.zzg.set(true);
        this.zzi.set(false);
    }

    @Override // com.google.android.gms.internal.ads.zzdhi
    public final void zzbG(zzccb zzccbVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzasm
    public final synchronized void zzbv(final String str, final String str2) {
        if (this.zzg.get()) {
            if (!this.zza.offer(new Pair(str, str2))) {
                com.google.android.gms.ads.internal.util.zze.zze("The queue for app events is full, dropping the new event.");
                zzfnt zzfntVar = this.zzj;
                if (zzfntVar != null) {
                    zzfns zzb = zzfns.zzb("dae_action");
                    zzb.zza("dae_name", str);
                    zzb.zza("dae_data", str2);
                    zzfntVar.zzb(zzb);
                    return;
                }
            }
            return;
        }
        zzffo.zza(this.zzc, new zzffn() { // from class: com.google.android.gms.internal.ads.zzero
            @Override // com.google.android.gms.internal.ads.zzffn
            public final void zza(Object obj) {
                ((com.google.android.gms.ads.internal.client.zzcb) obj).zzc(str, str2);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzden
    public final void zzbw() {
    }

    @Override // com.google.android.gms.internal.ads.zzden
    public final void zzbx() {
    }

    public final synchronized com.google.android.gms.ads.internal.client.zzbh zzc() {
        return (com.google.android.gms.ads.internal.client.zzbh) this.zzb.get();
    }

    public final synchronized com.google.android.gms.ads.internal.client.zzcb zzd() {
        return (com.google.android.gms.ads.internal.client.zzcb) this.zzc.get();
    }

    public final void zze(com.google.android.gms.ads.internal.client.zzbh zzbhVar) {
        this.zzb.set(zzbhVar);
    }

    public final void zzf(com.google.android.gms.ads.internal.client.zzbk zzbkVar) {
        this.zze.set(zzbkVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdgy
    public final void zzg(final com.google.android.gms.ads.internal.client.zzs zzsVar) {
        zzffo.zza(this.zzd, new zzffn() { // from class: com.google.android.gms.internal.ads.zzerq
            @Override // com.google.android.gms.internal.ads.zzffn
            public final void zza(Object obj) {
                ((com.google.android.gms.ads.internal.client.zzdg) obj).zze(com.google.android.gms.ads.internal.client.zzs.this);
            }
        });
    }

    public final void zzh(com.google.android.gms.ads.internal.client.zzdg zzdgVar) {
        this.zzd.set(zzdgVar);
    }

    public final void zzi(com.google.android.gms.ads.internal.client.zzcb zzcbVar) {
        this.zzc.set(zzcbVar);
        this.zzh.set(true);
        zzt();
    }

    @Override // com.google.android.gms.internal.ads.zzden
    public final void zzj() {
        zzffo.zza(this.zzb, new zzffn() { // from class: com.google.android.gms.internal.ads.zzesa
            @Override // com.google.android.gms.internal.ads.zzffn
            public final void zza(Object obj) {
                ((com.google.android.gms.ads.internal.client.zzbh) obj).zzd();
            }
        });
        zzffo.zza(this.zzf, new zzffn() { // from class: com.google.android.gms.internal.ads.zzerj
            @Override // com.google.android.gms.internal.ads.zzffn
            public final void zza(Object obj) {
                ((com.google.android.gms.ads.internal.client.zzci) obj).zzc();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzdfd
    public final void zzk(final com.google.android.gms.ads.internal.client.zze zzeVar) {
        zzffo.zza(this.zzf, new zzffn() { // from class: com.google.android.gms.internal.ads.zzerp
            @Override // com.google.android.gms.internal.ads.zzffn
            public final void zza(Object obj) {
                ((com.google.android.gms.ads.internal.client.zzci) obj).zzd(com.google.android.gms.ads.internal.client.zze.this);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzdfh
    public final void zzl() {
        zzffo.zza(this.zzb, new zzffn() { // from class: com.google.android.gms.internal.ads.zzeri
            @Override // com.google.android.gms.internal.ads.zzffn
            public final void zza(Object obj) {
                ((com.google.android.gms.ads.internal.client.zzbh) obj).zzg();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzden
    public final void zzm() {
        zzffo.zza(this.zzb, new zzffn() { // from class: com.google.android.gms.internal.ads.zzerr
            @Override // com.google.android.gms.internal.ads.zzffn
            public final void zza(Object obj) {
                ((com.google.android.gms.ads.internal.client.zzbh) obj).zzh();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzdgb
    public final synchronized void zzn() {
        zzffo.zza(this.zzb, new zzffn() { // from class: com.google.android.gms.internal.ads.zzery
            @Override // com.google.android.gms.internal.ads.zzffn
            public final void zza(Object obj) {
                ((com.google.android.gms.ads.internal.client.zzbh) obj).zzi();
            }
        });
        zzffo.zza(this.zze, new zzffn() { // from class: com.google.android.gms.internal.ads.zzerz
            @Override // com.google.android.gms.internal.ads.zzffn
            public final void zza(Object obj) {
                ((com.google.android.gms.ads.internal.client.zzbk) obj).zzc();
            }
        });
        this.zzi.set(true);
        zzt();
    }

    @Override // com.google.android.gms.internal.ads.zzden
    public final void zzo() {
        zzffo.zza(this.zzb, new zzffn() { // from class: com.google.android.gms.internal.ads.zzerl
            @Override // com.google.android.gms.internal.ads.zzffn
            public final void zza(Object obj) {
                ((com.google.android.gms.ads.internal.client.zzbh) obj).zzj();
            }
        });
        zzffo.zza(this.zzf, new zzffn() { // from class: com.google.android.gms.internal.ads.zzerm
            @Override // com.google.android.gms.internal.ads.zzffn
            public final void zza(Object obj) {
                ((com.google.android.gms.ads.internal.client.zzci) obj).zzf();
            }
        });
        zzffo.zza(this.zzf, new zzffn() { // from class: com.google.android.gms.internal.ads.zzern
            @Override // com.google.android.gms.internal.ads.zzffn
            public final void zza(Object obj) {
                ((com.google.android.gms.ads.internal.client.zzci) obj).zze();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzden
    public final void zzp(zzccr zzccrVar, String str, String str2) {
    }

    @Override // com.google.android.gms.internal.ads.zzdmc
    public final void zzq() {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zziW)).booleanValue()) {
            zzffo.zza(this.zzb, zzert.zza);
        }
        zzffo.zza(this.zzf, new zzffn() { // from class: com.google.android.gms.internal.ads.zzeru
            @Override // com.google.android.gms.internal.ads.zzffn
            public final void zza(Object obj) {
                ((com.google.android.gms.ads.internal.client.zzci) obj).zzb();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzdmc
    public final void zzr() {
        zzffo.zza(this.zzb, new zzffn() { // from class: com.google.android.gms.internal.ads.zzerk
            @Override // com.google.android.gms.internal.ads.zzffn
            public final void zza(Object obj) {
                ((com.google.android.gms.ads.internal.client.zzbh) obj).zzk();
            }
        });
    }

    public final void zzs(com.google.android.gms.ads.internal.client.zzci zzciVar) {
        this.zzf.set(zzciVar);
    }
}
