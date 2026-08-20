package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.google.android.gms.common.util.Hex;
import java.io.File;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzfto {
    final File zza;
    private final File zzb;
    private final SharedPreferences zzc;
    private final int zzd;

    public zzfto(Context context, int i) {
        this.zzc = context.getSharedPreferences("pcvmspf", 0);
        File dir = context.getDir("pccache", 0);
        zzftp.zza(dir, false);
        this.zzb = dir;
        File dir2 = context.getDir("tmppccache", 0);
        zzftp.zza(dir2, true);
        this.zza = dir2;
        this.zzd = i;
    }

    private final File zzd() {
        File file = new File(this.zzb, Integer.toString(this.zzd - 1));
        if (!file.exists()) {
            file.mkdir();
        }
        return file;
    }

    private final String zze() {
        int i = this.zzd;
        StringBuilder sb = new StringBuilder("FBAMTD");
        sb.append(i - 1);
        return sb.toString();
    }

    private final String zzf() {
        int i = this.zzd;
        StringBuilder sb = new StringBuilder("LATMTD");
        sb.append(i - 1);
        return sb.toString();
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x014a  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0158  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x016a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean zza(com.google.android.gms.internal.ads.zzasc r8, com.google.android.gms.internal.ads.zzftu r9) {
        /*
            Method dump skipped, instructions count: 390
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzfto.zza(com.google.android.gms.internal.ads.zzasc, com.google.android.gms.internal.ads.zzftu):boolean");
    }

    final zzasf zzb(int i) {
        String string;
        if (i == 1) {
            string = this.zzc.getString(zzf(), null);
        } else {
            string = this.zzc.getString(zze(), null);
        }
        if (TextUtils.isEmpty(string)) {
            return null;
        }
        try {
            zzasf zzh = zzasf.zzh(zzgwv.zzv(Hex.stringToBytes(string)));
            String zzk = zzh.zzk();
            File zzb = zzftp.zzb(zzk, "pcam.jar", zzd());
            if (!zzb.exists()) {
                zzb = zzftp.zzb(zzk, "pcam", zzd());
            }
            File zzb2 = zzftp.zzb(zzk, "pcbc", zzd());
            if (zzb.exists()) {
                if (zzb2.exists()) {
                    return zzh;
                }
            }
        } catch (zzgyp unused) {
        }
        return null;
    }

    public final zzftn zzc(int i) {
        zzasf zzb = zzb(1);
        if (zzb == null) {
            return null;
        }
        String zzk = zzb.zzk();
        File zzb2 = zzftp.zzb(zzk, "pcam.jar", zzd());
        if (!zzb2.exists()) {
            zzb2 = zzftp.zzb(zzk, "pcam", zzd());
        }
        return new zzftn(zzb, zzb2, zzftp.zzb(zzk, "pcbc", zzd()), zzftp.zzb(zzk, "pcopt", zzd()));
    }
}
