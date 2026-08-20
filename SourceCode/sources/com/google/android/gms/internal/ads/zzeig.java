package com.google.android.gms.internal.ads;

import android.content.Context;
import android.text.TextUtils;
import androidx.browser.customtabs.CustomTabsCallback;
import androidx.core.app.NotificationCompat;
import com.appodeal.ads.modules.common.internal.Constants;
import com.facebook.ads.AdSDKNotificationListener;
import com.google.android.exoplayer2.metadata.icy.IcyHeaders;
import com.google.android.gms.ads.MobileAds;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import java.util.regex.Pattern;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzeig implements zzdjf, com.google.android.gms.ads.internal.client.zza, zzdfh, zzder {
    private final Context zza;
    private final zzfjv zzb;
    private final zzfix zzc;
    private final zzfil zzd;
    private final zzekc zze;
    private Boolean zzf;
    private final boolean zzg = ((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzgm)).booleanValue();
    private final zzfnt zzh;
    private final String zzi;

    public zzeig(Context context, zzfjv zzfjvVar, zzfix zzfixVar, zzfil zzfilVar, zzekc zzekcVar, zzfnt zzfntVar, String str) {
        this.zza = context;
        this.zzb = zzfjvVar;
        this.zzc = zzfixVar;
        this.zzd = zzfilVar;
        this.zze = zzekcVar;
        this.zzh = zzfntVar;
        this.zzi = str;
    }

    private final zzfns zzf(String str) {
        zzfns zzb = zzfns.zzb(str);
        zzb.zzh(this.zzc, null);
        zzb.zzf(this.zzd);
        zzb.zza("request_id", this.zzi);
        if (!this.zzd.zzu.isEmpty()) {
            zzb.zza("ancn", (String) this.zzd.zzu.get(0));
        }
        if (this.zzd.zzak) {
            zzb.zza("device_connectivity", true != com.google.android.gms.ads.internal.zzt.zzo().zzx(this.zza) ? "offline" : CustomTabsCallback.ONLINE_EXTRAS_KEY);
            zzb.zza("event_timestamp", String.valueOf(com.google.android.gms.ads.internal.zzt.zzB().currentTimeMillis()));
            zzb.zza("offline_ad", IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE);
        }
        return zzb;
    }

    private final void zzg(zzfns zzfnsVar) {
        if (this.zzd.zzak) {
            this.zze.zzd(new zzeke(com.google.android.gms.ads.internal.zzt.zzB().currentTimeMillis(), this.zzc.zzb.zzb.zzb, this.zzh.zza(zzfnsVar), 2));
            return;
        }
        this.zzh.zzb(zzfnsVar);
    }

    private final boolean zzh() {
        if (this.zzf == null) {
            synchronized (this) {
                if (this.zzf == null) {
                    String str = (String) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzbm);
                    com.google.android.gms.ads.internal.zzt.zzp();
                    String zzo = com.google.android.gms.ads.internal.util.zzs.zzo(this.zza);
                    boolean z = false;
                    if (str != null && zzo != null) {
                        try {
                            z = Pattern.matches(str, zzo);
                        } catch (RuntimeException e2) {
                            com.google.android.gms.ads.internal.zzt.zzo().zzu(e2, "CsiActionsListener.isPatternMatched");
                        }
                    }
                    this.zzf = Boolean.valueOf(z);
                }
            }
        }
        return this.zzf.booleanValue();
    }

    @Override // com.google.android.gms.ads.internal.client.zza
    public final void onAdClicked() {
        if (this.zzd.zzak) {
            zzg(zzf(Constants.CLICK));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzder
    public final void zza(com.google.android.gms.ads.internal.client.zze zzeVar) {
        com.google.android.gms.ads.internal.client.zze zzeVar2;
        if (this.zzg) {
            int i = zzeVar.zza;
            String str = zzeVar.zzb;
            if (zzeVar.zzc.equals(MobileAds.ERROR_DOMAIN) && (zzeVar2 = zzeVar.zzd) != null && !zzeVar2.zzc.equals(MobileAds.ERROR_DOMAIN)) {
                com.google.android.gms.ads.internal.client.zze zzeVar3 = zzeVar.zzd;
                i = zzeVar3.zza;
                str = zzeVar3.zzb;
            }
            String zza = this.zzb.zza(str);
            zzfns zzf = zzf("ifts");
            zzf.zza(IronSourceConstants.EVENTS_ERROR_REASON, "adapter");
            if (i >= 0) {
                zzf.zza("arec", String.valueOf(i));
            }
            if (zza != null) {
                zzf.zza("areec", zza);
            }
            this.zzh.zzb(zzf);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzder
    public final void zzb() {
        if (this.zzg) {
            zzfnt zzfntVar = this.zzh;
            zzfns zzf = zzf("ifts");
            zzf.zza(IronSourceConstants.EVENTS_ERROR_REASON, "blocked");
            zzfntVar.zzb(zzf);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzder
    public final void zzc(zzdod zzdodVar) {
        if (this.zzg) {
            zzfns zzf = zzf("ifts");
            zzf.zza(IronSourceConstants.EVENTS_ERROR_REASON, "exception");
            if (!TextUtils.isEmpty(zzdodVar.getMessage())) {
                zzf.zza(NotificationCompat.CATEGORY_MESSAGE, zzdodVar.getMessage());
            }
            this.zzh.zzb(zzf);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdjf
    public final void zzd() {
        if (zzh()) {
            this.zzh.zzb(zzf("adapter_shown"));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdjf
    public final void zze() {
        if (zzh()) {
            this.zzh.zzb(zzf("adapter_impression"));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdfh
    public final void zzl() {
        if (zzh() || this.zzd.zzak) {
            zzg(zzf(AdSDKNotificationListener.IMPRESSION_EVENT));
        }
    }
}
