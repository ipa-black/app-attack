package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzgzf implements zzhah {
    private static final zzgzl zza = new zzgzd();
    private final zzgzl zzb;

    public zzgzf() {
        zzgzl zzgzlVar;
        zzgzl[] zzgzlVarArr = new zzgzl[2];
        zzgzlVarArr[0] = zzgxy.zza();
        try {
            zzgzlVar = (zzgzl) Class.forName("com.google.protobuf.DescriptorMessageInfoFactory").getDeclaredMethod("getInstance", new Class[0]).invoke(null, new Object[0]);
        } catch (Exception unused) {
            zzgzlVar = zza;
        }
        zzgzlVarArr[1] = zzgzlVar;
        zzgze zzgzeVar = new zzgze(zzgzlVarArr);
        zzgyn.zzf(zzgzeVar, "messageInfoFactory");
        this.zzb = zzgzeVar;
    }

    private static boolean zzb(zzgzk zzgzkVar) {
        return zzgzkVar.zzc() == 1;
    }

    @Override // com.google.android.gms.internal.ads.zzhah
    public final zzhag zza(Class cls) {
        zzhai.zzG(cls);
        zzgzk zzb = this.zzb.zzb(cls);
        if (!zzb.zzb()) {
            if (zzgyd.class.isAssignableFrom(cls)) {
                if (zzb(zzb)) {
                    return zzgzq.zzl(cls, zzb, zzgzt.zzb(), zzgzb.zze(), zzhai.zzB(), zzgxs.zzb(), zzgzj.zzb());
                }
                return zzgzq.zzl(cls, zzb, zzgzt.zzb(), zzgzb.zze(), zzhai.zzB(), null, zzgzj.zzb());
            } else if (zzb(zzb)) {
                return zzgzq.zzl(cls, zzb, zzgzt.zza(), zzgzb.zzd(), zzhai.zzz(), zzgxs.zza(), zzgzj.zza());
            } else {
                return zzgzq.zzl(cls, zzb, zzgzt.zza(), zzgzb.zzd(), zzhai.zzA(), null, zzgzj.zza());
            }
        } else if (zzgyd.class.isAssignableFrom(cls)) {
            return zzgzr.zzc(zzhai.zzB(), zzgxs.zzb(), zzb.zza());
        } else {
            return zzgzr.zzc(zzhai.zzz(), zzgxs.zza(), zzb.zza());
        }
    }
}
