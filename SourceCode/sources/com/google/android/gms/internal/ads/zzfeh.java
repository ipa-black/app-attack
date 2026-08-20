package com.google.android.gms.internal.ads;

import java.util.concurrent.atomic.AtomicReference;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzfeh implements zzdeq, zzdgm, zzffx, com.google.android.gms.ads.internal.overlay.zzo, zzdgy, zzdfd, zzdmc {
    private final zzfko zza;
    private final AtomicReference zzb = new AtomicReference();
    private final AtomicReference zzc = new AtomicReference();
    private final AtomicReference zzd = new AtomicReference();
    private final AtomicReference zze = new AtomicReference();
    private final AtomicReference zzf = new AtomicReference();
    private final AtomicReference zzg = new AtomicReference();
    private zzfeh zzh = null;

    public zzfeh(zzfko zzfkoVar) {
        this.zza = zzfkoVar;
    }

    public static zzfeh zzi(zzfeh zzfehVar) {
        zzfeh zzfehVar2 = new zzfeh(zzfehVar.zza);
        zzfehVar2.zzh = zzfehVar;
        return zzfehVar2;
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzb() {
        zzfeh zzfehVar = this.zzh;
        if (zzfehVar != null) {
            zzfehVar.zzb();
            return;
        }
        zzffo.zza(this.zzf, new zzffn() { // from class: com.google.android.gms.internal.ads.zzfea
            @Override // com.google.android.gms.internal.ads.zzffn
            public final void zza(Object obj) {
                ((com.google.android.gms.ads.internal.overlay.zzo) obj).zzb();
            }
        });
        zzffo.zza(this.zzd, new zzffn() { // from class: com.google.android.gms.internal.ads.zzfeb
            @Override // com.google.android.gms.internal.ads.zzffn
            public final void zza(Object obj) {
                ((zzbdx) obj).zzf();
            }
        });
        zzffo.zza(this.zzd, new zzffn() { // from class: com.google.android.gms.internal.ads.zzfec
            @Override // com.google.android.gms.internal.ads.zzffn
            public final void zza(Object obj) {
                ((zzbdx) obj).zze();
            }
        });
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzbE() {
        zzfeh zzfehVar = this.zzh;
        if (zzfehVar != null) {
            zzfehVar.zzbE();
        } else {
            zzffo.zza(this.zzf, new zzffn() { // from class: com.google.android.gms.internal.ads.zzfdx
                @Override // com.google.android.gms.internal.ads.zzffn
                public final void zza(Object obj) {
                    ((com.google.android.gms.ads.internal.overlay.zzo) obj).zzbE();
                }
            });
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzbM() {
    }

    @Override // com.google.android.gms.internal.ads.zzffx
    public final void zzbN(zzffx zzffxVar) {
        this.zzh = (zzfeh) zzffxVar;
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzbs() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zze() {
        zzfeh zzfehVar = this.zzh;
        if (zzfehVar != null) {
            zzfehVar.zze();
        } else {
            zzffo.zza(this.zzf, new zzffn() { // from class: com.google.android.gms.internal.ads.zzfee
                @Override // com.google.android.gms.internal.ads.zzffn
                public final void zza(Object obj) {
                    ((com.google.android.gms.ads.internal.overlay.zzo) obj).zze();
                }
            });
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzf(final int i) {
        zzfeh zzfehVar = this.zzh;
        if (zzfehVar != null) {
            zzfehVar.zzf(i);
        } else {
            zzffo.zza(this.zzf, new zzffn() { // from class: com.google.android.gms.internal.ads.zzfdw
                @Override // com.google.android.gms.internal.ads.zzffn
                public final void zza(Object obj) {
                    ((com.google.android.gms.ads.internal.overlay.zzo) obj).zzf(i);
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdgy
    public final void zzg(final com.google.android.gms.ads.internal.client.zzs zzsVar) {
        zzfeh zzfehVar = this.zzh;
        if (zzfehVar != null) {
            zzfehVar.zzg(zzsVar);
        } else {
            zzffo.zza(this.zzg, new zzffn() { // from class: com.google.android.gms.internal.ads.zzfdv
                @Override // com.google.android.gms.internal.ads.zzffn
                public final void zza(Object obj) {
                    ((com.google.android.gms.ads.internal.client.zzdg) obj).zze(com.google.android.gms.ads.internal.client.zzs.this);
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdgm
    public final void zzh() {
        zzfeh zzfehVar = this.zzh;
        if (zzfehVar != null) {
            zzfehVar.zzh();
        } else {
            zzffo.zza(this.zze, new zzffn() { // from class: com.google.android.gms.internal.ads.zzfeg
                @Override // com.google.android.gms.internal.ads.zzffn
                public final void zza(Object obj) {
                    ((zzdgm) obj).zzh();
                }
            });
        }
    }

    public final void zzj() {
        zzfeh zzfehVar = this.zzh;
        if (zzfehVar != null) {
            zzfehVar.zzj();
            return;
        }
        this.zza.zza();
        zzffo.zza(this.zzc, new zzffn() { // from class: com.google.android.gms.internal.ads.zzfdt
            @Override // com.google.android.gms.internal.ads.zzffn
            public final void zza(Object obj) {
                ((zzbdu) obj).zze();
            }
        });
        zzffo.zza(this.zzd, new zzffn() { // from class: com.google.android.gms.internal.ads.zzfdu
            @Override // com.google.android.gms.internal.ads.zzffn
            public final void zza(Object obj) {
                ((zzbdx) obj).zzc();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzdfd
    public final void zzk(final com.google.android.gms.ads.internal.client.zze zzeVar) {
        zzfeh zzfehVar = this.zzh;
        if (zzfehVar != null) {
            zzfehVar.zzk(zzeVar);
        } else {
            zzffo.zza(this.zzd, new zzffn() { // from class: com.google.android.gms.internal.ads.zzfed
                @Override // com.google.android.gms.internal.ads.zzffn
                public final void zza(Object obj) {
                    ((zzbdx) obj).zzd(com.google.android.gms.ads.internal.client.zze.this);
                }
            });
        }
    }

    public final void zzn(zzdgm zzdgmVar) {
        this.zze.set(zzdgmVar);
    }

    public final void zzo(com.google.android.gms.ads.internal.overlay.zzo zzoVar) {
        this.zzf.set(zzoVar);
    }

    public final void zzp(com.google.android.gms.ads.internal.client.zzdg zzdgVar) {
        this.zzg.set(zzdgVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdmc
    public final void zzq() {
        zzfeh zzfehVar = this.zzh;
        if (zzfehVar != null) {
            zzfehVar.zzq();
        } else {
            zzffo.zza(this.zzd, new zzffn() { // from class: com.google.android.gms.internal.ads.zzfef
                @Override // com.google.android.gms.internal.ads.zzffn
                public final void zza(Object obj) {
                    ((zzbdx) obj).zzb();
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdmc
    public final void zzr() {
    }

    public final void zzs(zzbdt zzbdtVar) {
        this.zzb.set(zzbdtVar);
    }

    public final void zzt(zzbdx zzbdxVar) {
        this.zzd.set(zzbdxVar);
    }

    public final void zzu(zzbdu zzbduVar) {
        this.zzc.set(zzbduVar);
    }

    public final void zzl(final zzbdq zzbdqVar) {
        zzfeh zzfehVar = this.zzh;
        if (zzfehVar != null) {
            zzfehVar.zzl(zzbdqVar);
        } else {
            zzffo.zza(this.zzb, new zzffn() { // from class: com.google.android.gms.internal.ads.zzfdz
                @Override // com.google.android.gms.internal.ads.zzffn
                public final void zza(Object obj) {
                    ((zzbdt) obj).zzd(zzbdq.this);
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdeq
    public final void zza(final com.google.android.gms.ads.internal.client.zze zzeVar) {
        zzfeh zzfehVar = this.zzh;
        if (zzfehVar != null) {
            zzfehVar.zza(zzeVar);
            return;
        }
        zzffo.zza(this.zzb, new zzffn() { // from class: com.google.android.gms.internal.ads.zzfds
            @Override // com.google.android.gms.internal.ads.zzffn
            public final void zza(Object obj) {
                ((zzbdt) obj).zzc(com.google.android.gms.ads.internal.client.zze.this);
            }
        });
        zzffo.zza(this.zzb, new zzffn() { // from class: com.google.android.gms.internal.ads.zzfdy
            @Override // com.google.android.gms.internal.ads.zzffn
            public final void zza(Object obj) {
                ((zzbdt) obj).zzb(com.google.android.gms.ads.internal.client.zze.this.zza);
            }
        });
    }
}
