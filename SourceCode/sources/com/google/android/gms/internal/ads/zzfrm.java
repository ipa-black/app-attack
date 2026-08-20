package com.google.android.gms.internal.ads;

import android.os.AsyncTask;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public abstract class zzfrm extends AsyncTask {
    private zzfrn zza;
    protected final zzfre zzd;

    public zzfrm(zzfre zzfreVar, byte[] bArr) {
        this.zzd = zzfreVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* renamed from: zza */
    public void onPostExecute(String str) {
        zzfrn zzfrnVar = this.zza;
        if (zzfrnVar != null) {
            zzfrnVar.zza(this);
        }
    }

    public final void zzb(zzfrn zzfrnVar) {
        this.zza = zzfrnVar;
    }
}
