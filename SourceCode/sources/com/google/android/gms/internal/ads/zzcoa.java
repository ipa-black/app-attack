package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.TrafficStats;
import android.os.StrictMode;
import javax.annotation.ParametersAreNonnullByDefault;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
@ParametersAreNonnullByDefault
/* loaded from: classes4.dex */
public final class zzcoa {
    /* JADX WARN: Type inference failed for: r0v2, types: [com.google.android.gms.internal.ads.zzcno, java.lang.Object] */
    public static final zzcno zza(final Context context, final zzcpd zzcpdVar, final String str, final boolean z, final boolean z2, final zzapj zzapjVar, final zzbki zzbkiVar, final zzchu zzchuVar, zzbjy zzbjyVar, final com.google.android.gms.ads.internal.zzl zzlVar, final com.google.android.gms.ads.internal.zza zzaVar, final zzbew zzbewVar, final zzfil zzfilVar, final zzfio zzfioVar) throws zzcnz {
        zzbjj.zzc(context);
        try {
            zzfyu zzfyuVar = new zzfyu(context, zzcpdVar, str, z, z2, zzapjVar, zzbkiVar, zzchuVar, null, zzlVar, zzaVar, zzbewVar, zzfilVar, zzfioVar) { // from class: com.google.android.gms.internal.ads.zzcnw
                public final /* synthetic */ Context zza;
                public final /* synthetic */ zzcpd zzb;
                public final /* synthetic */ String zzc;
                public final /* synthetic */ boolean zzd;
                public final /* synthetic */ boolean zze;
                public final /* synthetic */ zzapj zzf;
                public final /* synthetic */ zzbki zzg;
                public final /* synthetic */ zzchu zzh;
                public final /* synthetic */ com.google.android.gms.ads.internal.zzl zzi;
                public final /* synthetic */ com.google.android.gms.ads.internal.zza zzj;
                public final /* synthetic */ zzbew zzk;
                public final /* synthetic */ zzfil zzl;
                public final /* synthetic */ zzfio zzm;

                {
                    this.zzi = zzlVar;
                    this.zzj = zzaVar;
                    this.zzk = zzbewVar;
                    this.zzl = zzfilVar;
                    this.zzm = zzfioVar;
                }

                @Override // com.google.android.gms.internal.ads.zzfyu
                public final Object zza() {
                    Context context2 = this.zza;
                    zzcpd zzcpdVar2 = this.zzb;
                    String str2 = this.zzc;
                    boolean z3 = this.zzd;
                    boolean z4 = this.zze;
                    zzapj zzapjVar2 = this.zzf;
                    zzbki zzbkiVar2 = this.zzg;
                    zzchu zzchuVar2 = this.zzh;
                    com.google.android.gms.ads.internal.zzl zzlVar2 = this.zzi;
                    com.google.android.gms.ads.internal.zza zzaVar2 = this.zzj;
                    zzbew zzbewVar2 = this.zzk;
                    zzfil zzfilVar2 = this.zzl;
                    zzfio zzfioVar2 = this.zzm;
                    try {
                        TrafficStats.setThreadStatsTag(264);
                        int i = zzcoh.zza;
                        zzcod zzcodVar = new zzcod(new zzcoh(new zzcpc(context2), zzcpdVar2, str2, z3, z4, zzapjVar2, zzbkiVar2, zzchuVar2, null, zzlVar2, zzaVar2, zzbewVar2, zzfilVar2, zzfioVar2));
                        zzcodVar.setWebViewClient(com.google.android.gms.ads.internal.zzt.zzq().zzd(zzcodVar, zzbewVar2, z4));
                        zzcodVar.setWebChromeClient(new zzcnn(zzcodVar));
                        return zzcodVar;
                    } finally {
                        TrafficStats.clearThreadStatsTag();
                    }
                }
            };
            StrictMode.ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
            StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(threadPolicy).permitDiskReads().permitDiskWrites().build());
            ?? zza = zzfyuVar.zza();
            StrictMode.setThreadPolicy(threadPolicy);
            return zza;
        } catch (Throwable th) {
            throw new zzcnz("Webview initialization failed.", th);
        }
    }
}
