package com.google.android.gms.internal.ads;

import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.exoplayer2.metadata.icy.IcyHeaders;
import java.util.HashMap;
import java.util.Map;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzbqc {
    public static final zzbqd zza = new zzbqd() { // from class: com.google.android.gms.internal.ads.zzbph
        @Override // com.google.android.gms.internal.ads.zzbqd
        public final void zza(Object obj, Map map) {
            zzcop zzcopVar = (zzcop) obj;
            zzbqd zzbqdVar = zzbqc.zza;
            String str = (String) map.get("urls");
            if (TextUtils.isEmpty(str)) {
                com.google.android.gms.ads.internal.util.zze.zzj("URLs missing in canOpenURLs GMSG.");
                return;
            }
            String[] split = str.split(",");
            HashMap hashMap = new HashMap();
            PackageManager packageManager = zzcopVar.getContext().getPackageManager();
            for (String str2 : split) {
                String[] split2 = str2.split(";", 2);
                boolean z = true;
                if (packageManager.resolveActivity(new Intent(split2.length > 1 ? split2[1].trim() : "android.intent.action.VIEW", Uri.parse(split2[0].trim())), 65536) == null) {
                    z = false;
                }
                Boolean valueOf = Boolean.valueOf(z);
                hashMap.put(str2, valueOf);
                com.google.android.gms.ads.internal.util.zze.zza("/canOpenURLs;" + str2 + ";" + valueOf);
            }
            ((zzbsw) zzcopVar).zzd("openableURLs", hashMap);
        }
    };
    public static final zzbqd zzb = new zzbqd() { // from class: com.google.android.gms.internal.ads.zzbpi
        @Override // com.google.android.gms.internal.ads.zzbqd
        public final void zza(Object obj, Map map) {
            zzcop zzcopVar = (zzcop) obj;
            zzbqd zzbqdVar = zzbqc.zza;
            if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzhu)).booleanValue()) {
                com.google.android.gms.ads.internal.util.zze.zzj("canOpenAppGmsgHandler disabled.");
                return;
            }
            String str = (String) map.get("package_name");
            if (TextUtils.isEmpty(str)) {
                com.google.android.gms.ads.internal.util.zze.zzj("Package name missing in canOpenApp GMSG.");
                return;
            }
            HashMap hashMap = new HashMap();
            Boolean valueOf = Boolean.valueOf(zzcopVar.getContext().getPackageManager().getLaunchIntentForPackage(str) != null);
            hashMap.put(str, valueOf);
            com.google.android.gms.ads.internal.util.zze.zza("/canOpenApp;" + str + ";" + valueOf);
            ((zzbsw) zzcopVar).zzd("openableApp", hashMap);
        }
    };
    public static final zzbqd zzc = new zzbqd() { // from class: com.google.android.gms.internal.ads.zzbpa
        @Override // com.google.android.gms.internal.ads.zzbqd
        public final void zza(Object obj, Map map) {
            zzbqc.zzc((zzcop) obj, map);
        }
    };
    public static final zzbqd zzd = new zzbpu();
    public static final zzbqd zze = new zzbpv();
    public static final zzbqd zzf = new zzbqd() { // from class: com.google.android.gms.internal.ads.zzbpg
        @Override // com.google.android.gms.internal.ads.zzbqd
        public final void zza(Object obj, Map map) {
            zzcop zzcopVar = (zzcop) obj;
            zzbqd zzbqdVar = zzbqc.zza;
            String str = (String) map.get("u");
            if (str == null) {
                com.google.android.gms.ads.internal.util.zze.zzj("URL missing from httpTrack GMSG.");
            } else {
                new com.google.android.gms.ads.internal.util.zzby(zzcopVar.getContext(), ((zzcox) zzcopVar).zzp().zza, str).zzb();
            }
        }
    };
    public static final zzbqd zzg = new zzbpw();
    public static final zzbqd zzh = new zzbpx();
    public static final zzbqd zzi = new zzbqd() { // from class: com.google.android.gms.internal.ads.zzbpf
        @Override // com.google.android.gms.internal.ads.zzbqd
        public final void zza(Object obj, Map map) {
            zzcow zzcowVar = (zzcow) obj;
            zzbqd zzbqdVar = zzbqc.zza;
            String str = (String) map.get("tx");
            String str2 = (String) map.get("ty");
            String str3 = (String) map.get("td");
            try {
                int parseInt = Integer.parseInt(str);
                int parseInt2 = Integer.parseInt(str2);
                int parseInt3 = Integer.parseInt(str3);
                zzapj zzK = zzcowVar.zzK();
                if (zzK != null) {
                    zzK.zzc().zzl(parseInt, parseInt2, parseInt3);
                }
            } catch (NumberFormatException unused) {
                com.google.android.gms.ads.internal.util.zze.zzj("Could not parse touch parameters from gmsg.");
            }
        }
    };
    public static final zzbqd zzj = new zzbpy();
    public static final zzbqd zzk = new zzbpz();
    public static final zzbqd zzl = new zzclo();
    public static final zzbqd zzm = new zzclp();
    public static final zzbqd zzn = new zzboz();
    public static final zzbqr zzo = new zzbqr();
    public static final zzbqd zzp = new zzbqa();
    public static final zzbqd zzq = new zzbqb();
    public static final zzbqd zzr = new zzbpj();
    public static final zzbqd zzs = new zzbpk();
    public static final zzbqd zzt = new zzbpl();
    public static final zzbqd zzu = new zzbpm();
    public static final zzbqd zzv = new zzbpn();
    public static final zzbqd zzw = new zzbpo();
    public static final zzbqd zzx = new zzbpp();
    public static final zzbqd zzy = new zzbpq();
    public static final zzbqd zzz = new zzbpr();
    public static final zzbqd zzA = new zzbps();

    public static zzbqd zza(final zzdmc zzdmcVar) {
        return new zzbqd() { // from class: com.google.android.gms.internal.ads.zzbpe
            @Override // com.google.android.gms.internal.ads.zzbqd
            public final void zza(Object obj, Map map) {
                zzcno zzcnoVar = (zzcno) obj;
                zzbqc.zzd(map, zzdmc.this);
                String str = (String) map.get("u");
                if (str == null) {
                    com.google.android.gms.ads.internal.util.zze.zzj("URL missing from click GMSG.");
                } else {
                    zzger.zzr(zzbqc.zzb(zzcnoVar, str), new zzbpt(zzcnoVar), zzcib.zza);
                }
            }
        };
    }

    public static zzgfb zzb(zzcno zzcnoVar, String str) {
        Uri parse = Uri.parse(str);
        try {
            zzapj zzK = zzcnoVar.zzK();
            if (zzK != null && zzK.zzf(parse)) {
                parse = zzK.zza(parse, zzcnoVar.getContext(), zzcnoVar.zzH(), zzcnoVar.zzk());
            }
        } catch (zzapk unused) {
            com.google.android.gms.ads.internal.util.zze.zzj("Unable to append parameter to URL: ".concat(str));
        }
        final String zzb2 = zzcfv.zzb(parse, zzcnoVar.getContext());
        long longValue = ((Long) zzbky.zze.zze()).longValue();
        if (longValue <= 0 || longValue > 224400003) {
            return zzger.zzi(zzb2);
        }
        return zzger.zzf(zzger.zzm(zzger.zzf(zzgei.zzv(zzcnoVar.zzT()), Throwable.class, new zzfxt() { // from class: com.google.android.gms.internal.ads.zzbpb
            @Override // com.google.android.gms.internal.ads.zzfxt
            public final Object apply(Object obj) {
                Throwable th = (Throwable) obj;
                zzbqd zzbqdVar = zzbqc.zza;
                if (((Boolean) zzbky.zzk.zze()).booleanValue()) {
                    com.google.android.gms.ads.internal.zzt.zzo().zzu(th, "prepareClickUrl.attestation1");
                    return "failure_click_attok";
                }
                return "failure_click_attok";
            }
        }, zzcib.zzf), new zzfxt() { // from class: com.google.android.gms.internal.ads.zzbpc
            @Override // com.google.android.gms.internal.ads.zzfxt
            public final Object apply(Object obj) {
                String str2 = zzb2;
                String str3 = (String) obj;
                zzbqd zzbqdVar = zzbqc.zza;
                if (str3 != null) {
                    if (((Boolean) zzbky.zzf.zze()).booleanValue()) {
                        String[] strArr = {".doubleclick.net", ".googleadservices.com", ".googlesyndication.com"};
                        String host = Uri.parse(str2).getHost();
                        for (int i = 0; i < 3; i++) {
                            if (!host.endsWith(strArr[i])) {
                            }
                        }
                    }
                    String str4 = (String) zzbky.zza.zze();
                    String str5 = (String) zzbky.zzb.zze();
                    if (!TextUtils.isEmpty(str4)) {
                        str2 = str2.replace(str4, str3);
                    }
                    if (!TextUtils.isEmpty(str5)) {
                        Uri parse2 = Uri.parse(str2);
                        if (TextUtils.isEmpty(parse2.getQueryParameter(str5))) {
                            return parse2.buildUpon().appendQueryParameter(str5, str3).toString();
                        }
                    }
                }
                return str2;
            }
        }, zzcib.zzf), Throwable.class, new zzfxt() { // from class: com.google.android.gms.internal.ads.zzbpd
            @Override // com.google.android.gms.internal.ads.zzfxt
            public final Object apply(Object obj) {
                String str2 = zzb2;
                Throwable th = (Throwable) obj;
                zzbqd zzbqdVar = zzbqc.zza;
                if (((Boolean) zzbky.zzk.zze()).booleanValue()) {
                    com.google.android.gms.ads.internal.zzt.zzo().zzu(th, "prepareClickUrl.attestation2");
                }
                return str2;
            }
        }, zzcib.zzf);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Can't wrap try/catch for region: R(16:10|11|12|(12:50|51|15|(10:17|(1:19)|20|(1:22)|23|(1:25)|26|(1:28)|29|(2:31|(1:33)))|34|35|36|(1:38)|39|40|42|43)|14|15|(0)|34|35|36|(0)|39|40|42|43|8) */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00ca, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00cb, code lost:
        com.google.android.gms.ads.internal.zzt.zzo().zzu(r0, r8.toString());
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00df, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00e0, code lost:
        com.google.android.gms.ads.internal.util.zze.zzh("Error constructing openable urls response.", r0);
     */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0079  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00da  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ void zzc(com.google.android.gms.internal.ads.zzcop r16, java.util.Map r17) {
        /*
            Method dump skipped, instructions count: 276
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbqc.zzc(com.google.android.gms.internal.ads.zzcop, java.util.Map):void");
    }

    public static void zzd(Map map, zzdmc zzdmcVar) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zziV)).booleanValue() && map.containsKey("sc") && ((String) map.get("sc")).equals(IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE) && zzdmcVar != null) {
            zzdmcVar.zzq();
        }
    }
}
