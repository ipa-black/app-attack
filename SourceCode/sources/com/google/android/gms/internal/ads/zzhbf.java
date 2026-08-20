package com.google.android.gms.internal.ads;

import libcore.io.Memory;
import sun.misc.Unsafe;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzhbf extends zzhbg {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzhbf(Unsafe unsafe) {
        super(unsafe);
    }

    @Override // com.google.android.gms.internal.ads.zzhbg
    public final byte zza(long j) {
        return Memory.peekByte(j);
    }

    @Override // com.google.android.gms.internal.ads.zzhbg
    public final double zzb(Object obj, long j) {
        return Double.longBitsToDouble(zzm(obj, j));
    }

    @Override // com.google.android.gms.internal.ads.zzhbg
    public final float zzc(Object obj, long j) {
        return Float.intBitsToFloat(zzl(obj, j));
    }

    @Override // com.google.android.gms.internal.ads.zzhbg
    public final void zzd(long j, byte[] bArr, long j2, long j3) {
        Memory.peekByteArray(j, bArr, (int) j2, (int) j3);
    }

    /*  JADX ERROR: JadxRuntimeException in pass: InlineMethods
        jadx.core.utils.exceptions.JadxRuntimeException: Failed to process method for inline: com.google.android.gms.internal.ads.zzhbh.zzl(java.lang.Object, long, boolean):void
        	at jadx.core.dex.visitors.InlineMethods.processInvokeInsn(InlineMethods.java:76)
        	at jadx.core.dex.visitors.InlineMethods.visit(InlineMethods.java:51)
        Caused by: java.util.ConcurrentModificationException
        	at java.base/java.util.ArrayList$Itr.checkForComodification(ArrayList.java:1013)
        	at java.base/java.util.ArrayList$Itr.next(ArrayList.java:967)
        	at jadx.core.dex.instructions.args.SSAVar.updateUsedInPhiList(SSAVar.java:151)
        	at jadx.core.dex.nodes.InsnNode.rebindArgs(InsnNode.java:482)
        	at jadx.core.dex.instructions.mods.TernaryInsn.rebindArgs(TernaryInsn.java:92)
        	at jadx.core.dex.nodes.InsnNode.rebindArgs(InsnNode.java:484)
        	at jadx.core.utils.BlockUtils.replaceInsn(BlockUtils.java:1079)
        	at jadx.core.utils.BlockUtils.replaceInsn(BlockUtils.java:1088)
        	at jadx.core.dex.visitors.InlineMethods.inlineMethod(InlineMethods.java:115)
        	at jadx.core.dex.visitors.InlineMethods.processInvokeInsn(InlineMethods.java:74)
        	... 1 more
        */
    @Override // com.google.android.gms.internal.ads.zzhbg
    public final void zze(java.lang.Object r2, long r3, boolean r5) {
        /*
            r1 = this;
            boolean r0 = com.google.android.gms.internal.ads.zzhbh.zzb
            if (r0 == 0) goto L8
            com.google.android.gms.internal.ads.zzhbh.zzk(r2, r3, r5)
            return
        L8:
            com.google.android.gms.internal.ads.zzhbh.zzl(r2, r3, r5)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzhbf.zze(java.lang.Object, long, boolean):void");
    }

    @Override // com.google.android.gms.internal.ads.zzhbg
    public final void zzf(Object obj, long j, byte b2) {
        if (zzhbh.zzb) {
            zzhbh.zzG(obj, j, b2);
        } else {
            zzhbh.zzH(obj, j, b2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhbg
    public final void zzg(Object obj, long j, double d2) {
        zzq(obj, j, Double.doubleToLongBits(d2));
    }

    @Override // com.google.android.gms.internal.ads.zzhbg
    public final void zzh(Object obj, long j, float f2) {
        zzp(obj, j, Float.floatToIntBits(f2));
    }

    @Override // com.google.android.gms.internal.ads.zzhbg
    public final boolean zzi(Object obj, long j) {
        if (zzhbh.zzb) {
            return zzhbh.zzw(obj, j);
        }
        return zzhbh.zzx(obj, j);
    }
}
