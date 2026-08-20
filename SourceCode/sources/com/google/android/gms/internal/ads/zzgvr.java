package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.Key;
import javax.crypto.Mac;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzgvr extends ThreadLocal {
    final /* synthetic */ zzgvs zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzgvr(zzgvs zzgvsVar) {
        this.zza = zzgvsVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // java.lang.ThreadLocal
    /* renamed from: zza */
    public final Mac initialValue() {
        String str;
        Key key;
        try {
            zzgve zzgveVar = zzgve.zzb;
            str = this.zza.zzb;
            Mac mac = (Mac) zzgveVar.zza(str);
            key = this.zza.zzc;
            mac.init(key);
            return mac;
        } catch (GeneralSecurityException e2) {
            throw new IllegalStateException(e2);
        }
    }
}
