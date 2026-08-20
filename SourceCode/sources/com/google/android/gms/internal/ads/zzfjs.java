package com.google.android.gms.internal.ads;

import android.util.Base64;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.metadata.icy.IcyHeaders;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.security.GeneralSecurityException;
import javax.annotation.Nullable;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzfjs {
    public zzfjs() {
        try {
            zzghp.zza();
        } catch (GeneralSecurityException e2) {
            com.google.android.gms.ads.internal.util.zze.zza("Failed to Configure Aead. ".concat(e2.toString()));
            com.google.android.gms.ads.internal.zzt.zzo().zzu(e2, "CryptoUtils.registerAead");
        }
    }

    public static final String zza() {
        zzgws zzt = zzgwv.zzt();
        try {
            zzgga.zzb(zzggw.zzb(zzggq.zza("AES128_GCM")), zzgfy.zzb(zzt));
        } catch (IOException | GeneralSecurityException e2) {
            com.google.android.gms.ads.internal.util.zze.zza("Failed to generate key".concat(e2.toString()));
            com.google.android.gms.ads.internal.zzt.zzo().zzu(e2, "CryptoUtils.generateKey");
        }
        String encodeToString = Base64.encodeToString(zzt.zzb().zzE(), 11);
        zzt.zzc();
        return encodeToString;
    }

    @Nullable
    public static final String zzb(byte[] bArr, byte[] bArr2, String str, zzdzc zzdzcVar) {
        zzggw zzc = zzc(str);
        if (zzc == null) {
            return null;
        }
        try {
            byte[] zza = ((zzgfw) zzc.zzd(zzgfw.class)).zza(bArr, bArr2);
            zzdzcVar.zza().put("ds", IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE);
            return new String(zza, C.UTF8_NAME);
        } catch (UnsupportedEncodingException | GeneralSecurityException e2) {
            com.google.android.gms.ads.internal.util.zze.zza("Failed to decrypt ".concat(e2.toString()));
            com.google.android.gms.ads.internal.zzt.zzo().zzu(e2, "CryptoUtils.decrypt");
            zzdzcVar.zza().put("dsf", e2.toString());
            return null;
        }
    }

    @Nullable
    private static final zzggw zzc(String str) {
        try {
            return zzgga.zza(zzgfx.zzb(Base64.decode(str, 11)));
        } catch (IOException | GeneralSecurityException e2) {
            com.google.android.gms.ads.internal.util.zze.zza("Failed to get keysethandle".concat(e2.toString()));
            com.google.android.gms.ads.internal.zzt.zzo().zzu(e2, "CryptoUtils.getHandle");
            return null;
        }
    }
}
