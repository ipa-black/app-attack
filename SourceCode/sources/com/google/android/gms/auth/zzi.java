package com.google.android.gms.auth;

import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import com.appodeal.ads.modules.common.internal.LogConstants;
import com.google.android.gms.common.logging.Logger;
import com.google.android.gms.internal.auth.zzay;
import java.io.IOException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class zzi implements zzj<Boolean> {
    private final /* synthetic */ String zzt;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzi(String str) {
        this.zzt = str;
    }

    @Override // com.google.android.gms.auth.zzj
    public final /* synthetic */ Boolean zzb(IBinder iBinder) throws RemoteException, IOException, GoogleAuthException {
        Object zza;
        Logger logger;
        zza = zzd.zza(com.google.android.gms.internal.auth.zzf.zza(iBinder).zza(this.zzt));
        Bundle bundle = (Bundle) zza;
        String string = bundle.getString(LogConstants.EVENT_ERROR);
        Intent intent = (Intent) bundle.getParcelable("userRecoveryIntent");
        zzay zzc = zzay.zzc(string);
        if (zzay.SUCCESS.equals(zzc)) {
            return true;
        }
        if (!zzay.zza(zzc)) {
            throw new GoogleAuthException(string);
        }
        logger = zzd.zzn;
        String valueOf = String.valueOf(zzc);
        logger.w("GoogleAuthUtil", new StringBuilder(String.valueOf(valueOf).length() + 31).append("isUserRecoverableError status: ").append(valueOf).toString());
        throw new UserRecoverableAuthException(string, intent);
    }
}
