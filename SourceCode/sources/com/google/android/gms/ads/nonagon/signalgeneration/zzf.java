package com.google.android.gms.ads.nonagon.signalgeneration;

import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
import androidx.exifinterface.media.ExifInterface;
import antlr.Version;
import com.google.android.exoplayer2.metadata.icy.IcyHeaders;
import com.google.android.gms.ads.internal.client.zzba;
import com.google.android.gms.internal.ads.zzbjj;
import com.google.android.gms.internal.ads.zzcib;
import com.google.android.gms.internal.ads.zzdzc;
import com.google.android.gms.internal.ads.zzdzm;
import com.google.android.gms.internal.ads.zzfjg;
import java.util.Map;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes3.dex */
public final class zzf {
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static String zza(String str) {
        char c2;
        if (TextUtils.isEmpty(str)) {
            return "unspecified";
        }
        switch (str.hashCode()) {
            case 1743582862:
                if (str.equals("requester_type_0")) {
                    c2 = 0;
                    break;
                }
                c2 = 65535;
                break;
            case 1743582863:
                if (str.equals("requester_type_1")) {
                    c2 = 1;
                    break;
                }
                c2 = 65535;
                break;
            case 1743582864:
                if (str.equals("requester_type_2")) {
                    c2 = 2;
                    break;
                }
                c2 = 65535;
                break;
            case 1743582865:
                if (str.equals("requester_type_3")) {
                    c2 = 3;
                    break;
                }
                c2 = 65535;
                break;
            case 1743582866:
                if (str.equals("requester_type_4")) {
                    c2 = 4;
                    break;
                }
                c2 = 65535;
                break;
            case 1743582867:
                if (str.equals("requester_type_5")) {
                    c2 = 5;
                    break;
                }
                c2 = 65535;
                break;
            case 1743582868:
                if (str.equals("requester_type_6")) {
                    c2 = 6;
                    break;
                }
                c2 = 65535;
                break;
            case 1743582869:
                if (str.equals("requester_type_7")) {
                    c2 = 7;
                    break;
                }
                c2 = 65535;
                break;
            case 1743582870:
                if (str.equals("requester_type_8")) {
                    c2 = '\b';
                    break;
                }
                c2 = 65535;
                break;
            default:
                c2 = 65535;
                break;
        }
        switch (c2) {
            case 0:
                return "0";
            case 1:
                return IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE;
            case 2:
                return "2";
            case 3:
                return ExifInterface.GPS_MEASUREMENT_3D;
            case 4:
                return "4";
            case 5:
                return "5";
            case 6:
                return "6";
            case 7:
                return Version.subversion;
            case '\b':
                return "8";
            default:
                return str;
        }
    }

    public static String zzb(com.google.android.gms.ads.internal.client.zzl zzlVar) {
        Bundle bundle = zzlVar.zzc;
        return bundle == null ? "unspecified" : bundle.getString("query_info_type");
    }

    public static void zzc(final zzdzm zzdzmVar, final zzdzc zzdzcVar, final String str, final Pair... pairArr) {
        if (((Boolean) zzba.zzc().zzb(zzbjj.zzgv)).booleanValue()) {
            zzcib.zza.execute(new Runnable() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zze
                @Override // java.lang.Runnable
                public final void run() {
                    zzf.zzd(zzdzm.this, zzdzcVar, str, pairArr);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zzd(zzdzm zzdzmVar, zzdzc zzdzcVar, String str, Pair... pairArr) {
        Map zza;
        if (zzdzcVar == null) {
            zza = zzdzmVar.zzc();
        } else {
            zza = zzdzcVar.zza();
        }
        zzf(zza, "action", str);
        for (Pair pair : pairArr) {
            zzf(zza, (String) pair.first, (String) pair.second);
        }
        zzdzmVar.zze(zza);
    }

    public static int zze(zzfjg zzfjgVar) {
        if (zzfjgVar.zzq) {
            return 2;
        }
        com.google.android.gms.ads.internal.client.zzl zzlVar = zzfjgVar.zzd;
        com.google.android.gms.ads.internal.client.zzc zzcVar = zzlVar.zzs;
        if (zzcVar == null && zzlVar.zzx == null) {
            return 1;
        }
        if (zzcVar == null || zzlVar.zzx == null) {
            return zzcVar != null ? 3 : 4;
        }
        return 5;
    }

    private static void zzf(Map map, String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        map.put(str, str2);
    }
}
