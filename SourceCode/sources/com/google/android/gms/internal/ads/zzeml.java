package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import androidx.browser.customtabs.CustomTabsIntent;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import java.util.concurrent.Executor;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzeml implements zzekq {
    private final Context zza;
    private final zzdnw zzb;
    private final Executor zzc;
    private final zzfik zzd;

    public zzeml(Context context, Executor executor, zzdnw zzdnwVar, zzfik zzfikVar) {
        this.zza = context;
        this.zzb = zzdnwVar;
        this.zzc = executor;
        this.zzd = zzfikVar;
    }

    private static String zzd(zzfil zzfilVar) {
        try {
            return zzfilVar.zzw.getString("tab_url");
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzekq
    public final zzgfb zza(final zzfix zzfixVar, final zzfil zzfilVar) {
        String zzd = zzd(zzfilVar);
        final Uri parse = zzd != null ? Uri.parse(zzd) : null;
        return zzger.zzn(zzger.zzi(null), new zzgdy() { // from class: com.google.android.gms.internal.ads.zzemj
            @Override // com.google.android.gms.internal.ads.zzgdy
            public final zzgfb zza(Object obj) {
                return zzeml.this.zzc(parse, zzfixVar, zzfilVar, obj);
            }
        }, this.zzc);
    }

    @Override // com.google.android.gms.internal.ads.zzekq
    public final boolean zzb(zzfix zzfixVar, zzfil zzfilVar) {
        Context context = this.zza;
        return (context instanceof Activity) && zzbkh.zzg(context) && !TextUtils.isEmpty(zzd(zzfilVar));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ zzgfb zzc(Uri uri, zzfix zzfixVar, zzfil zzfilVar, Object obj) throws Exception {
        try {
            CustomTabsIntent build = new CustomTabsIntent.Builder().build();
            build.intent.setData(uri);
            com.google.android.gms.ads.internal.overlay.zzc zzcVar = new com.google.android.gms.ads.internal.overlay.zzc(build.intent, null);
            final zzcig zzcigVar = new zzcig();
            zzdmw zze = this.zzb.zze(new zzdbc(zzfixVar, zzfilVar, null), new zzdmz(new zzdoe() { // from class: com.google.android.gms.internal.ads.zzemk
                @Override // com.google.android.gms.internal.ads.zzdoe
                public final void zza(boolean z, Context context, zzdfa zzdfaVar) {
                    zzcig zzcigVar2 = zzcig.this;
                    try {
                        com.google.android.gms.ads.internal.zzt.zzi();
                        com.google.android.gms.ads.internal.overlay.zzm.zza(context, (AdOverlayInfoParcel) zzcigVar2.get(), true);
                    } catch (Exception unused) {
                    }
                }
            }, null));
            zzcigVar.zzd(new AdOverlayInfoParcel(zzcVar, null, zze.zza(), null, new zzchu(0, 0, false, false, false), null, null));
            this.zzd.zza();
            return zzger.zzi(zze.zzg());
        } catch (Throwable th) {
            com.google.android.gms.ads.internal.util.zze.zzh("Error in CustomTabsAdRenderer", th);
            throw th;
        }
    }
}
