package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.common.net.HttpHeaders;
import java.util.HashMap;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONObject;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzeid implements zzfmm {
    private static final Pattern zza = Pattern.compile("([^;]+=[^;]+)(;\\s|$)", 2);
    private final String zzb;
    private final zzfol zzc;
    private final zzfow zzd;

    public zzeid(String str, zzfow zzfowVar, zzfol zzfolVar) {
        this.zzb = str;
        this.zzd = zzfowVar;
        this.zzc = zzfolVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfmm
    public final /* bridge */ /* synthetic */ Object zza(Object obj) throws Exception {
        JSONObject jSONObject;
        zzcce zzcceVar;
        zzede zzedeVar;
        zzcce zzcceVar2;
        zzcce zzcceVar3;
        zzcce zzcceVar4;
        zzcce zzcceVar5;
        zzcce zzcceVar6;
        zzcce zzcceVar7;
        zzcce zzcceVar8;
        JSONObject jSONObject2;
        String str;
        zzeic zzeicVar = (zzeic) obj;
        jSONObject = zzeicVar.zza;
        int optInt = jSONObject.optInt("http_timeout_millis", 60000);
        zzcceVar = zzeicVar.zzb;
        String str2 = "";
        if (zzcceVar.zza() == -2) {
            HashMap hashMap = new HashMap();
            zzcceVar2 = zzeicVar.zzb;
            if (zzcceVar2.zzh() && !TextUtils.isEmpty(this.zzb)) {
                if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzaI)).booleanValue()) {
                    String str3 = this.zzb;
                    if (TextUtils.isEmpty(str3)) {
                        str = "";
                    } else {
                        Matcher matcher = zza.matcher(str3);
                        str = "";
                        while (matcher.find()) {
                            String group = matcher.group(1);
                            if (group != null && (group.toLowerCase(Locale.ROOT).startsWith("id=") || group.toLowerCase(Locale.ROOT).startsWith("ide="))) {
                                if (!TextUtils.isEmpty(str)) {
                                    str = str.concat("; ");
                                }
                                str = str.concat(group);
                            }
                        }
                    }
                    if (!TextUtils.isEmpty(str)) {
                        hashMap.put(HttpHeaders.COOKIE, str);
                    }
                } else {
                    hashMap.put(HttpHeaders.COOKIE, this.zzb);
                }
            }
            zzcceVar3 = zzeicVar.zzb;
            if (zzcceVar3.zzi()) {
                jSONObject2 = zzeicVar.zza;
                zzeie.zza(hashMap, jSONObject2);
            }
            zzcceVar4 = zzeicVar.zzb;
            if (zzcceVar4 != null) {
                zzcceVar7 = zzeicVar.zzb;
                if (!TextUtils.isEmpty(zzcceVar7.zzd())) {
                    zzcceVar8 = zzeicVar.zzb;
                    str2 = zzcceVar8.zzd();
                }
            }
            zzfow zzfowVar = this.zzd;
            zzfol zzfolVar = this.zzc;
            zzfolVar.zzf(true);
            zzfowVar.zza(zzfolVar);
            zzcceVar5 = zzeicVar.zzb;
            String zze = zzcceVar5.zze();
            byte[] bytes = str2.getBytes(zzfxr.zzc);
            zzcceVar6 = zzeicVar.zzb;
            return new zzehy(zze, optInt, hashMap, bytes, "", zzcceVar6.zzi());
        }
        if (zzcceVar.zza() == 1) {
            if (zzcceVar.zzf() != null) {
                str2 = TextUtils.join(", ", zzcceVar.zzf());
                com.google.android.gms.ads.internal.util.zze.zzg(str2);
            }
            zzedeVar = new zzede(2, "Error building request URL: ".concat(String.valueOf(str2)));
        } else {
            zzedeVar = new zzede(1);
        }
        zzfow zzfowVar2 = this.zzd;
        zzfol zzfolVar2 = this.zzc;
        zzfolVar2.zzg(zzedeVar);
        zzfolVar2.zzf(false);
        zzfowVar2.zza(zzfolVar2);
        throw zzedeVar;
    }
}
