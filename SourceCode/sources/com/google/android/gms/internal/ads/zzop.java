package com.google.android.gms.internal.ads;

import android.media.AudioTrack;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzop extends AudioTrack.StreamEventCallback {
    final /* synthetic */ zzos zza;
    final /* synthetic */ zzoq zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzop(zzoq zzoqVar, zzos zzosVar) {
        this.zzb = zzoqVar;
        this.zza = zzosVar;
    }

    @Override // android.media.AudioTrack.StreamEventCallback
    public final void onDataRequest(AudioTrack audioTrack, int i) {
        AudioTrack audioTrack2;
        zznt zzntVar;
        boolean z;
        zznt zzntVar2;
        audioTrack2 = this.zzb.zza.zzt;
        if (audioTrack.equals(audioTrack2)) {
            zzos zzosVar = this.zzb.zza;
            zzntVar = zzosVar.zzq;
            if (zzntVar != null) {
                z = zzosVar.zzR;
                if (z) {
                    zzntVar2 = zzosVar.zzq;
                    zzntVar2.zzb();
                }
            }
        }
    }

    @Override // android.media.AudioTrack.StreamEventCallback
    public final void onTearDown(AudioTrack audioTrack) {
        AudioTrack audioTrack2;
        zznt zzntVar;
        boolean z;
        zznt zzntVar2;
        audioTrack2 = this.zzb.zza.zzt;
        if (audioTrack.equals(audioTrack2)) {
            zzos zzosVar = this.zzb.zza;
            zzntVar = zzosVar.zzq;
            if (zzntVar != null) {
                z = zzosVar.zzR;
                if (z) {
                    zzntVar2 = zzosVar.zzq;
                    zzntVar2.zzb();
                }
            }
        }
    }
}
