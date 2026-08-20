package com.google.android.gms.internal.p001authapi;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.auth.api.credentials.CredentialRequest;
/* renamed from: com.google.android.gms.internal.auth-api.zzx  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzx extends zzc implements zzw {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzx(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.auth.api.credentials.internal.ICredentialsService");
    }

    @Override // com.google.android.gms.internal.p001authapi.zzw
    public final void zzc(zzu zzuVar, CredentialRequest credentialRequest) throws RemoteException {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        zze.zzc(obtainAndWriteInterfaceToken, zzuVar);
        zze.zzc(obtainAndWriteInterfaceToken, credentialRequest);
        transactAndReadExceptionReturnVoid(1, obtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.p001authapi.zzw
    public final void zzc(zzu zzuVar, zzy zzyVar) throws RemoteException {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        zze.zzc(obtainAndWriteInterfaceToken, zzuVar);
        zze.zzc(obtainAndWriteInterfaceToken, zzyVar);
        transactAndReadExceptionReturnVoid(2, obtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.p001authapi.zzw
    public final void zzc(zzu zzuVar, zzs zzsVar) throws RemoteException {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        zze.zzc(obtainAndWriteInterfaceToken, zzuVar);
        zze.zzc(obtainAndWriteInterfaceToken, zzsVar);
        transactAndReadExceptionReturnVoid(3, obtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.p001authapi.zzw
    public final void zzc(zzu zzuVar) throws RemoteException {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        zze.zzc(obtainAndWriteInterfaceToken, zzuVar);
        transactAndReadExceptionReturnVoid(4, obtainAndWriteInterfaceToken);
    }
}
