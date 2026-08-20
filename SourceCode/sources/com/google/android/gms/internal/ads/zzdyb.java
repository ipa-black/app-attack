package com.google.android.gms.internal.ads;

import com.ironsource.mediationsdk.utils.IronSourceConstants;
import javax.annotation.Nullable;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzdyb implements zzdhi, zzdgb, zzdeq, zzdfh, com.google.android.gms.ads.internal.client.zza, zzdju {
    private final zzbew zza;
    private boolean zzb = false;

    public zzdyb(zzbew zzbewVar, @Nullable zzfgg zzfggVar) {
        this.zza = zzbewVar;
        zzbewVar.zzc(2);
        if (zzfggVar != null) {
            zzbewVar.zzc(IronSourceConstants.RV_API_HAS_AVAILABILITY_TRUE);
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zza
    public final synchronized void onAdClicked() {
        if (this.zzb) {
            this.zza.zzc(8);
            return;
        }
        this.zza.zzc(7);
        this.zzb = true;
    }

    @Override // com.google.android.gms.internal.ads.zzdeq
    public final void zza(com.google.android.gms.ads.internal.client.zze zzeVar) {
        switch (zzeVar.zza) {
            case 1:
                this.zza.zzc(101);
                return;
            case 2:
                this.zza.zzc(102);
                return;
            case 3:
                this.zza.zzc(5);
                return;
            case 4:
                this.zza.zzc(103);
                return;
            case 5:
                this.zza.zzc(104);
                return;
            case 6:
                this.zza.zzc(105);
                return;
            case 7:
                this.zza.zzc(106);
                return;
            default:
                this.zza.zzc(4);
                return;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdhi
    public final void zzb(final zzfix zzfixVar) {
        this.zza.zzb(new zzbev() { // from class: com.google.android.gms.internal.ads.zzdxx
            @Override // com.google.android.gms.internal.ads.zzbev
            public final void zza(zzbgl zzbglVar) {
                zzfix zzfixVar2 = zzfix.this;
                zzbfh zzbfhVar = (zzbfh) zzbglVar.zza().zzaA();
                zzbfz zzbfzVar = (zzbfz) zzbglVar.zza().zzd().zzaA();
                zzbfzVar.zza(zzfixVar2.zzb.zzb.zzb);
                zzbfhVar.zzb(zzbfzVar);
                zzbglVar.zze(zzbfhVar);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzdhi
    public final void zzbG(zzccb zzccbVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzdju
    public final void zzd() {
        this.zza.zzc(1109);
    }

    @Override // com.google.android.gms.internal.ads.zzdju
    public final void zze(final zzbfr zzbfrVar) {
        this.zza.zzb(new zzbev() { // from class: com.google.android.gms.internal.ads.zzdya
            @Override // com.google.android.gms.internal.ads.zzbev
            public final void zza(zzbgl zzbglVar) {
                zzbglVar.zzf(zzbfr.this);
            }
        });
        this.zza.zzc(1103);
    }

    @Override // com.google.android.gms.internal.ads.zzdju
    public final void zzf(final zzbfr zzbfrVar) {
        this.zza.zzb(new zzbev() { // from class: com.google.android.gms.internal.ads.zzdxz
            @Override // com.google.android.gms.internal.ads.zzbev
            public final void zza(zzbgl zzbglVar) {
                zzbglVar.zzf(zzbfr.this);
            }
        });
        this.zza.zzc(IronSourceConstants.RV_API_HAS_AVAILABILITY_FALSE);
    }

    @Override // com.google.android.gms.internal.ads.zzdju
    public final void zzh(boolean z) {
        this.zza.zzc(true != z ? 1108 : 1107);
    }

    @Override // com.google.android.gms.internal.ads.zzdju
    public final void zzi(final zzbfr zzbfrVar) {
        this.zza.zzb(new zzbev() { // from class: com.google.android.gms.internal.ads.zzdxy
            @Override // com.google.android.gms.internal.ads.zzbev
            public final void zza(zzbgl zzbglVar) {
                zzbglVar.zzf(zzbfr.this);
            }
        });
        this.zza.zzc(1104);
    }

    @Override // com.google.android.gms.internal.ads.zzdju
    public final void zzk(boolean z) {
        this.zza.zzc(true != z ? 1106 : 1105);
    }

    @Override // com.google.android.gms.internal.ads.zzdfh
    public final synchronized void zzl() {
        this.zza.zzc(6);
    }

    @Override // com.google.android.gms.internal.ads.zzdgb
    public final void zzn() {
        this.zza.zzc(3);
    }
}
