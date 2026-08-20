package com.facebook.ads.redexgen.X;

import android.os.Handler;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: assets/audience_network.dex */
public abstract class VH implements ET {
    public static String[] A05 = {"2", "A1R5XmGNdue", "Xf2fF", "2MZr802CwBgh98iwI2LX9r8AFH0stAP", "PWtCslqWMOhLlWMecFeGOSMcL", "Nab9jbcw8W2RSLeSFi8qaY40Uhnm56i", "UlYKNWRAV2IAyBS", "QHLbHyQnMMy3J3Z"};
    public InterfaceC1196Wv A00;
    public AbstractC06309u A01;
    public Object A02;
    public final ArrayList<ES> A04 = new ArrayList<>(1);
    public final C0727Ee A03 = new C0727Ee();

    public abstract void A02();

    public abstract void A03(InterfaceC1196Wv interfaceC1196Wv, boolean z);

    public final C0727Ee A00(@Nullable ER er) {
        return this.A03.A02(0, er, 0L);
    }

    public final void A01(AbstractC06309u abstractC06309u, @Nullable Object obj) {
        this.A01 = abstractC06309u;
        this.A02 = obj;
        Iterator<ES> it = this.A04.iterator();
        while (it.hasNext()) {
            it.next().ACb(this, abstractC06309u, obj);
        }
    }

    @Override // com.facebook.ads.redexgen.X.ET
    public final void A3D(Handler handler, InterfaceC0730Eh interfaceC0730Eh) {
        this.A03.A07(handler, interfaceC0730Eh);
    }

    @Override // com.facebook.ads.redexgen.X.ET
    public final void ADb(InterfaceC1196Wv interfaceC1196Wv, boolean z, ES es) {
        InterfaceC1196Wv interfaceC1196Wv2 = this.A00;
        HD.A03(interfaceC1196Wv2 == null || interfaceC1196Wv2 == interfaceC1196Wv);
        this.A04.add(es);
        if (this.A00 == null) {
            this.A00 = interfaceC1196Wv;
            A03(interfaceC1196Wv, z);
            return;
        }
        AbstractC06309u abstractC06309u = this.A01;
        if (abstractC06309u == null) {
            return;
        }
        es.ACb(this, abstractC06309u, this.A02);
    }

    @Override // com.facebook.ads.redexgen.X.ET
    public final void AEB(ES es) {
        this.A04.remove(es);
        if (this.A04.isEmpty()) {
            this.A00 = null;
            this.A01 = null;
            if (A05[2].length() == 23) {
                throw new RuntimeException();
            }
            A05[2] = "TEgrTEJPhaeJK53iaQZF";
            this.A02 = null;
            A02();
        }
    }

    @Override // com.facebook.ads.redexgen.X.ET
    public final void AED(InterfaceC0730Eh interfaceC0730Eh) {
        this.A03.A0D(interfaceC0730Eh);
    }
}
