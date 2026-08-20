package com.google.android.gms.ads.internal.util;

import com.google.android.gms.internal.ads.zzajm;
import com.google.android.gms.internal.ads.zzaki;
import com.google.android.gms.internal.ads.zzakj;
import com.google.android.gms.internal.ads.zzalj;
import com.google.android.gms.internal.ads.zzchn;
import java.util.Collections;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes3.dex */
public final class zzbi extends zzalj {
    final /* synthetic */ byte[] zza;
    final /* synthetic */ Map zzb;
    final /* synthetic */ zzchn zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzbi(zzbo zzboVar, int i, String str, zzakj zzakjVar, zzaki zzakiVar, byte[] bArr, Map map, zzchn zzchnVar) {
        super(i, str, zzakjVar, zzakiVar);
        this.zza = bArr;
        this.zzb = map;
        this.zzc = zzchnVar;
    }

    @Override // com.google.android.gms.internal.ads.zzake
    public final Map zzl() throws zzajm {
        Map map = this.zzb;
        return map == null ? Collections.emptyMap() : map;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzalj, com.google.android.gms.internal.ads.zzake
    public final /* bridge */ /* synthetic */ void zzo(Object obj) {
        zzo((String) obj);
    }

    @Override // com.google.android.gms.internal.ads.zzake
    public final byte[] zzx() throws zzajm {
        byte[] bArr = this.zza;
        if (bArr == null) {
            return null;
        }
        return bArr;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzalj
    public final void zzz(String str) {
        this.zzc.zzg(str);
        super.zzo(str);
    }
}
