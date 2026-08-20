package com.google.android.gms.internal.p001authapi;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
/* renamed from: com.google.android.gms.internal.auth-api.zzn  reason: invalid package */
/* loaded from: classes4.dex */
final class zzn extends zzp<Status> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzn(zzi zziVar, GoogleApiClient googleApiClient) {
        super(googleApiClient);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    public final /* synthetic */ Result createFailedResult(Status status) {
        return status;
    }

    @Override // com.google.android.gms.internal.p001authapi.zzp
    protected final void zzc(Context context, zzw zzwVar) throws RemoteException {
        zzwVar.zzc(new zzo(this));
    }
}
