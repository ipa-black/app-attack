package com.google.android.gms.internal.p001authapi;

import com.google.android.gms.auth.api.credentials.Credential;
import com.google.android.gms.common.api.Status;
/* renamed from: com.google.android.gms.internal.auth-api.zzk  reason: invalid package */
/* loaded from: classes4.dex */
final class zzk extends zzg {
    private final /* synthetic */ zzj zzan;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzk(zzj zzjVar) {
        this.zzan = zzjVar;
    }

    @Override // com.google.android.gms.internal.p001authapi.zzg, com.google.android.gms.internal.p001authapi.zzu
    public final void zzc(Status status, Credential credential) {
        this.zzan.setResult((zzj) new zzh(status, credential));
    }

    @Override // com.google.android.gms.internal.p001authapi.zzg, com.google.android.gms.internal.p001authapi.zzu
    public final void zzc(Status status) {
        this.zzan.setResult((zzj) zzh.zzd(status));
    }
}
