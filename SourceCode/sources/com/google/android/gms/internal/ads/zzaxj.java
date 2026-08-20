package com.google.android.gms.internal.ads;

import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzaxj implements zzaxh {
    private zzaxj() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzaxj(zzaxi zzaxiVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzaxh
    public final int zza() {
        return MediaCodecList.getCodecCount();
    }

    @Override // com.google.android.gms.internal.ads.zzaxh
    public final MediaCodecInfo zzb(int i) {
        return MediaCodecList.getCodecInfoAt(i);
    }

    @Override // com.google.android.gms.internal.ads.zzaxh
    public final boolean zzc(String str, MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return "video/avc".equals(str);
    }

    @Override // com.google.android.gms.internal.ads.zzaxh
    public final boolean zzd() {
        return false;
    }
}
