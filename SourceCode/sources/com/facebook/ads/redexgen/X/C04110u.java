package com.facebook.ads.redexgen.X;

import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Arrays;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.facebook.ads.redexgen.X.0u  reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C04110u {
    @Nullable
    public static C04110u A08;
    public static byte[] A09;
    public static String[] A0A = {"TOlR5WIHpQxnCrBDCJGIvboS5c1GP2eb", "1A072KPTjzB", "BhIKZU0mEosMUOfZes2VT64q11XJ2Uhn", "3eQHzZddeWPmYl0bNsvnb2WjxREMTE8a", "x", "3ukMDhdDleVgfGP2GHVzNRiRwZbG92ZS", "tXOxwX9vQ8QECIpzr41AiGeD6LbiHgO3", "feL0RS1gsJrC9VyxtC"};
    public static final String A0B;
    public boolean A01;
    public final C7N A03;
    public final String A04;
    public final Executor A07;
    public final CountDownLatch A05 = new CountDownLatch(1);
    public final CountDownLatch A06 = new CountDownLatch(1);
    public final C04100t A02 = new C04100t();
    @Nullable
    public String A00 = null;

    public static String A03(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A09, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 69);
        }
        return new String(copyOfRange);
    }

    public static void A09() {
        byte[] bArr = {114, 115, 97, 10, 31, 65, 68, 83, 99, 65, 80, 80, 73, 78, 71, 105, 78, 70, 79, 14, 84, 88, 84, 1, 3, 18, 18, 7, 6, 35, 6, 17, 76, 22, 26, 22, 37, 49, 38, 50, 54, 38, 45, 32, 58, 28, 32, 34, 51, 51, 42, 45, 36};
        if (A0A[0].charAt(25) == 's') {
            throw new RuntimeException();
        }
        A0A[6] = "ekiMbk44dvQ4iEpOly1MsU0Tkyq5eij5";
        A09 = bArr;
    }

    static {
        A09();
        A0B = C04110u.class.getSimpleName();
    }

    @VisibleForTesting
    public C04110u(C7N c7n, boolean z, Executor executor, String str) {
        this.A03 = c7n.A01();
        this.A04 = str;
        this.A07 = executor;
        if (z) {
            A0A();
        }
    }

    public static synchronized C04110u A01(C7N c7n) {
        C04110u c04110u;
        synchronized (C04110u.class) {
            if (A08 == null) {
                A08 = new C04110u(c7n, true, LQ.A06, A03(0, 0, 103));
            }
            c04110u = A08;
        }
        return c04110u;
    }

    private String A04(String str) {
        String A03 = A03(0, 0, 103);
        try {
            synchronized (this) {
                File file = new File(this.A03.getFilesDir(), str);
                if (file.exists() && file.length() > 0) {
                    FileInputStream fileInputStream = new FileInputStream(file);
                    byte[] data = new byte[(int) file.length()];
                    fileInputStream.read(data);
                    fileInputStream.close();
                    String fileContent = new String(data, A03(0, 5, 98));
                    A03 = fileContent;
                }
            }
        } catch (FileNotFoundException e2) {
            InterfaceC05777r A07 = this.A03.A07();
            int i = C05787s.A17;
            C05797t c05797t = new C05797t(e2);
            String fileContent2 = A03(36, 17, 6);
            A07.A9C(fileContent2, i, c05797t);
        } catch (IOException e3) {
            InterfaceC05777r A072 = this.A03.A07();
            int i2 = C05787s.A19;
            C05797t c05797t2 = new C05797t(e3);
            String fileContent3 = A03(36, 17, 6);
            A072.A9C(fileContent3, i2, c05797t2);
        }
        return A03;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A07() {
        String A03 = A03(36, 17, 6);
        try {
            C04100t c04100t = this.A02;
            c04100t.A08(A04(this.A04 + A03(23, 13, 39)));
            this.A02.A0A(A04(A03(5, 18, 101)));
        } catch (C05797t e2) {
            A0M();
            this.A03.A07().A9C(A03, C05787s.A18, e2);
        } catch (JSONException e3) {
            A0M();
            this.A03.A07().A9C(A03, C05787s.A1A, new C05797t(e3));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A08() {
        String adsFrequencyCappingDataList;
        synchronized (this.A02) {
            adsFrequencyCappingDataList = this.A02.A05().toString();
        }
        A0G(A0K(), adsFrequencyCappingDataList);
    }

    @VisibleForTesting
    private final void A0A() {
        this.A07.execute(new C1295aJ(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void A0E(C1P c1p, String str, boolean z) {
        c1p.A07(z);
        if (c1p.A08() || c1p.A09()) {
            this.A02.A07(str);
        } else {
            this.A02.A09(str);
        }
    }

    private void A0F(String str) {
        File file = new File(this.A03.getFilesDir(), str);
        if (file.exists()) {
            file.delete();
        }
    }

    private final synchronized void A0G(String str, String str2) {
        A0H(this.A04 + A03(23, 13, 39), str.getBytes());
        A0H(A03(5, 18, 101), str2.getBytes());
    }

    private void A0H(String str, byte[] bArr) {
        try {
            synchronized (this) {
                FileOutputStream fileOutputStream = new FileOutputStream(new File(this.A03.getFilesDir(), str));
                fileOutputStream.write(bArr);
                fileOutputStream.close();
            }
        } catch (FileNotFoundException e2) {
            this.A03.A07().A9C(A03(36, 17, 6), C05787s.A17, new C05797t(e2));
        } catch (IOException e3) {
            this.A03.A07().A9C(A03(36, 17, 6), C05787s.A19, new C05797t(e3));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean A0J(String str) {
        boolean z = false;
        try {
            synchronized (this.A02) {
                z = this.A02.A05().get(str) instanceof C1P;
            }
        } catch (JSONException e2) {
            this.A03.A07().A9C(A03(36, 17, 6), C05787s.A1A, new C05797t(e2));
        }
        return z;
    }

    public final String A0K() {
        return this.A02.A04();
    }

    public final void A0L() {
        if (!this.A01 || this.A00 == null) {
            return;
        }
        this.A07.execute(new C1292aG(this, this.A00));
    }

    public final synchronized void A0M() {
        A0F(this.A04 + A03(5, 18, 101));
        A0F(this.A04 + A03(23, 13, 39));
    }

    public final void A0N(String str) {
        if (!this.A01) {
            return;
        }
        this.A00 = str;
        this.A07.execute(new C1293aH(this, str));
    }

    public final void A0O(JSONObject jSONObject) {
        this.A01 = IK.A12(this.A03);
        if (!this.A01) {
            return;
        }
        this.A07.execute(new C1294aI(this, jSONObject));
    }
}
