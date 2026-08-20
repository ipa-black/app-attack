package com.applovin.exoplayer2.b;

import com.applovin.exoplayer2.l.ai;
import com.applovin.exoplayer2.v;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.explorestack.protobuf.openrtb.LossReason;
import com.google.android.exoplayer2.audio.AacUtil;
import com.google.android.exoplayer2.audio.OpusUtil;
import com.google.android.exoplayer2.util.MimeTypes;
import java.nio.ByteBuffer;
/* loaded from: classes.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private static final int[] f1449a = {1, 2, 3, 6};

    /* renamed from: b  reason: collision with root package name */
    private static final int[] f1450b = {OpusUtil.SAMPLE_RATE, 44100, 32000};

    /* renamed from: c  reason: collision with root package name */
    private static final int[] f1451c = {24000, 22050, AacUtil.AAC_HE_V1_MAX_RATE_BYTES_PER_SECOND};

    /* renamed from: d  reason: collision with root package name */
    private static final int[] f1452d = {2, 1, 2, 3, 3, 4, 4, 5};

    /* renamed from: e  reason: collision with root package name */
    private static final int[] f1453e = {32, 40, 48, 56, 64, 80, 96, 112, 128, 160, 192, 224, 256, 320, 384, 448, 512, 576, 640};

    /* renamed from: f  reason: collision with root package name */
    private static final int[] f1454f = {69, 87, 104, 121, 139, 174, LossReason.LOSS_REASON_CREATIVE_FILTERED_CATEGORY_EXCLUSIONS_VALUE, 243, 278, 348, TTAdConstant.DOWNLOAD_URL_AND_PACKAGE_NAME, 487, 557, 696, 835, 975, 1114, 1253, 1393};

    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final String f1455a;

        /* renamed from: b  reason: collision with root package name */
        public final int f1456b;

        /* renamed from: c  reason: collision with root package name */
        public final int f1457c;

        /* renamed from: d  reason: collision with root package name */
        public final int f1458d;

        /* renamed from: e  reason: collision with root package name */
        public final int f1459e;

        /* renamed from: f  reason: collision with root package name */
        public final int f1460f;

        private a(String str, int i, int i2, int i3, int i4, int i5) {
            this.f1455a = str;
            this.f1456b = i;
            this.f1458d = i2;
            this.f1457c = i3;
            this.f1459e = i4;
            this.f1460f = i5;
        }
    }

    private static int a(int i, int i2) {
        int i3 = i2 / 2;
        if (i >= 0) {
            int[] iArr = f1450b;
            if (i >= iArr.length || i2 < 0) {
                return -1;
            }
            int[] iArr2 = f1454f;
            if (i3 >= iArr2.length) {
                return -1;
            }
            int i4 = iArr[i];
            if (i4 == 44100) {
                return (iArr2[i3] + (i2 % 2)) * 2;
            }
            int i5 = f1453e[i3];
            return i4 == 32000 ? i5 * 6 : i5 * 4;
        }
        return -1;
    }

    public static int a(ByteBuffer byteBuffer) {
        if (((byteBuffer.get(byteBuffer.position() + 5) & 248) >> 3) > 10) {
            return f1449a[((byteBuffer.get(byteBuffer.position() + 4) & 192) >> 6) != 3 ? (byteBuffer.get(byteBuffer.position() + 4) & 48) >> 4 : 3] * 256;
        }
        return 1536;
    }

    public static int a(ByteBuffer byteBuffer, int i) {
        return 40 << ((byteBuffer.get((byteBuffer.position() + i) + ((byteBuffer.get((byteBuffer.position() + i) + 7) & 255) == 187 ? 9 : 8)) >> 4) & 7);
    }

    public static int a(byte[] bArr) {
        if (bArr.length < 6) {
            return -1;
        }
        if (((bArr[5] & 248) >> 3) > 10) {
            return (((bArr[3] & 255) | ((bArr[2] & 7) << 8)) + 1) * 2;
        }
        byte b2 = bArr[4];
        return a((b2 & 192) >> 6, b2 & 63);
    }

    public static a a(com.applovin.exoplayer2.l.x xVar) {
        int a2;
        int i;
        int i2;
        int i3;
        int i4;
        String str;
        int c2;
        int i5;
        int i6;
        int i7;
        int i8;
        int b2 = xVar.b();
        xVar.b(40);
        boolean z = xVar.c(5) > 10;
        xVar.a(b2);
        int i9 = -1;
        if (z) {
            xVar.b(16);
            int c3 = xVar.c(2);
            if (c3 == 0) {
                i9 = 0;
            } else if (c3 == 1) {
                i9 = 1;
            } else if (c3 == 2) {
                i9 = 2;
            }
            xVar.b(3);
            a2 = (xVar.c(11) + 1) * 2;
            int c4 = xVar.c(2);
            if (c4 == 3) {
                i = f1451c[xVar.c(2)];
                i5 = 6;
                c2 = 3;
            } else {
                c2 = xVar.c(2);
                i5 = f1449a[c2];
                i = f1450b[c4];
            }
            i3 = i5 * 256;
            int c5 = xVar.c(3);
            boolean e2 = xVar.e();
            i2 = f1452d[c5] + (e2 ? 1 : 0);
            xVar.b(10);
            if (xVar.e()) {
                xVar.b(8);
            }
            if (c5 == 0) {
                xVar.b(5);
                if (xVar.e()) {
                    xVar.b(8);
                }
            }
            if (i9 == 1 && xVar.e()) {
                xVar.b(16);
            }
            if (xVar.e()) {
                if (c5 > 2) {
                    xVar.b(2);
                }
                if ((c5 & 1) == 0 || c5 <= 2) {
                    i7 = 6;
                } else {
                    i7 = 6;
                    xVar.b(6);
                }
                if ((c5 & 4) != 0) {
                    xVar.b(i7);
                }
                if (e2 && xVar.e()) {
                    xVar.b(5);
                }
                if (i9 == 0) {
                    if (xVar.e()) {
                        i8 = 6;
                        xVar.b(6);
                    } else {
                        i8 = 6;
                    }
                    if (c5 == 0 && xVar.e()) {
                        xVar.b(i8);
                    }
                    if (xVar.e()) {
                        xVar.b(i8);
                    }
                    int c6 = xVar.c(2);
                    if (c6 == 1) {
                        xVar.b(5);
                    } else if (c6 == 2) {
                        xVar.b(12);
                    } else if (c6 == 3) {
                        int c7 = xVar.c(5);
                        if (xVar.e()) {
                            xVar.b(5);
                            if (xVar.e()) {
                                xVar.b(4);
                            }
                            if (xVar.e()) {
                                xVar.b(4);
                            }
                            if (xVar.e()) {
                                xVar.b(4);
                            }
                            if (xVar.e()) {
                                xVar.b(4);
                            }
                            if (xVar.e()) {
                                xVar.b(4);
                            }
                            if (xVar.e()) {
                                xVar.b(4);
                            }
                            if (xVar.e()) {
                                xVar.b(4);
                            }
                            if (xVar.e()) {
                                if (xVar.e()) {
                                    xVar.b(4);
                                }
                                if (xVar.e()) {
                                    xVar.b(4);
                                }
                            }
                        }
                        if (xVar.e()) {
                            xVar.b(5);
                            if (xVar.e()) {
                                xVar.b(7);
                                if (xVar.e()) {
                                    xVar.b(8);
                                }
                            }
                        }
                        xVar.b((c7 + 2) * 8);
                        xVar.f();
                    }
                    if (c5 < 2) {
                        if (xVar.e()) {
                            xVar.b(14);
                        }
                        if (c5 == 0 && xVar.e()) {
                            xVar.b(14);
                        }
                    }
                    if (xVar.e()) {
                        if (c2 == 0) {
                            xVar.b(5);
                        } else {
                            for (int i10 = 0; i10 < i5; i10++) {
                                if (xVar.e()) {
                                    xVar.b(5);
                                }
                            }
                        }
                    }
                }
            }
            if (xVar.e()) {
                xVar.b(5);
                if (c5 == 2) {
                    xVar.b(4);
                }
                if (c5 >= 6) {
                    xVar.b(2);
                }
                if (xVar.e()) {
                    xVar.b(8);
                }
                if (c5 == 0 && xVar.e()) {
                    xVar.b(8);
                }
                if (c4 < 3) {
                    xVar.d();
                }
            }
            if (i9 == 0 && c2 != 3) {
                xVar.d();
            }
            if (i9 == 2 && (c2 == 3 || xVar.e())) {
                i6 = 6;
                xVar.b(6);
            } else {
                i6 = 6;
            }
            str = (xVar.e() && xVar.c(i6) == 1 && xVar.c(8) == 1) ? MimeTypes.AUDIO_E_AC3_JOC : MimeTypes.AUDIO_E_AC3;
            i4 = i9;
        } else {
            xVar.b(32);
            int c8 = xVar.c(2);
            String str2 = c8 == 3 ? null : MimeTypes.AUDIO_AC3;
            a2 = a(c8, xVar.c(6));
            xVar.b(8);
            int c9 = xVar.c(3);
            if ((c9 & 1) != 0 && c9 != 1) {
                xVar.b(2);
            }
            if ((c9 & 4) != 0) {
                xVar.b(2);
            }
            if (c9 == 2) {
                xVar.b(2);
            }
            int[] iArr = f1450b;
            i = c8 < iArr.length ? iArr[c8] : -1;
            i2 = f1452d[c9] + (xVar.e() ? 1 : 0);
            i3 = 1536;
            i4 = -1;
            str = str2;
        }
        return new a(str, i4, i2, i, a2, i3);
    }

    public static com.applovin.exoplayer2.v a(com.applovin.exoplayer2.l.y yVar, String str, String str2, com.applovin.exoplayer2.d.e eVar) {
        int i = f1450b[(yVar.h() & 192) >> 6];
        int h2 = yVar.h();
        int i2 = f1452d[(h2 & 56) >> 3];
        if ((h2 & 4) != 0) {
            i2++;
        }
        return new v.a().a(str).f(MimeTypes.AUDIO_AC3).k(i2).l(i).a(eVar).c(str2).a();
    }

    public static int b(ByteBuffer byteBuffer) {
        int position = byteBuffer.position();
        int limit = byteBuffer.limit() - 10;
        for (int i = position; i <= limit; i++) {
            if ((ai.a(byteBuffer, i + 4) & (-2)) == -126718022) {
                return i - position;
            }
        }
        return -1;
    }

    public static int b(byte[] bArr) {
        if (bArr[4] == -8 && bArr[5] == 114 && bArr[6] == 111) {
            byte b2 = bArr[7];
            if ((b2 & 254) == 186) {
                return 40 << ((bArr[(b2 & 255) == 187 ? '\t' : '\b'] >> 4) & 7);
            }
        }
        return 0;
    }

    public static com.applovin.exoplayer2.v b(com.applovin.exoplayer2.l.y yVar, String str, String str2, com.applovin.exoplayer2.d.e eVar) {
        yVar.e(2);
        int i = f1450b[(yVar.h() & 192) >> 6];
        int h2 = yVar.h();
        int i2 = f1452d[(h2 & 14) >> 1];
        if ((h2 & 1) != 0) {
            i2++;
        }
        if (((yVar.h() & 30) >> 1) > 0 && (2 & yVar.h()) != 0) {
            i2 += 2;
        }
        return new v.a().a(str).f((yVar.a() <= 0 || (yVar.h() & 1) == 0) ? MimeTypes.AUDIO_E_AC3 : MimeTypes.AUDIO_E_AC3_JOC).k(i2).l(i).a(eVar).c(str2).a();
    }
}
