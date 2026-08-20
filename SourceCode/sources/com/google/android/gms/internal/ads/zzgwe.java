package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzgwd;
import com.google.android.gms.internal.ads.zzgwe;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public abstract class zzgwe<MessageType extends zzgwe<MessageType, BuilderType>, BuilderType extends zzgwd<MessageType, BuilderType>> implements zzgzn {
    protected int zza = 0;

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Multi-variable type inference failed */
    public static void zzau(Iterable iterable, List list) {
        zzgyn.zze(iterable);
        if (list instanceof ArrayList) {
            ((ArrayList) list).ensureCapacity(list.size() + iterable.size());
        }
        int size = list.size();
        for (Object obj : iterable) {
            if (obj != null) {
                list.add(obj);
            } else {
                int size2 = list.size();
                String str = "Element at index " + (size2 - size) + " is null.";
                int size3 = list.size();
                while (true) {
                    size3--;
                    if (size3 < size) {
                        break;
                    }
                    list.remove(size3);
                }
                throw new NullPointerException(str);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int zzas(zzhag zzhagVar) {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzgzn
    public final zzgwv zzat() {
        try {
            int zzay = zzay();
            zzgwv zzgwvVar = zzgwv.zzb;
            byte[] bArr = new byte[zzay];
            zzgxk zzG = zzgxk.zzG(bArr);
            zzaU(zzG);
            zzG.zzI();
            return new zzgwr(bArr);
        } catch (IOException e2) {
            String name = getClass().getName();
            throw new RuntimeException("Serializing " + name + " to a ByteString threw an IOException (should never happen).", e2);
        }
    }

    public final void zzav(OutputStream outputStream) throws IOException {
        zzgxk zzH = zzgxk.zzH(outputStream, zzgxk.zzB(zzay()));
        zzaU(zzH);
        zzH.zzN();
    }

    @Override // com.google.android.gms.internal.ads.zzgzn
    public final byte[] zzaw() {
        try {
            byte[] bArr = new byte[zzay()];
            zzgxk zzG = zzgxk.zzG(bArr);
            zzaU(zzG);
            zzG.zzI();
            return bArr;
        } catch (IOException e2) {
            String name = getClass().getName();
            throw new RuntimeException("Serializing " + name + " to a byte array threw an IOException (should never happen).", e2);
        }
    }
}
