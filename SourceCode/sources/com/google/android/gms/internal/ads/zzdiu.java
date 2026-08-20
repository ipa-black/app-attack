package com.google.android.gms.internal.ads;

import javax.annotation.Nullable;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzdiu extends zzfrt implements zzden, com.google.android.gms.ads.internal.client.zza, zzasm, zzdgy, zzdfh, zzdgm, com.google.android.gms.ads.internal.overlay.zzo, zzdfd, zzdmc {
    private final zzdis zza = new zzdis(this, null);
    @Nullable
    private zzesb zzb;
    @Nullable
    private zzesf zzc;
    @Nullable
    private zzfeh zzd;
    @Nullable
    private zzfho zze;

    public static /* bridge */ /* synthetic */ void zzn(zzdiu zzdiuVar, zzesb zzesbVar) {
        zzdiuVar.zzb = zzesbVar;
    }

    public static /* bridge */ /* synthetic */ void zzs(zzdiu zzdiuVar, zzfeh zzfehVar) {
        zzdiuVar.zzd = zzfehVar;
    }

    public static /* bridge */ /* synthetic */ void zzt(zzdiu zzdiuVar, zzesf zzesfVar) {
        zzdiuVar.zzc = zzesfVar;
    }

    public static /* bridge */ /* synthetic */ void zzu(zzdiu zzdiuVar, zzfho zzfhoVar) {
        zzdiuVar.zze = zzfhoVar;
    }

    private static void zzw(Object obj, zzdit zzditVar) {
        if (obj != null) {
            zzditVar.zza(obj);
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zza
    public final void onAdClicked() {
        zzw(this.zzb, new zzdit() { // from class: com.google.android.gms.internal.ads.zzdii
            @Override // com.google.android.gms.internal.ads.zzdit
            public final void zza(Object obj) {
                ((zzesb) obj).onAdClicked();
            }
        });
        zzw(this.zzc, new zzdit() { // from class: com.google.android.gms.internal.ads.zzdij
            @Override // com.google.android.gms.internal.ads.zzdit
            public final void zza(Object obj) {
                ((zzesf) obj).onAdClicked();
            }
        });
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzb() {
        zzw(this.zzd, new zzdit() { // from class: com.google.android.gms.internal.ads.zzdio
            @Override // com.google.android.gms.internal.ads.zzdit
            public final void zza(Object obj) {
                ((zzfeh) obj).zzb();
            }
        });
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzbE() {
        zzw(this.zzd, new zzdit() { // from class: com.google.android.gms.internal.ads.zzdhq
            @Override // com.google.android.gms.internal.ads.zzdit
            public final void zza(Object obj) {
                ((zzfeh) obj).zzbE();
            }
        });
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzbM() {
        zzw(this.zzd, new zzdit() { // from class: com.google.android.gms.internal.ads.zzdig
            @Override // com.google.android.gms.internal.ads.zzdit
            public final void zza(Object obj) {
                zzfeh zzfehVar = (zzfeh) obj;
            }
        });
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzbs() {
        zzw(this.zzd, new zzdit() { // from class: com.google.android.gms.internal.ads.zzdhn
            @Override // com.google.android.gms.internal.ads.zzdit
            public final void zza(Object obj) {
                zzfeh zzfehVar = (zzfeh) obj;
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzasm
    public final void zzbv(final String str, final String str2) {
        zzw(this.zzb, new zzdit() { // from class: com.google.android.gms.internal.ads.zzdhk
            @Override // com.google.android.gms.internal.ads.zzdit
            public final void zza(Object obj) {
                ((zzesb) obj).zzbv(str, str2);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzden
    public final void zzbw() {
        zzw(this.zzb, new zzdit() { // from class: com.google.android.gms.internal.ads.zzdhl
            @Override // com.google.android.gms.internal.ads.zzdit
            public final void zza(Object obj) {
                zzesb zzesbVar = (zzesb) obj;
            }
        });
        zzw(this.zze, new zzdit() { // from class: com.google.android.gms.internal.ads.zzdhm
            @Override // com.google.android.gms.internal.ads.zzdit
            public final void zza(Object obj) {
                ((zzfho) obj).zzbw();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzden
    public final void zzbx() {
        zzw(this.zzb, new zzdit() { // from class: com.google.android.gms.internal.ads.zzdho
            @Override // com.google.android.gms.internal.ads.zzdit
            public final void zza(Object obj) {
                zzesb zzesbVar = (zzesb) obj;
            }
        });
        zzw(this.zze, new zzdit() { // from class: com.google.android.gms.internal.ads.zzdhp
            @Override // com.google.android.gms.internal.ads.zzdit
            public final void zza(Object obj) {
                ((zzfho) obj).zzbx();
            }
        });
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zze() {
        zzw(this.zzd, new zzdit() { // from class: com.google.android.gms.internal.ads.zzdhj
            @Override // com.google.android.gms.internal.ads.zzdit
            public final void zza(Object obj) {
                ((zzfeh) obj).zze();
            }
        });
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzf(final int i) {
        zzw(this.zzd, new zzdit() { // from class: com.google.android.gms.internal.ads.zzdie
            @Override // com.google.android.gms.internal.ads.zzdit
            public final void zza(Object obj) {
                ((zzfeh) obj).zzf(i);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzdgy
    public final void zzg(final com.google.android.gms.ads.internal.client.zzs zzsVar) {
        zzw(this.zzb, new zzdit() { // from class: com.google.android.gms.internal.ads.zzdil
            @Override // com.google.android.gms.internal.ads.zzdit
            public final void zza(Object obj) {
                ((zzesb) obj).zzg(com.google.android.gms.ads.internal.client.zzs.this);
            }
        });
        zzw(this.zze, new zzdit() { // from class: com.google.android.gms.internal.ads.zzdim
            @Override // com.google.android.gms.internal.ads.zzdit
            public final void zza(Object obj) {
                ((zzfho) obj).zzg(com.google.android.gms.ads.internal.client.zzs.this);
            }
        });
        zzw(this.zzd, new zzdit() { // from class: com.google.android.gms.internal.ads.zzdin
            @Override // com.google.android.gms.internal.ads.zzdit
            public final void zza(Object obj) {
                ((zzfeh) obj).zzg(com.google.android.gms.ads.internal.client.zzs.this);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzdgm
    public final void zzh() {
        zzw(this.zzd, new zzdit() { // from class: com.google.android.gms.internal.ads.zzdhw
            @Override // com.google.android.gms.internal.ads.zzdit
            public final void zza(Object obj) {
                ((zzfeh) obj).zzh();
            }
        });
    }

    public final zzdis zzi() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzden
    public final void zzj() {
        zzw(this.zzb, new zzdit() { // from class: com.google.android.gms.internal.ads.zzdic
            @Override // com.google.android.gms.internal.ads.zzdit
            public final void zza(Object obj) {
                ((zzesb) obj).zzj();
            }
        });
        zzw(this.zze, new zzdit() { // from class: com.google.android.gms.internal.ads.zzdid
            @Override // com.google.android.gms.internal.ads.zzdit
            public final void zza(Object obj) {
                ((zzfho) obj).zzj();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzdfd
    public final void zzk(final com.google.android.gms.ads.internal.client.zze zzeVar) {
        zzw(this.zze, new zzdit() { // from class: com.google.android.gms.internal.ads.zzdhr
            @Override // com.google.android.gms.internal.ads.zzdit
            public final void zza(Object obj) {
                ((zzfho) obj).zzk(com.google.android.gms.ads.internal.client.zze.this);
            }
        });
        zzw(this.zzb, new zzdit() { // from class: com.google.android.gms.internal.ads.zzdhs
            @Override // com.google.android.gms.internal.ads.zzdit
            public final void zza(Object obj) {
                ((zzesb) obj).zzk(com.google.android.gms.ads.internal.client.zze.this);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzdfh
    public final void zzl() {
        zzw(this.zzb, new zzdit() { // from class: com.google.android.gms.internal.ads.zzdhu
            @Override // com.google.android.gms.internal.ads.zzdit
            public final void zza(Object obj) {
                ((zzesb) obj).zzl();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzden
    public final void zzm() {
        zzw(this.zzb, new zzdit() { // from class: com.google.android.gms.internal.ads.zzdif
            @Override // com.google.android.gms.internal.ads.zzdit
            public final void zza(Object obj) {
                ((zzesb) obj).zzm();
            }
        });
        zzw(this.zze, new zzdit() { // from class: com.google.android.gms.internal.ads.zzdik
            @Override // com.google.android.gms.internal.ads.zzdit
            public final void zza(Object obj) {
                ((zzfho) obj).zzm();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzden
    public final void zzo() {
        zzw(this.zzb, new zzdit() { // from class: com.google.android.gms.internal.ads.zzdip
            @Override // com.google.android.gms.internal.ads.zzdit
            public final void zza(Object obj) {
                ((zzesb) obj).zzo();
            }
        });
        zzw(this.zze, new zzdit() { // from class: com.google.android.gms.internal.ads.zzdiq
            @Override // com.google.android.gms.internal.ads.zzdit
            public final void zza(Object obj) {
                ((zzfho) obj).zzo();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzden
    public final void zzp(final zzccr zzccrVar, final String str, final String str2) {
        zzw(this.zzb, new zzdit() { // from class: com.google.android.gms.internal.ads.zzdht
            @Override // com.google.android.gms.internal.ads.zzdit
            public final void zza(Object obj) {
                zzesb zzesbVar = (zzesb) obj;
            }
        });
        zzw(this.zze, new zzdit() { // from class: com.google.android.gms.internal.ads.zzdhv
            @Override // com.google.android.gms.internal.ads.zzdit
            public final void zza(Object obj) {
                ((zzfho) obj).zzp(zzccr.this, str, str2);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzdmc
    public final void zzq() {
        zzw(this.zzb, new zzdit() { // from class: com.google.android.gms.internal.ads.zzdhx
            @Override // com.google.android.gms.internal.ads.zzdit
            public final void zza(Object obj) {
                ((zzesb) obj).zzq();
            }
        });
        zzw(this.zzc, new zzdit() { // from class: com.google.android.gms.internal.ads.zzdhy
            @Override // com.google.android.gms.internal.ads.zzdit
            public final void zza(Object obj) {
                ((zzesf) obj).zzq();
            }
        });
        zzw(this.zze, new zzdit() { // from class: com.google.android.gms.internal.ads.zzdhz
            @Override // com.google.android.gms.internal.ads.zzdit
            public final void zza(Object obj) {
                ((zzfho) obj).zzq();
            }
        });
        zzw(this.zzd, new zzdit() { // from class: com.google.android.gms.internal.ads.zzdia
            @Override // com.google.android.gms.internal.ads.zzdit
            public final void zza(Object obj) {
                ((zzfeh) obj).zzq();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzdmc
    public final void zzr() {
        zzw(this.zzb, new zzdit() { // from class: com.google.android.gms.internal.ads.zzdih
            @Override // com.google.android.gms.internal.ads.zzdit
            public final void zza(Object obj) {
                ((zzesb) obj).zzr();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzfrt
    public final void zzv() {
        zzw(this.zze, new zzdit() { // from class: com.google.android.gms.internal.ads.zzdib
            @Override // com.google.android.gms.internal.ads.zzdit
            public final void zza(Object obj) {
                ((zzfho) obj).zzv();
            }
        });
    }
}
