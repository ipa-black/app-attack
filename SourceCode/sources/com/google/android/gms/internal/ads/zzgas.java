package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzgas extends zzfyw {
    private final zzgau zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzgas(zzgau zzgauVar, int i) {
        super(zzgauVar.size(), i);
        this.zza = zzgauVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfyw
    protected final Object zza(int i) {
        return this.zza.get(i);
    }
}
