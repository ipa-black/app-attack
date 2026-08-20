package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzalv extends zzhdw {
    ByteBuffer zza;

    public zzalv(String str) {
        super(str);
    }

    @Override // com.google.android.gms.internal.ads.zzhdw
    public final void zzf(ByteBuffer byteBuffer) {
        this.zza = byteBuffer;
        byteBuffer.position(byteBuffer.position() + byteBuffer.remaining());
    }
}
