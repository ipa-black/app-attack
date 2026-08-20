package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads-lite@@21.5.0 */
/* loaded from: classes4.dex */
public abstract class zzfxq implements zzfyf {
    public static zzfxq zzc(char c2) {
        return new zzfxn(c2);
    }

    @Override // com.google.android.gms.internal.ads.zzfyf
    @Deprecated
    public final /* synthetic */ boolean zza(Object obj) {
        return zzb(((Character) obj).charValue());
    }

    public abstract boolean zzb(char c2);
}
