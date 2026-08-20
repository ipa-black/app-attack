package com.google.android.gms.internal.ads;

import com.google.android.exoplayer2.C;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.nio.charset.Charset;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzbuq {
    private static final Charset zzc = Charset.forName(C.UTF8_NAME);
    public static final zzbun zza = new zzbup();
    public static final zzbul zzb = new zzbul() { // from class: com.google.android.gms.internal.ads.zzbuo
        @Override // com.google.android.gms.internal.ads.zzbul
        public final Object zza(JSONObject jSONObject) {
            return zzbuq.zza(jSONObject);
        }
    };

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ InputStream zza(JSONObject jSONObject) throws JSONException {
        return new ByteArrayInputStream(jSONObject.toString().getBytes(zzc));
    }
}
