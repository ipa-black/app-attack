package com.google.android.gms.internal.ads;

import java.util.HashSet;
import org.json.JSONObject;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzfrp extends zzfrl {
    public zzfrp(zzfre zzfreVar, HashSet hashSet, JSONObject jSONObject, long j, byte[] bArr) {
        super(zzfreVar, hashSet, jSONObject, j, null);
    }

    private final void zzc(String str) {
        zzfqi zza = zzfqi.zza();
        if (zza != null) {
            for (zzfpx zzfpxVar : zza.zzc()) {
                if (this.zza.contains(zzfpxVar.zzh())) {
                    zzfpxVar.zzg().zzd(str, this.zzc);
                }
            }
        }
    }

    @Override // android.os.AsyncTask
    protected final /* synthetic */ Object doInBackground(Object[] objArr) {
        return this.zzb.toString();
    }

    @Override // com.google.android.gms.internal.ads.zzfrm, android.os.AsyncTask
    protected final /* synthetic */ void onPostExecute(Object obj) {
        String str = (String) obj;
        zzc(str);
        super.onPostExecute(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzfrm
    public final void zza(String str) {
        zzc(str);
        super.onPostExecute(str);
    }
}
