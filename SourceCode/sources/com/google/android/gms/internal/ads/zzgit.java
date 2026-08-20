package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzgit extends zzglh {
    final /* synthetic */ zzgiu zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzgit(zzgiu zzgiuVar, Class cls) {
        super(cls);
        this.zza = zzgiuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzglh
    public final /* bridge */ /* synthetic */ zzgzn zza(zzgzn zzgznVar) throws GeneralSecurityException {
        zzgul zzgulVar = (zzgul) zzgznVar;
        zzguh zzc = zzgui.zzc();
        zzc.zzb(0);
        zzc.zza(zzgwv.zzv(zzgvv.zza(32)));
        return (zzgui) zzc.zzak();
    }

    @Override // com.google.android.gms.internal.ads.zzglh
    public final /* synthetic */ zzgzn zzb(zzgwv zzgwvVar) throws zzgyp {
        return zzgul.zzd(zzgwvVar, zzgxp.zza());
    }

    @Override // com.google.android.gms.internal.ads.zzglh
    public final Map zzc() throws GeneralSecurityException {
        HashMap hashMap = new HashMap();
        hashMap.put("XCHACHA20_POLY1305", new zzglg(zzgul.zzc(), 1));
        hashMap.put("XCHACHA20_POLY1305_RAW", new zzglg(zzgul.zzc(), 3));
        return Collections.unmodifiableMap(hashMap);
    }

    @Override // com.google.android.gms.internal.ads.zzglh
    public final /* bridge */ /* synthetic */ void zzd(zzgzn zzgznVar) throws GeneralSecurityException {
        zzgul zzgulVar = (zzgul) zzgznVar;
    }
}
