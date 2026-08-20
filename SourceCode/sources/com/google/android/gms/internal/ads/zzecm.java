package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzecm implements com.google.android.gms.ads.internal.overlay.zzo, zzcoz {
    private final Context zza;
    private final zzchu zzb;
    private zzece zzc;
    private zzcno zzd;
    private boolean zze;
    private boolean zzf;
    private long zzg;
    private com.google.android.gms.ads.internal.client.zzda zzh;
    private boolean zzi;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzecm(Context context, zzchu zzchuVar) {
        this.zza = context;
        this.zzb = zzchuVar;
    }

    private final synchronized boolean zzl(com.google.android.gms.ads.internal.client.zzda zzdaVar) {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzhX)).booleanValue()) {
            com.google.android.gms.ads.internal.util.zze.zzj("Ad inspector had an internal error.");
            try {
                zzdaVar.zze(zzfkg.zzd(16, null, null));
            } catch (RemoteException unused) {
            }
            return false;
        } else if (this.zzc == null) {
            com.google.android.gms.ads.internal.util.zze.zzj("Ad inspector had an internal error.");
            try {
                zzdaVar.zze(zzfkg.zzd(16, null, null));
            } catch (RemoteException unused2) {
            }
            return false;
        } else {
            if (!this.zze && !this.zzf) {
                if (com.google.android.gms.ads.internal.zzt.zzB().currentTimeMillis() >= this.zzg + ((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzia)).intValue()) {
                    return true;
                }
            }
            com.google.android.gms.ads.internal.util.zze.zzj("Ad inspector cannot be opened because it is already open.");
            try {
                zzdaVar.zze(zzfkg.zzd(19, null, null));
            } catch (RemoteException unused3) {
            }
            return false;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcoz
    public final synchronized void zza(boolean z) {
        if (z) {
            com.google.android.gms.ads.internal.util.zze.zza("Ad inspector loaded.");
            this.zze = true;
            zzk("");
            return;
        }
        com.google.android.gms.ads.internal.util.zze.zzj("Ad inspector failed to load.");
        try {
            com.google.android.gms.ads.internal.client.zzda zzdaVar = this.zzh;
            if (zzdaVar != null) {
                zzdaVar.zze(zzfkg.zzd(17, null, null));
            }
        } catch (RemoteException unused) {
        }
        this.zzi = true;
        this.zzd.destroy();
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final synchronized void zzb() {
        this.zzf = true;
        zzk("");
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzbE() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzbM() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzbs() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zze() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final synchronized void zzf(int i) {
        this.zzd.destroy();
        if (!this.zzi) {
            com.google.android.gms.ads.internal.util.zze.zza("Inspector closed.");
            com.google.android.gms.ads.internal.client.zzda zzdaVar = this.zzh;
            if (zzdaVar != null) {
                try {
                    zzdaVar.zze(null);
                } catch (RemoteException unused) {
                }
            }
        }
        this.zzf = false;
        this.zze = false;
        this.zzg = 0L;
        this.zzi = false;
        this.zzh = null;
    }

    public final Activity zzg() {
        zzcno zzcnoVar = this.zzd;
        if (zzcnoVar == null || zzcnoVar.zzaB()) {
            return null;
        }
        return this.zzd.zzk();
    }

    public final void zzh(zzece zzeceVar) {
        this.zzc = zzeceVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzi(String str) {
        JSONObject zze = this.zzc.zze();
        if (!TextUtils.isEmpty(str)) {
            try {
                zze.put("redirectUrl", str);
            } catch (JSONException unused) {
            }
        }
        this.zzd.zzb("window.inspectorInfo", zze.toString());
    }

    public final synchronized void zzj(com.google.android.gms.ads.internal.client.zzda zzdaVar, zzbqv zzbqvVar, zzbqo zzbqoVar) {
        if (zzl(zzdaVar)) {
            try {
                com.google.android.gms.ads.internal.zzt.zzz();
                zzcno zza = zzcoa.zza(this.zza, zzcpd.zza(), "", false, false, null, null, this.zzb, null, null, null, zzbew.zza(), null, null);
                this.zzd = zza;
                zzcpb zzP = zza.zzP();
                if (zzP == null) {
                    com.google.android.gms.ads.internal.util.zze.zzj("Failed to obtain a web view for the ad inspector");
                    try {
                        zzdaVar.zze(zzfkg.zzd(17, "Failed to obtain a web view for the ad inspector", null));
                        return;
                    } catch (RemoteException unused) {
                        return;
                    }
                }
                this.zzh = zzdaVar;
                zzP.zzM(null, null, null, null, null, false, null, null, null, null, null, null, null, null, zzbqvVar, null, new zzbqu(this.zza), zzbqoVar);
                zzP.zzA(this);
                this.zzd.loadUrl((String) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzhY));
                com.google.android.gms.ads.internal.zzt.zzi();
                com.google.android.gms.ads.internal.overlay.zzm.zza(this.zza, new AdOverlayInfoParcel(this, this.zzd, 1, this.zzb), true);
                this.zzg = com.google.android.gms.ads.internal.zzt.zzB().currentTimeMillis();
            } catch (zzcnz e2) {
                com.google.android.gms.ads.internal.util.zze.zzk("Failed to obtain a web view for the ad inspector", e2);
                try {
                    zzdaVar.zze(zzfkg.zzd(17, "Failed to obtain a web view for the ad inspector", null));
                } catch (RemoteException unused2) {
                }
            }
        }
    }

    public final synchronized void zzk(final String str) {
        if (this.zze && this.zzf) {
            zzcib.zze.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzecl
                @Override // java.lang.Runnable
                public final void run() {
                    zzecm.this.zzi(str);
                }
            });
        }
    }
}
