package com.google.android.gms.internal.ads;

import com.google.firebase.analytics.FirebaseAnalytics;
/* compiled from: com.google.android.gms:play-services-ads-lite@@21.5.0 */
/* loaded from: classes4.dex */
final class zzfyk extends zzfyp {
    final /* synthetic */ zzfyl zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzfyk(zzfyl zzfylVar, zzfyr zzfyrVar, CharSequence charSequence) {
        super(zzfyrVar, charSequence);
        this.zza = zzfylVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfyp
    final int zzc(int i) {
        return i + 1;
    }

    @Override // com.google.android.gms.internal.ads.zzfyp
    final int zzd(int i) {
        zzfxq zzfxqVar = this.zza.zza;
        CharSequence charSequence = this.zzb;
        int length = charSequence.length();
        zzfye.zzb(i, length, FirebaseAnalytics.Param.INDEX);
        while (i < length) {
            if (zzfxqVar.zzb(charSequence.charAt(i))) {
                return i;
            }
            i++;
        }
        return -1;
    }
}
