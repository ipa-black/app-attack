package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzggq {
    public static zzggp zza(String str) throws GeneralSecurityException {
        zzggp zzggpVar = (zzggp) zzghm.zzk().get(str);
        if (zzggpVar != null) {
            return zzggpVar;
        }
        throw new GeneralSecurityException("cannot find key template: ".concat(str));
    }
}
