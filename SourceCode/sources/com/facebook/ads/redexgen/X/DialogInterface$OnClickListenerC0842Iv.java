package com.facebook.ads.redexgen.X;

import android.content.DialogInterface;
import java.util.Map;
/* renamed from: com.facebook.ads.redexgen.X.Iv  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class DialogInterface$OnClickListenerC0842Iv implements DialogInterface.OnClickListener {
    public final /* synthetic */ View$OnClickListenerC1117Tr A00;

    public DialogInterface$OnClickListenerC0842Iv(View$OnClickListenerC1117Tr view$OnClickListenerC1117Tr) {
        this.A00 = view$OnClickListenerC1117Tr;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        Map<String, String> A01;
        if (this.A00.A01.A0a != null) {
            C1283a7 c1283a7 = this.A00.A01.A0a;
            A01 = this.A00.A01();
            c1283a7.A0P(A01);
        }
    }
}
