package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import android.view.View;
import com.google.android.exoplayer2.C;
import com.google.firebase.messaging.Constants;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzdrs {
    private final zzdwp zza;
    private final zzdve zzb;
    private final zzcxc zzc;
    private final zzdqo zzd;

    public zzdrs(zzdwp zzdwpVar, zzdve zzdveVar, zzcxc zzcxcVar, zzdqo zzdqoVar) {
        this.zza = zzdwpVar;
        this.zzb = zzdveVar;
        this.zzc = zzcxcVar;
        this.zzd = zzdqoVar;
    }

    public final View zza() throws zzcnz {
        zzcno zza = this.zza.zza(com.google.android.gms.ads.internal.client.zzq.zzc(), null, null);
        View view = (View) zza;
        view.setVisibility(8);
        zza.zzaf("/sendMessageToSdk", new zzbqd() { // from class: com.google.android.gms.internal.ads.zzdrm
            @Override // com.google.android.gms.internal.ads.zzbqd
            public final void zza(Object obj, Map map) {
                zzdrs.this.zzb((zzcno) obj, map);
            }
        });
        zza.zzaf("/adMuted", new zzbqd() { // from class: com.google.android.gms.internal.ads.zzdrn
            @Override // com.google.android.gms.internal.ads.zzbqd
            public final void zza(Object obj, Map map) {
                zzdrs.this.zzc((zzcno) obj, map);
            }
        });
        this.zzb.zzj(new WeakReference(zza), "/loadHtml", new zzbqd() { // from class: com.google.android.gms.internal.ads.zzdro
            @Override // com.google.android.gms.internal.ads.zzbqd
            public final void zza(Object obj, final Map map) {
                final zzdrs zzdrsVar = zzdrs.this;
                zzcno zzcnoVar = (zzcno) obj;
                zzcnoVar.zzP().zzA(new zzcoz() { // from class: com.google.android.gms.internal.ads.zzdrr
                    @Override // com.google.android.gms.internal.ads.zzcoz
                    public final void zza(boolean z) {
                        zzdrs.this.zzd(map, z);
                    }
                });
                String str = (String) map.get("overlayHtml");
                String str2 = (String) map.get("baseUrl");
                if (TextUtils.isEmpty(str2)) {
                    zzcnoVar.loadData(str, "text/html", C.UTF8_NAME);
                } else {
                    zzcnoVar.loadDataWithBaseURL(str2, str, "text/html", C.UTF8_NAME, null);
                }
            }
        });
        this.zzb.zzj(new WeakReference(zza), "/showOverlay", new zzbqd() { // from class: com.google.android.gms.internal.ads.zzdrp
            @Override // com.google.android.gms.internal.ads.zzbqd
            public final void zza(Object obj, Map map) {
                zzdrs.this.zze((zzcno) obj, map);
            }
        });
        this.zzb.zzj(new WeakReference(zza), "/hideOverlay", new zzbqd() { // from class: com.google.android.gms.internal.ads.zzdrq
            @Override // com.google.android.gms.internal.ads.zzbqd
            public final void zza(Object obj, Map map) {
                zzdrs.this.zzf((zzcno) obj, map);
            }
        });
        return view;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzb(zzcno zzcnoVar, Map map) {
        this.zzb.zzg("sendMessageToNativeJs", map);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzc(zzcno zzcnoVar, Map map) {
        this.zzd.zzg();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzd(Map map, boolean z) {
        HashMap hashMap = new HashMap();
        hashMap.put(Constants.FirelogAnalytics.PARAM_MESSAGE_TYPE, "htmlLoaded");
        hashMap.put("id", (String) map.get("id"));
        this.zzb.zzg("sendMessageToNativeJs", hashMap);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zze(zzcno zzcnoVar, Map map) {
        com.google.android.gms.ads.internal.util.zze.zzi("Showing native ads overlay.");
        zzcnoVar.zzH().setVisibility(0);
        this.zzc.zze(true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzf(zzcno zzcnoVar, Map map) {
        com.google.android.gms.ads.internal.util.zze.zzi("Hiding native ads overlay.");
        zzcnoVar.zzH().setVisibility(8);
        this.zzc.zze(false);
    }
}
