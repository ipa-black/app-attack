package com.facebook.ads.redexgen.X;

import androidx.annotation.RequiresApi;
/* loaded from: assets/audience_network.dex */
public class SM implements InterfaceC0940Mu {
    public static String[] A01 = {"kBW4xLQ0UagetoFfZBciP8yG8j8W9VjJ", "CuM3P9amPTPJ5VHvR15Uue2Gct3r32Ot", "lbGRsJ8fypW9S7UDq3wjuqDAeCT4ZPX8", "CX6eEzMwkcIPtUXHSQR62noGC5y", "Dd2JYkt6fB7OqeIXSHoD4gCnoZc1iMAP", "m18x0ngOflO", "jU1O956PNCfHvoVw6Wvh6mauWMk", "8DHuyV3l5L6zPCdvs"};
    public final /* synthetic */ SG A00;

    public SM(SG sg) {
        this.A00 = sg;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0940Mu
    public final void ABt(String str) {
        C0933Mn c0933Mn;
        C0933Mn c0933Mn2;
        this.A00.A0I = false;
        c0933Mn = this.A00.A0C;
        c0933Mn.setProgress(100);
        c0933Mn2 = this.A00.A0C;
        LL.A0N(c0933Mn2, 8);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0940Mu
    public final void ABv(String str) {
        C0933Mn c0933Mn;
        C0932Mm c0932Mm;
        this.A00.A0I = true;
        c0933Mn = this.A00.A0C;
        LL.A0N(c0933Mn, 0);
        c0932Mm = this.A00.A0B;
        c0932Mm.setUrl(str);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0940Mu
    public final void ACD(int i) {
        boolean z;
        C0933Mn c0933Mn;
        z = this.A00.A0I;
        if (z) {
            c0933Mn = this.A00.A0C;
            String[] strArr = A01;
            if (strArr[3].length() != strArr[6].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A01;
            strArr2[3] = "lMw90bHodMLjKU6qsq03ZDigEQG";
            strArr2[6] = "W3A1xCHgBxfgFje8Ug40eYh6nHu";
            c0933Mn.setProgress(i);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0940Mu
    public final void ACI(String str) {
        C0932Mm c0932Mm;
        c0932Mm = this.A00.A0B;
        c0932Mm.setTitle(str);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0940Mu
    @RequiresApi(api = 26)
    public final void ACK() {
        C0958Nm c0958Nm;
        c0958Nm = this.A00.A0E;
        c0958Nm.A09().AAR(14);
    }
}
