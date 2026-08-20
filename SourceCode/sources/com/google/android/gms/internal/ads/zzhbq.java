package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzhbq implements zzgyh {
    static final zzgyh zza = new zzhbq();

    private zzhbq() {
    }

    @Override // com.google.android.gms.internal.ads.zzgyh
    public final boolean zza(int i) {
        if (i != 0 && i != 1 && i != 2 && i != 1999) {
            switch (i) {
                case 1000:
                case 1001:
                case 1002:
                case 1003:
                case 1004:
                case 1005:
                case 1006:
                case 1007:
                case 1008:
                    break;
                default:
                    return false;
            }
        }
        return true;
    }
}
