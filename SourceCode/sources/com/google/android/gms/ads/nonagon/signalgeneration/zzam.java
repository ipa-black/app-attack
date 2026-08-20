package com.google.android.gms.ads.nonagon.signalgeneration;

import android.util.JsonReader;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.google.android.gms.ads.internal.client.zzay;
import com.google.android.gms.internal.ads.zzccb;
import com.google.android.gms.internal.ads.zzeec;
import com.google.android.gms.internal.ads.zzgdy;
import com.google.android.gms.internal.ads.zzger;
import com.google.android.gms.internal.ads.zzgfb;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.concurrent.Executor;
import org.json.JSONException;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes3.dex */
public final class zzam implements zzgdy {
    private final Executor zza;
    private final zzeec zzb;

    public zzam(Executor executor, zzeec zzeecVar) {
        this.zza = executor;
        this.zzb = zzeecVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgdy
    public final /* bridge */ /* synthetic */ zzgfb zza(Object obj) throws Exception {
        final zzccb zzccbVar = (zzccb) obj;
        return zzger.zzn(this.zzb.zzb(zzccbVar), new zzgdy() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzal
            @Override // com.google.android.gms.internal.ads.zzgdy
            public final zzgfb zza(Object obj2) {
                zzccb zzccbVar2 = zzccb.this;
                zzao zzaoVar = new zzao(new JsonReader(new InputStreamReader((InputStream) obj2)));
                try {
                    zzaoVar.zzb = zzay.zzb().zzi(zzccbVar2.zza).toString();
                } catch (JSONException unused) {
                    zzaoVar.zzb = JsonUtils.EMPTY_JSON;
                }
                return zzger.zzi(zzaoVar);
            }
        }, this.zza);
    }
}
