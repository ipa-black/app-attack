package com.facebook.ads.redexgen.X;

import android.util.SparseArray;
import com.facebook.ads.internal.exoplayer2.thirdparty.Format;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
/* renamed from: com.facebook.ads.redexgen.X.Vq  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1166Vq implements InterfaceC0690Co {
    public static byte[] A02;
    public static String[] A03 = {"W3zpeZwD9Fi1kBaR", "uMdULlbYt84VxY86rM0TiEJbhaqKcXZ1", "Usin4k2UYlEJmIUoIPMyl4MixoDpG9ii", "hBZpg4XSGRsBFeFqV0aqL6EoVOREEldE", "UimonN4w5kzXtUMO8SJw69s6gFNeuD2Z", "uuKAqm4Yer5CcRyJ", "zRTcmdaM3Tn4RRVoPrSr5tVrwuK6PMWw", "taTU185R1PVUiY2ntZzDAqagtcVNoAEE"};
    public final int A00;
    public final List<Format> A01;

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    private C0687Ck A00(C0689Cn c0689Cn) {
        String A01;
        int i;
        if (A03(32)) {
            return new C0687Ck(this.A01);
        }
        C0799Hc c0799Hc = new C0799Hc(c0689Cn.A03);
        List<Format> list = this.A01;
        while (c0799Hc.A04() > 0) {
            int A0E = c0799Hc.A0E();
            int A06 = c0799Hc.A06() + c0799Hc.A0E();
            if (A0E == 134) {
                list = new ArrayList<>();
                int A0E2 = c0799Hc.A0E() & 31;
                for (int i2 = 0; i2 < A0E2; i2++) {
                    String A0S = c0799Hc.A0S(3);
                    int A0E3 = c0799Hc.A0E();
                    if ((A0E3 & 128) != 0) {
                        A01 = A01(19, 19, 101);
                        i = A0E3 & 63;
                    } else {
                        A01 = A01(0, 19, 66);
                        i = 1;
                    }
                    list.add(Format.A08(null, A01, null, -1, 0, A0S, i, null));
                    c0799Hc.A0Z(2);
                }
            }
            c0799Hc.A0Y(A06);
        }
        return new C0687Ck(list);
    }

    public static String A01(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 51);
        }
        return new String(copyOfRange);
    }

    public static void A02() {
        A02 = new byte[]{16, 1, 1, 29, 24, 18, 16, 5, 24, 30, 31, 94, 18, 20, 16, 92, 71, 65, 73, 55, 38, 38, 58, 63, 53, 55, 34, 63, 57, 56, 121, 53, 51, 55, 123, 97, 102, 110};
    }

    static {
        A02();
    }

    public C1166Vq() {
        this(0);
    }

    public C1166Vq(int i) {
        this(i, Collections.emptyList());
    }

    public C1166Vq(int i, List<Format> list) {
        this.A00 = i;
        if (!A03(32) && list.isEmpty()) {
            list = Collections.singletonList(Format.A00(null, A01(0, 19, 66), 0, null));
        }
        this.A01 = list;
    }

    private boolean A03(int i) {
        return (this.A00 & i) != 0;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0690Co
    public final SparseArray<InterfaceC0692Cq> A4N() {
        return new SparseArray<>();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0690Co
    public final InterfaceC0692Cq A4S(int i, C0689Cn c0689Cn) {
        if (i != 2) {
            if (i == 3 || i == 4) {
                return new C1159Vh(new C1160Vi(c0689Cn.A01));
            }
            String[] strArr = A03;
            if (strArr[2].charAt(15) != strArr[6].charAt(15)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A03;
            strArr2[5] = "TL6v0qMnHqmUaQQZ";
            strArr2[0] = "IE89AbLzdx0BMakH";
            if (i == 15) {
                if (A03(2)) {
                    return null;
                }
                return new C1159Vh(new Vr(false, c0689Cn.A01));
            } else if (i == 17) {
                boolean A032 = A03(2);
                String[] strArr3 = A03;
                if (strArr3[2].charAt(15) != strArr3[6].charAt(15)) {
                    throw new RuntimeException();
                }
                String[] strArr4 = A03;
                strArr4[4] = "tl06ExzVOLl6J3Z38u8ReTh5ugUipxJi";
                strArr4[3] = "IvBaWal7DLbI52VVdF6IQtL5C2liERzj";
                if (A032) {
                    return null;
                }
                return new C1159Vh(new C1161Vj(c0689Cn.A01));
            } else if (i != 21) {
                if (i == 27) {
                    boolean A033 = A03(4);
                    String[] strArr5 = A03;
                    if (strArr5[2].charAt(15) == strArr5[6].charAt(15)) {
                        String[] strArr6 = A03;
                        strArr6[4] = "sJk0cAFVF7ae3oKLvDzM4nnwAUecmkeL";
                        strArr6[3] = "UpVExoenxBXELPfMIXM6arARQ5XbDmde";
                        if (A033) {
                            return null;
                        }
                    } else if (A033) {
                        return null;
                    }
                    return new C1159Vh(new Vm(A00(c0689Cn), A03(1), A03(8)));
                } else if (i != 36) {
                    if (i != 89) {
                        if (i != 138) {
                            if (i != 129) {
                                if (i != 130) {
                                    if (i == 134) {
                                        boolean A034 = A03(16);
                                        String[] strArr7 = A03;
                                        if (strArr7[4].charAt(2) != strArr7[3].charAt(2)) {
                                            String[] strArr8 = A03;
                                            strArr8[7] = "gZ9W35a8if0wBYwl14wyCBdNL5YYRzZs";
                                            strArr8[1] = "c3HcoanD4hgKlYwrimr1mcCeCJ4aqmfb";
                                            if (A034) {
                                                return null;
                                            }
                                        } else if (A034) {
                                            return null;
                                        }
                                        return new C1156Ve(new C1155Vd());
                                    } else if (i != 135) {
                                        return null;
                                    }
                                }
                            }
                            return new C1159Vh(new C1169Vu(c0689Cn.A01));
                        }
                        return new C1159Vh(new C1165Vp(c0689Cn.A01));
                    }
                    return new C1159Vh(new C1164Vo(c0689Cn.A02));
                } else {
                    return new C1159Vh(new C1163Vl(A00(c0689Cn)));
                }
            } else {
                return new C1159Vh(new C1162Vk());
            }
        }
        return new C1159Vh(new Vn());
    }
}
