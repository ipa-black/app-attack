package com.google.android.gms.internal.ads;

import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzach {
    private final ByteArrayOutputStream zza;
    private final DataOutputStream zzb;

    public zzach() {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(512);
        this.zza = byteArrayOutputStream;
        this.zzb = new DataOutputStream(byteArrayOutputStream);
    }

    private static void zzb(DataOutputStream dataOutputStream, String str) throws IOException {
        dataOutputStream.writeBytes(str);
        dataOutputStream.writeByte(0);
    }

    public final byte[] zza(zzacg zzacgVar) {
        this.zza.reset();
        try {
            zzb(this.zzb, zzacgVar.zza);
            String str = zzacgVar.zzb;
            if (str == null) {
                str = "";
            }
            zzb(this.zzb, str);
            this.zzb.writeLong(zzacgVar.zzc);
            this.zzb.writeLong(zzacgVar.zzd);
            this.zzb.write(zzacgVar.zze);
            this.zzb.flush();
            return this.zza.toByteArray();
        } catch (IOException e2) {
            throw new RuntimeException(e2);
        }
    }
}
