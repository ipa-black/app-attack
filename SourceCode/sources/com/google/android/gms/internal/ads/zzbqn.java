package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.os.SystemClock;
import android.view.View;
import androidx.core.app.NotificationManagerCompat;
import com.google.android.exoplayer2.metadata.icy.IcyHeaders;
import com.onesignal.NotificationBundleProcessor;
import java.util.HashMap;
import java.util.Map;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzbqn implements zzbqd {
    private final com.google.android.gms.ads.internal.zzb zza;
    private final zzdzh zzb;
    private final zzfnt zzc;
    private final zzbyn zze;
    private final zzekc zzf;
    private com.google.android.gms.ads.internal.overlay.zzx zzg = null;
    private final zzcht zzd = new zzcht(null);

    public zzbqn(com.google.android.gms.ads.internal.zzb zzbVar, zzbyn zzbynVar, zzekc zzekcVar, zzdzh zzdzhVar, zzfnt zzfntVar) {
        this.zza = zzbVar;
        this.zze = zzbynVar;
        this.zzf = zzekcVar;
        this.zzb = zzdzhVar;
        this.zzc = zzfntVar;
    }

    public static int zzb(Map map) {
        String str = (String) map.get(NotificationBundleProcessor.PUSH_MINIFIED_BUTTONS_LIST);
        if (str != null) {
            if ("p".equalsIgnoreCase(str)) {
                return 7;
            }
            if ("l".equalsIgnoreCase(str)) {
                return 6;
            }
            return "c".equalsIgnoreCase(str) ? 14 : -1;
        }
        return -1;
    }

    static Uri zzc(Context context, zzapj zzapjVar, Uri uri, View view, Activity activity) {
        if (zzapjVar == null) {
            return uri;
        }
        try {
            return zzapjVar.zze(uri) ? zzapjVar.zza(uri, context, view, activity) : uri;
        } catch (zzapk unused) {
            return uri;
        } catch (Exception e2) {
            com.google.android.gms.ads.internal.zzt.zzo().zzu(e2, "OpenGmsgHandler.maybeAddClickSignalsToUri");
            return uri;
        }
    }

    static Uri zzd(Uri uri) {
        try {
            if (uri.getQueryParameter("aclk_ms") != null) {
                return uri.buildUpon().appendQueryParameter("aclk_upms", String.valueOf(SystemClock.uptimeMillis())).build();
            }
        } catch (UnsupportedOperationException e2) {
            com.google.android.gms.ads.internal.util.zze.zzh("Error adding click uptime parameter to url: ".concat(String.valueOf(uri.toString())), e2);
        }
        return uri;
    }

    public static boolean zzf(Map map) {
        return IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE.equals(map.get("custom_close"));
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x00df, code lost:
        if (com.google.android.gms.internal.ads.zzbqm.zzc(r11, r5, r6, r7) == null) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0122, code lost:
        r11 = r15;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void zzh(com.google.android.gms.ads.internal.client.zza r18, java.util.Map r19, boolean r20, java.lang.String r21, boolean r22) {
        /*
            Method dump skipped, instructions count: 361
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbqn.zzh(com.google.android.gms.ads.internal.client.zza, java.util.Map, boolean, java.lang.String, boolean):void");
    }

    private final void zzi(boolean z) {
        zzbyn zzbynVar = this.zze;
        if (zzbynVar != null) {
            zzbynVar.zza(z);
        }
    }

    private final boolean zzj(com.google.android.gms.ads.internal.client.zza zzaVar, Context context, String str, String str2) {
        zzdzh zzdzhVar = this.zzb;
        if (zzdzhVar != null) {
            zzekk.zzc(context, zzdzhVar, this.zzc, this.zzf, str2, "offline_open");
        }
        if (com.google.android.gms.ads.internal.zzt.zzo().zzx(context)) {
            this.zzf.zzh(this.zzd, str2);
            return false;
        }
        com.google.android.gms.ads.internal.zzt.zzp();
        com.google.android.gms.ads.internal.util.zzbr zzw = com.google.android.gms.ads.internal.util.zzs.zzw(context);
        com.google.android.gms.ads.internal.zzt.zzp();
        boolean areNotificationsEnabled = NotificationManagerCompat.from(context).areNotificationsEnabled();
        boolean zzh = com.google.android.gms.ads.internal.zzt.zzq().zzh(context, "offline_notification_channel");
        zzcno zzcnoVar = (zzcno) zzaVar;
        boolean z = zzcnoVar.zzQ().zzi() && zzcnoVar.zzk() == null;
        if (areNotificationsEnabled && !zzh && zzw != null && !z) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzhC)).booleanValue()) {
                if (zzcnoVar.zzQ().zzi()) {
                    zzekk.zzh(zzcnoVar.zzk(), null, zzw, this.zzf, this.zzb, this.zzc, str2, str);
                } else {
                    ((zzcot) zzaVar).zzaG(zzw, this.zzf, this.zzb, this.zzc, str2, str, 14);
                }
                zzdzh zzdzhVar2 = this.zzb;
                if (zzdzhVar2 != null) {
                    zzekk.zzc(context, zzdzhVar2, this.zzc, this.zzf, str2, "dialog_impression");
                }
                zzaVar.onAdClicked();
                return true;
            }
        }
        this.zzf.zzc(str2);
        if (this.zzb != null) {
            HashMap hashMap = new HashMap();
            if (!areNotificationsEnabled) {
                hashMap.put("dialog_not_shown_reason", "notifications_disabled");
            } else if (zzh) {
                hashMap.put("dialog_not_shown_reason", "notification_channel_disabled");
            } else if (zzw == null) {
                hashMap.put("dialog_not_shown_reason", "work_manager_unavailable");
            } else {
                if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzhC)).booleanValue()) {
                    hashMap.put("dialog_not_shown_reason", "notification_flow_disabled");
                } else if (z) {
                    hashMap.put("dialog_not_shown_reason", "fullscreen_no_activity");
                }
            }
            zzekk.zzd(context, this.zzb, this.zzc, this.zzf, str2, "dialog_not_shown", hashMap);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzk(int i) {
        if (this.zzb == null) {
            return;
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzhK)).booleanValue()) {
            zzfnt zzfntVar = this.zzc;
            zzfns zzb = zzfns.zzb("cct_action");
            zzb.zza("cct_open_status", zzbkg.zza(i));
            zzfntVar.zzb(zzb);
            return;
        }
        zzdzg zza = this.zzb.zza();
        zza.zzb("action", "cct_action");
        zza.zzb("cct_open_status", zzbkg.zza(i));
        zza.zzg();
    }

    /* JADX WARN: Removed duplicated region for block: B:134:0x0328  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x0342  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x035b  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x0365  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x039f  */
    @Override // com.google.android.gms.internal.ads.zzbqd
    /* renamed from: zze */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zza(com.google.android.gms.ads.internal.client.zza r33, java.util.Map r34) {
        /*
            Method dump skipped, instructions count: 1084
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbqn.zza(com.google.android.gms.ads.internal.client.zza, java.util.Map):void");
    }
}
