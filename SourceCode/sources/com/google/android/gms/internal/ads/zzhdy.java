package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public abstract class zzhdy extends zzhdw implements zzalr {
    private int zza;

    /* JADX INFO: Access modifiers changed from: protected */
    public zzhdy(String str) {
        super("mvhd");
    }

    public final int zzh() {
        if (!this.zzc) {
            zzg();
        }
        return this.zza;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final long zzi(ByteBuffer byteBuffer) {
        this.zza = zzalq.zzc(byteBuffer.get());
        zzalq.zzd(byteBuffer);
        byteBuffer.get();
        return 4L;
    }
}
