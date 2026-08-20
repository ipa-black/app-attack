package com.google.android.gms.ads.internal.overlay;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.client.zzba;
import com.google.android.gms.internal.ads.zzbjj;
import com.google.android.gms.internal.ads.zzcib;
import com.google.android.gms.internal.ads.zzcno;
import com.google.android.gms.internal.ads.zzfvx;
import com.google.android.gms.internal.ads.zzfvy;
import com.google.android.gms.internal.ads.zzfvz;
import com.google.android.gms.internal.ads.zzfwa;
import com.google.android.gms.internal.ads.zzfwj;
import com.google.android.gms.internal.ads.zzfwl;
import com.google.android.gms.internal.ads.zzfwm;
import com.google.android.gms.internal.ads.zzfwn;
import com.google.android.gms.internal.ads.zzfwo;
import com.google.android.gms.internal.ads.zzfxi;
import com.google.firebase.messaging.Constants;
import java.util.HashMap;
import java.util.Map;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes3.dex */
public final class zzw {
    private zzfwm zzf;
    private zzcno zzc = null;
    private boolean zze = false;
    private String zza = null;
    private zzfvz zzd = null;
    private String zzb = null;

    private final zzfwo zzl() {
        zzfwn zzc = zzfwo.zzc();
        if (!((Boolean) zzba.zzc().zzb(zzbjj.zzju)).booleanValue() || TextUtils.isEmpty(this.zzb)) {
            String str = this.zza;
            if (str != null) {
                zzc.zzb(str);
            } else {
                zzf("Missing session token and/or appId", "onLMDupdate");
            }
        } else {
            zzc.zza(this.zzb);
        }
        return zzc.zzc();
    }

    private final void zzm() {
        if (this.zzf == null) {
            this.zzf = new zzv(this);
        }
    }

    public final synchronized void zza(zzcno zzcnoVar, Context context) {
        this.zzc = zzcnoVar;
        if (!zzk(context)) {
            zzf("Unable to bind", "on_play_store_bind");
            return;
        }
        HashMap hashMap = new HashMap();
        hashMap.put("action", "fetch_completed");
        zze("on_play_store_bind", hashMap);
    }

    public final void zzb() {
        zzfvz zzfvzVar;
        if (!this.zze || (zzfvzVar = this.zzd) == null) {
            com.google.android.gms.ads.internal.util.zze.zza("LastMileDelivery not connected");
            return;
        }
        zzfvzVar.zza(zzl(), this.zzf);
        zzd("onLMDOverlayCollapse");
    }

    public final void zzc() {
        zzfvz zzfvzVar;
        if (!this.zze || (zzfvzVar = this.zzd) == null) {
            com.google.android.gms.ads.internal.util.zze.zza("LastMileDelivery not connected");
            return;
        }
        zzfvx zzc = zzfvy.zzc();
        if (((Boolean) zzba.zzc().zzb(zzbjj.zzju)).booleanValue() && !TextUtils.isEmpty(this.zzb)) {
            zzc.zza(this.zzb);
        } else {
            String str = this.zza;
            if (str != null) {
                zzc.zzb(str);
            } else {
                zzf("Missing session token and/or appId", "onLMDupdate");
            }
        }
        zzfvzVar.zzb(zzc.zzc(), this.zzf);
    }

    final void zzd(String str) {
        zze(str, new HashMap());
    }

    final void zze(final String str, final Map map) {
        zzcib.zze.execute(new Runnable() { // from class: com.google.android.gms.ads.internal.overlay.zzu
            @Override // java.lang.Runnable
            public final void run() {
                zzw.this.zzh(str, map);
            }
        });
    }

    final void zzf(String str, String str2) {
        com.google.android.gms.ads.internal.util.zze.zza(str);
        if (this.zzc != null) {
            HashMap hashMap = new HashMap();
            hashMap.put("message", str);
            hashMap.put("action", str2);
            zze("onError", hashMap);
        }
    }

    public final void zzg() {
        zzfvz zzfvzVar;
        if (!this.zze || (zzfvzVar = this.zzd) == null) {
            com.google.android.gms.ads.internal.util.zze.zza("LastMileDelivery not connected");
            return;
        }
        zzfvzVar.zzc(zzl(), this.zzf);
        zzd("onLMDOverlayExpand");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzh(String str, Map map) {
        zzcno zzcnoVar = this.zzc;
        if (zzcnoVar != null) {
            zzcnoVar.zzd(str, map);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzi(zzfwl zzfwlVar) {
        if (!TextUtils.isEmpty(zzfwlVar.zzb())) {
            if (!((Boolean) zzba.zzc().zzb(zzbjj.zzju)).booleanValue()) {
                this.zza = zzfwlVar.zzb();
            }
        }
        switch (zzfwlVar.zza()) {
            case 8152:
                zzd("onLMDOverlayOpened");
                return;
            case 8153:
                zzd("onLMDOverlayClicked");
                return;
            case 8154:
            case 8156:
            case 8158:
            case 8159:
            default:
                return;
            case 8155:
                zzd("onLMDOverlayClose");
                return;
            case 8157:
                this.zza = null;
                this.zzb = null;
                this.zze = false;
                return;
            case 8160:
            case 8161:
            case 8162:
                HashMap hashMap = new HashMap();
                hashMap.put(Constants.IPC_BUNDLE_KEY_SEND_ERROR, String.valueOf(zzfwlVar.zza()));
                zze("onLMDOverlayFailedToOpen", hashMap);
                return;
        }
    }

    public final void zzj(zzcno zzcnoVar, zzfwj zzfwjVar) {
        if (zzcnoVar == null) {
            zzf("adWebview missing", "onLMDShow");
            return;
        }
        this.zzc = zzcnoVar;
        if (this.zze || zzk(zzcnoVar.getContext())) {
            if (((Boolean) zzba.zzc().zzb(zzbjj.zzju)).booleanValue()) {
                this.zzb = zzfwjVar.zzg();
            }
            zzm();
            zzfvz zzfvzVar = this.zzd;
            if (zzfvzVar != null) {
                zzfvzVar.zzd(zzfwjVar, this.zzf);
                return;
            }
            return;
        }
        zzf("LMDOverlay not bound", "on_play_store_bind");
    }

    public final synchronized boolean zzk(Context context) {
        if (zzfxi.zza(context)) {
            try {
                this.zzd = zzfwa.zza(context);
            } catch (NullPointerException e2) {
                com.google.android.gms.ads.internal.util.zze.zza("Error connecting LMD Overlay service");
                com.google.android.gms.ads.internal.zzt.zzo().zzu(e2, "LastMileDeliveryOverlay.bindLastMileDeliveryService");
            }
            if (this.zzd == null) {
                this.zze = false;
                return false;
            }
            zzm();
            this.zze = true;
            return true;
        }
        return false;
    }
}
