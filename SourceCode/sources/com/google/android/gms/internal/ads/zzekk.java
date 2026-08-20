package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Resources;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import android.os.Build;
import androidx.browser.customtabs.CustomTabsCallback;
import androidx.core.app.NotificationCompat;
import com.google.android.gms.ads.AdService;
import com.google.android.gms.ads.impl.R;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.onesignal.OneSignalDbContract;
import java.util.HashMap;
import java.util.Map;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzekk extends zzbzi {
    private final Context zza;
    private final zzdzh zzb;
    private final zzcht zzc;
    private final zzekc zzd;
    private final zzfnt zze;

    public zzekk(Context context, zzekc zzekcVar, zzcht zzchtVar, zzdzh zzdzhVar, zzfnt zzfntVar) {
        this.zza = context;
        this.zzb = zzdzhVar;
        this.zzc = zzchtVar;
        this.zzd = zzekcVar;
        this.zze = zzfntVar;
    }

    public static void zzc(Context context, zzdzh zzdzhVar, zzfnt zzfntVar, zzekc zzekcVar, String str, String str2) {
        zzd(context, zzdzhVar, zzfntVar, zzekcVar, str, str2, new HashMap());
    }

    public static void zzd(Context context, zzdzh zzdzhVar, zzfnt zzfntVar, zzekc zzekcVar, String str, String str2, Map map) {
        String zzf;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzhK)).booleanValue()) {
            zzfns zzb = zzfns.zzb(str2);
            zzb.zza("gqi", str);
            zzb.zza("device_connectivity", true == com.google.android.gms.ads.internal.zzt.zzo().zzx(context) ? CustomTabsCallback.ONLINE_EXTRAS_KEY : "offline");
            zzb.zza("event_timestamp", String.valueOf(com.google.android.gms.ads.internal.zzt.zzB().currentTimeMillis()));
            for (Map.Entry entry : map.entrySet()) {
                zzb.zza((String) entry.getKey(), (String) entry.getValue());
            }
            zzf = zzfntVar.zza(zzb);
        } else {
            zzdzg zza = zzdzhVar.zza();
            zza.zzb("gqi", str);
            zza.zzb("action", str2);
            zza.zzb("device_connectivity", true == com.google.android.gms.ads.internal.zzt.zzo().zzx(context) ? CustomTabsCallback.ONLINE_EXTRAS_KEY : "offline");
            zza.zzb("event_timestamp", String.valueOf(com.google.android.gms.ads.internal.zzt.zzB().currentTimeMillis()));
            for (Map.Entry entry2 : map.entrySet()) {
                zza.zzb((String) entry2.getKey(), (String) entry2.getValue());
            }
            zzf = zza.zzf();
        }
        zzekcVar.zzd(new zzeke(com.google.android.gms.ads.internal.zzt.zzB().currentTimeMillis(), str, zzf, 2));
    }

    public static void zzh(final Activity activity, final com.google.android.gms.ads.internal.overlay.zzl zzlVar, final com.google.android.gms.ads.internal.util.zzbr zzbrVar, final zzekc zzekcVar, final zzdzh zzdzhVar, final zzfnt zzfntVar, final String str, final String str2) {
        com.google.android.gms.ads.internal.zzt.zzp();
        AlertDialog.Builder zzG = com.google.android.gms.ads.internal.util.zzs.zzG(activity);
        final Resources zzd = com.google.android.gms.ads.internal.zzt.zzo().zzd();
        zzG.setTitle(zzd == null ? "Open ad when you're back online." : zzd.getString(R.string.offline_opt_in_title)).setMessage(zzd == null ? "We'll send you a notification with a link to the advertiser site." : zzd.getString(R.string.offline_opt_in_message)).setPositiveButton(zzd == null ? "OK" : zzd.getString(R.string.offline_opt_in_confirm), new DialogInterface.OnClickListener() { // from class: com.google.android.gms.internal.ads.zzekg
            /* JADX WARN: Code restructure failed: missing block: B:7:0x003d, code lost:
                if (r0.zzf(com.google.android.gms.dynamic.ObjectWrapper.wrap(r10), r14, r13) == false) goto L14;
             */
            @Override // android.content.DialogInterface.OnClickListener
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final void onClick(android.content.DialogInterface r19, int r20) {
                /*
                    r18 = this;
                    r1 = r18
                    com.google.android.gms.internal.ads.zzdzh r9 = com.google.android.gms.internal.ads.zzdzh.this
                    android.app.Activity r10 = r2
                    com.google.android.gms.internal.ads.zzfnt r11 = r3
                    com.google.android.gms.internal.ads.zzekc r12 = r4
                    java.lang.String r13 = r5
                    com.google.android.gms.ads.internal.util.zzbr r0 = r6
                    java.lang.String r14 = r7
                    android.content.res.Resources r15 = r8
                    com.google.android.gms.ads.internal.overlay.zzl r8 = r9
                    if (r9 == 0) goto L34
                    java.util.HashMap r7 = new java.util.HashMap
                    r7.<init>()
                    java.lang.String r2 = "dialog_action"
                    java.lang.String r3 = "confirm"
                    r7.put(r2, r3)
                    java.lang.String r16 = "dialog_click"
                    r2 = r10
                    r3 = r9
                    r4 = r11
                    r5 = r12
                    r6 = r13
                    r17 = r7
                    r7 = r16
                    r1 = r8
                    r8 = r17
                    com.google.android.gms.internal.ads.zzekk.zzd(r2, r3, r4, r5, r6, r7, r8)
                    goto L35
                L34:
                    r1 = r8
                L35:
                    com.google.android.gms.dynamic.IObjectWrapper r2 = com.google.android.gms.dynamic.ObjectWrapper.wrap(r10)     // Catch: android.os.RemoteException -> L40
                    boolean r0 = r0.zzf(r2, r14, r13)     // Catch: android.os.RemoteException -> L40
                    if (r0 != 0) goto L55
                    goto L46
                L40:
                    r0 = move-exception
                    java.lang.String r2 = "Failed to schedule offline notification poster."
                    com.google.android.gms.ads.internal.util.zze.zzh(r2, r0)
                L46:
                    r12.zzc(r13)
                    if (r9 == 0) goto L55
                    java.lang.String r7 = "offline_notification_worker_not_scheduled"
                    r2 = r10
                    r3 = r9
                    r4 = r11
                    r5 = r12
                    r6 = r13
                    com.google.android.gms.internal.ads.zzekk.zzc(r2, r3, r4, r5, r6, r7)
                L55:
                    com.google.android.gms.ads.internal.zzt.zzp()
                    android.app.AlertDialog$Builder r0 = com.google.android.gms.ads.internal.util.zzs.zzG(r10)
                    if (r15 != 0) goto L61
                    java.lang.String r2 = "You'll get a notification with the link when you're back online"
                    goto L67
                L61:
                    int r2 = com.google.android.gms.ads.impl.R.string.offline_opt_in_confirmation
                    java.lang.String r2 = r15.getString(r2)
                L67:
                    android.app.AlertDialog$Builder r2 = r0.setMessage(r2)
                    com.google.android.gms.internal.ads.zzekf r3 = new com.google.android.gms.internal.ads.zzekf
                    r3.<init>()
                    r2.setOnCancelListener(r3)
                    android.app.AlertDialog r0 = r0.create()
                    r0.show()
                    java.util.Timer r2 = new java.util.Timer
                    r2.<init>()
                    com.google.android.gms.internal.ads.zzekj r3 = new com.google.android.gms.internal.ads.zzekj
                    r3.<init>(r0, r2, r1)
                    r0 = 3000(0xbb8, double:1.482E-320)
                    r2.schedule(r3, r0)
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzekg.onClick(android.content.DialogInterface, int):void");
            }
        }).setNegativeButton(zzd == null ? "No thanks" : zzd.getString(R.string.offline_opt_in_decline), new DialogInterface.OnClickListener() { // from class: com.google.android.gms.internal.ads.zzekh
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                zzekc zzekcVar2 = zzekc.this;
                String str3 = str;
                zzdzh zzdzhVar2 = zzdzhVar;
                Activity activity2 = activity;
                zzfnt zzfntVar2 = zzfntVar;
                com.google.android.gms.ads.internal.overlay.zzl zzlVar2 = zzlVar;
                zzekcVar2.zzc(str3);
                if (zzdzhVar2 != null) {
                    HashMap hashMap = new HashMap();
                    hashMap.put("dialog_action", "dismiss");
                    zzekk.zzd(activity2, zzdzhVar2, zzfntVar2, zzekcVar2, str3, "dialog_click", hashMap);
                }
                if (zzlVar2 != null) {
                    zzlVar2.zzb();
                }
            }
        }).setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.google.android.gms.internal.ads.zzeki
            @Override // android.content.DialogInterface.OnCancelListener
            public final void onCancel(DialogInterface dialogInterface) {
                zzekc zzekcVar2 = zzekc.this;
                String str3 = str;
                zzdzh zzdzhVar2 = zzdzhVar;
                Activity activity2 = activity;
                zzfnt zzfntVar2 = zzfntVar;
                com.google.android.gms.ads.internal.overlay.zzl zzlVar2 = zzlVar;
                zzekcVar2.zzc(str3);
                if (zzdzhVar2 != null) {
                    HashMap hashMap = new HashMap();
                    hashMap.put("dialog_action", "dismiss");
                    zzekk.zzd(activity2, zzdzhVar2, zzfntVar2, zzekcVar2, str3, "dialog_click", hashMap);
                }
                if (zzlVar2 != null) {
                    zzlVar2.zzb();
                }
            }
        });
        zzG.create().show();
    }

    private final void zzi(String str, String str2, Map map) {
        zzd(this.zza, this.zzb, this.zze, this.zzd, str, str2, map);
    }

    private static final PendingIntent zzj(Context context, String str, String str2, String str3) {
        Intent intent = new Intent();
        intent.setClassName(context, AdService.CLASS_NAME);
        intent.setAction(str);
        intent.putExtra("offline_notification_action", str);
        intent.putExtra("gws_query_id", str2);
        intent.putExtra("uri", str3);
        return zzfvk.zza(context, 0, intent, zzfvk.zza | 1073741824, 0);
    }

    @Override // com.google.android.gms.internal.ads.zzbzj
    public final void zze(Intent intent) {
        String stringExtra = intent.getStringExtra("offline_notification_action");
        if (stringExtra.equals("offline_notification_clicked") || stringExtra.equals("offline_notification_dismissed")) {
            String stringExtra2 = intent.getStringExtra("gws_query_id");
            String stringExtra3 = intent.getStringExtra("uri");
            boolean zzx = com.google.android.gms.ads.internal.zzt.zzo().zzx(this.zza);
            HashMap hashMap = new HashMap();
            if (stringExtra.equals("offline_notification_clicked")) {
                hashMap.put("offline_notification_action", "offline_notification_clicked");
                r8 = true == zzx ? (char) 1 : (char) 2;
                hashMap.put("obvs", String.valueOf(Build.VERSION.SDK_INT));
                hashMap.put("olaih", String.valueOf(stringExtra3.startsWith("http")));
                try {
                    Context context = this.zza;
                    Intent launchIntentForPackage = context.getPackageManager().getLaunchIntentForPackage(stringExtra3);
                    if (launchIntentForPackage == null) {
                        launchIntentForPackage = new Intent("android.intent.action.VIEW");
                        launchIntentForPackage.setData(Uri.parse(stringExtra3));
                    }
                    launchIntentForPackage.addFlags(268435456);
                    context.startActivity(launchIntentForPackage);
                    hashMap.put("olaa", "olas");
                } catch (ActivityNotFoundException unused) {
                    hashMap.put("olaa", "olaf");
                }
            } else {
                hashMap.put("offline_notification_action", "offline_notification_dismissed");
            }
            zzi(stringExtra2, "offline_notification_action", hashMap);
            try {
                SQLiteDatabase writableDatabase = this.zzd.getWritableDatabase();
                if (r8 == 1) {
                    this.zzd.zzg(writableDatabase, this.zzc, stringExtra2);
                } else {
                    zzekc.zzi(writableDatabase, stringExtra2);
                }
            } catch (SQLiteException e2) {
                com.google.android.gms.ads.internal.util.zze.zzg("Failed to get writable offline buffering database: ".concat(e2.toString()));
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbzj
    public final void zzf() {
        zzekc zzekcVar = this.zzd;
        final zzcht zzchtVar = this.zzc;
        zzekcVar.zze(new zzfmm() { // from class: com.google.android.gms.internal.ads.zzejy
            @Override // com.google.android.gms.internal.ads.zzfmm
            public final Object zza(Object obj) {
                zzekc.zzb(zzcht.this, (SQLiteDatabase) obj);
                return null;
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzbzj
    public final void zzg(IObjectWrapper iObjectWrapper, String str, String str2) {
        String str3;
        Context context = (Context) ObjectWrapper.unwrap(iObjectWrapper);
        com.google.android.gms.ads.internal.zzt.zzq().zzg(context, "offline_notification_channel", "AdMob Offline Notifications");
        PendingIntent zzj = zzj(context, "offline_notification_clicked", str2, str);
        PendingIntent zzj2 = zzj(context, "offline_notification_dismissed", str2, str);
        Resources zzd = com.google.android.gms.ads.internal.zzt.zzo().zzd();
        NotificationCompat.Builder smallIcon = new NotificationCompat.Builder(context, "offline_notification_channel").setContentTitle(zzd == null ? "View the ad you saved when you were offline" : zzd.getString(R.string.offline_notification_title)).setContentText(zzd == null ? "Tap to open ad" : zzd.getString(R.string.offline_notification_text)).setAutoCancel(true).setDeleteIntent(zzj2).setContentIntent(zzj).setSmallIcon(context.getApplicationInfo().icon);
        NotificationManager notificationManager = (NotificationManager) context.getSystemService(OneSignalDbContract.NotificationTable.TABLE_NAME);
        HashMap hashMap = new HashMap();
        try {
            notificationManager.notify(str2, 54321, smallIcon.build());
            str3 = "offline_notification_impression";
        } catch (IllegalArgumentException e2) {
            hashMap.put("notification_not_shown_reason", e2.getMessage());
            str3 = "offline_notification_failed";
        }
        zzi(str2, str3, hashMap);
    }
}
