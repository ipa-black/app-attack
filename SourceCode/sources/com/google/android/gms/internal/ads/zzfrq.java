package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.HashSet;
import org.json.JSONObject;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzfrq extends zzfrl {
    public zzfrq(zzfre zzfreVar, HashSet hashSet, JSONObject jSONObject, long j, byte[] bArr) {
        super(zzfreVar, hashSet, jSONObject, j, null);
    }

    @Override // android.os.AsyncTask
    protected final /* bridge */ /* synthetic */ Object doInBackground(Object[] objArr) {
        if (zzfqy.zzj(this.zzb, this.zzd.zza())) {
            return null;
        }
        this.zzd.zze(this.zzb);
        return this.zzb.toString();
    }

    @Override // com.google.android.gms.internal.ads.zzfrm, android.os.AsyncTask
    protected final /* bridge */ /* synthetic */ void onPostExecute(Object obj) {
        onPostExecute((String) obj);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzfrm
    public final void zza(String str) {
        zzfqi zza;
        if (!TextUtils.isEmpty(str) && (zza = zzfqi.zza()) != null) {
            for (zzfpx zzfpxVar : zza.zzc()) {
                if (this.zza.contains(zzfpxVar.zzh())) {
                    zzfpxVar.zzg().zze(str, this.zzc);
                }
            }
        }
        super.onPostExecute(str);
    }
}
