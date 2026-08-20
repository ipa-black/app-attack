package com.google.android.gms.internal.play_billing;

import com.google.android.exoplayer2.C;
import com.google.firebase.messaging.Constants;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
/* compiled from: com.android.billingclient:billing@@6.0.1 */
/* loaded from: classes4.dex */
public final class zzcg {
    static final Charset zza = Charset.forName(C.ASCII_NAME);
    static final Charset zzb = Charset.forName(C.UTF8_NAME);
    static final Charset zzc = Charset.forName(C.ISO88591_NAME);
    public static final byte[] zzd;
    public static final ByteBuffer zze;
    public static final zzbe zzf;

    static {
        byte[] bArr = new byte[0];
        zzd = bArr;
        zze = ByteBuffer.wrap(bArr);
        int i = zzbe.zza;
        zzbc zzbcVar = new zzbc(bArr, 0, 0, false, null);
        try {
            zzbcVar.zza(0);
            zzf = zzbcVar;
        } catch (zzci e2) {
            throw new IllegalArgumentException(e2);
        }
    }

    public static int zza(boolean z) {
        return z ? 1231 : 1237;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzb(int i, byte[] bArr, int i2, int i3) {
        for (int i4 = 0; i4 < i3; i4++) {
            i = (i * 31) + bArr[i4];
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object zzc(Object obj, String str) {
        if (obj != null) {
            return obj;
        }
        throw new NullPointerException(Constants.FirelogAnalytics.PARAM_MESSAGE_TYPE);
    }

    public static String zzd(byte[] bArr) {
        return new String(bArr, zzb);
    }
}
