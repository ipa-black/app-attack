package com.facebook.ads.redexgen.X;

import java.util.Arrays;
import java.util.Iterator;
import java.util.concurrent.CountDownLatch;
import org.json.JSONException;
/* renamed from: com.facebook.ads.redexgen.X.aH  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1293aH extends K1 {
    public static byte[] A02;
    public static String[] A03 = {"CdCLIQRd", "Gozok8EGiq89CC7S8QZsNr", "pl5lQHAXyLio1ost", "M44cRouQCRL7K0vypo2P04DU", "Y2GzUIW8g3L", "Bs9wehYqNd3BdGUVOwkaAN", "ajmsB695tQiR2xtfKUGvlSwazulcZzs7", "Sy9bhDNhoUd7kDt0yrvFBLns12VVbk64"};
    public final /* synthetic */ C04110u A00;
    public final /* synthetic */ String A01;

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            int i5 = (copyOfRange[i4] - i3) - 47;
            if (A03[6].charAt(27) != 'c') {
                throw new RuntimeException();
            }
            String[] strArr = A03;
            strArr[5] = "CuQnTMvQt2iEBPylhK7T15";
            strArr[1] = "FSZFy24WJ9CShZHmahty6u";
            copyOfRange[i4] = (byte) i5;
        }
        return new String(copyOfRange);
    }

    public static void A02() {
        if (A03[6].charAt(27) != 'c') {
            throw new RuntimeException();
        }
        A03[3] = "LuOw";
        A02 = new byte[]{-99, -87, -100, -88, -84, -100, -91, -102, -80, -106, -102, -104, -89, -89, -96, -91, -98};
    }

    static {
        A02();
    }

    public C1293aH(C04110u c04110u, String str) {
        this.A00 = c04110u;
        this.A01 = str;
    }

    @Override // com.facebook.ads.redexgen.X.K1
    public final void A06() {
        C7N c7n;
        C7N c7n2;
        CountDownLatch countDownLatch;
        C04100t c04100t;
        C04100t c04100t2;
        C04100t c04100t3;
        boolean A0J;
        C04100t c04100t4;
        try {
            countDownLatch = this.A00.A06;
            countDownLatch.await();
            c04100t = this.A00.A02;
            synchronized (c04100t) {
                c04100t2 = this.A00.A02;
                Iterator<String> keys = c04100t2.A05().keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    A0J = this.A00.A0J(this.A01);
                    if (A0J) {
                        C04110u c04110u = this.A00;
                        c04100t4 = this.A00.A02;
                        c04110u.A0E((C1P) c04100t4.A05().get(next), next, next.equals(this.A01));
                    }
                }
                c04100t3 = this.A00.A02;
                c04100t3.A06();
                this.A00.A08();
            }
        } catch (InterruptedException e2) {
            c7n2 = this.A00.A03;
            c7n2.A07().A9C(A00(0, 17, 8), C05787s.A1B, new C05797t(e2));
        } catch (JSONException e3) {
            this.A00.A0M();
            c7n = this.A00.A03;
            c7n.A07().A9C(A00(0, 17, 8), C05787s.A1A, new C05797t(e3));
        }
    }
}
