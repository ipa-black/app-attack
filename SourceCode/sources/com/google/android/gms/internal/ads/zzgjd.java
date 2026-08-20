package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.InvalidKeyException;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzgjd extends zzgjb {
    public zzgjd(byte[] bArr) throws GeneralSecurityException {
        super(bArr);
    }

    @Override // com.google.android.gms.internal.ads.zzgjb
    final zzgiz zza(byte[] bArr, int i) throws InvalidKeyException {
        return new zzgjc(bArr, i);
    }
}
