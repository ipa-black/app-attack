package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzgll extends zzghb {
    private final String zza;
    private final zzguc zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzgll(String str, zzguc zzgucVar, zzglk zzglkVar) {
        this.zza = str;
        this.zzb = zzgucVar;
    }

    public final String toString() {
        String str;
        String str2 = this.zza;
        zzguc zzgucVar = this.zzb;
        zzgsv zzgsvVar = zzgsv.UNKNOWN_KEYMATERIAL;
        zzguc zzgucVar2 = zzguc.UNKNOWN_PREFIX;
        int ordinal = zzgucVar.ordinal();
        if (ordinal == 1) {
            str = "TINK";
        } else if (ordinal == 2) {
            str = "LEGACY";
        } else if (ordinal != 3) {
            str = ordinal != 4 ? "UNKNOWN" : "CRUNCHY";
        } else {
            str = "RAW";
        }
        return String.format("(typeUrl=%s, outputPrefixType=%s)", str2, str);
    }
}
