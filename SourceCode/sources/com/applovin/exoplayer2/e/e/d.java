package com.applovin.exoplayer2.e.e;

import android.util.Pair;
import android.util.SparseArray;
import com.applovin.exoplayer2.b.a;
import com.applovin.exoplayer2.common.a.s;
import com.applovin.exoplayer2.d.e;
import com.applovin.exoplayer2.e.h;
import com.applovin.exoplayer2.e.i;
import com.applovin.exoplayer2.e.j;
import com.applovin.exoplayer2.e.l;
import com.applovin.exoplayer2.e.v;
import com.applovin.exoplayer2.e.x;
import com.applovin.exoplayer2.k.g;
import com.applovin.exoplayer2.l.ai;
import com.applovin.exoplayer2.l.q;
import com.applovin.exoplayer2.l.r;
import com.applovin.exoplayer2.l.u;
import com.applovin.exoplayer2.l.y;
import com.applovin.exoplayer2.v;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.extractor.ts.TsExtractor;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.firebase.FirebaseError;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;
/* loaded from: classes.dex */
public class d implements h {

    /* renamed from: a  reason: collision with root package name */
    public static final l f2174a = new l() { // from class: com.applovin.exoplayer2.e.e.d$$ExternalSyntheticLambda0
        @Override // com.applovin.exoplayer2.e.l
        public final h[] createExtractors() {
            h[] h2;
            h2 = d.h();
            return h2;
        }
    };

    /* renamed from: b  reason: collision with root package name */
    private static final byte[] f2175b = {49, 10, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 48, 48, 32, 45, 45, 62, 32, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 48, 48, 10};

    /* renamed from: c  reason: collision with root package name */
    private static final byte[] f2176c = ai.c("Format: Start, End, ReadOrder, Layer, Style, Name, MarginL, MarginR, MarginV, Effect, Text");

    /* renamed from: d  reason: collision with root package name */
    private static final byte[] f2177d = {68, 105, 97, 108, 111, 103, 117, 101, 58, 32, 48, 58, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 58, 48, 48, 58, 48, 48, 58, 48, 48, 44};

    /* renamed from: e  reason: collision with root package name */
    private static final UUID f2178e = new UUID(72057594037932032L, -9223371306706625679L);

    /* renamed from: f  reason: collision with root package name */
    private static final Map<String, Integer> f2179f;
    private b A;
    private boolean B;
    private int C;
    private long D;
    private boolean E;
    private long F;
    private long G;
    private long H;
    private r I;
    private r J;
    private boolean K;
    private boolean L;
    private int M;
    private long N;
    private long O;
    private int P;
    private int Q;
    private int[] R;
    private int S;
    private int T;
    private int U;
    private int V;
    private boolean W;
    private int X;
    private int Y;
    private int Z;
    private boolean aa;
    private boolean ab;
    private boolean ac;
    private int ad;
    private byte ae;
    private boolean af;
    private j ag;

    /* renamed from: g  reason: collision with root package name */
    private final com.applovin.exoplayer2.e.e.c f2180g;

    /* renamed from: h  reason: collision with root package name */
    private final f f2181h;
    private final SparseArray<b> i;
    private final boolean j;
    private final y k;
    private final y l;
    private final y m;
    private final y n;
    private final y o;
    private final y p;
    private final y q;
    private final y r;
    private final y s;
    private final y t;
    private ByteBuffer u;
    private long v;
    private long w;
    private long x;
    private long y;
    private long z;

    /* loaded from: classes.dex */
    private final class a implements com.applovin.exoplayer2.e.e.b {
        private a() {
        }

        @Override // com.applovin.exoplayer2.e.e.b
        public int a(int i) {
            return d.this.a(i);
        }

        @Override // com.applovin.exoplayer2.e.e.b
        public void a(int i, double d2) throws com.applovin.exoplayer2.ai {
            d.this.a(i, d2);
        }

        @Override // com.applovin.exoplayer2.e.e.b
        public void a(int i, int i2, i iVar) throws IOException {
            d.this.a(i, i2, iVar);
        }

        @Override // com.applovin.exoplayer2.e.e.b
        public void a(int i, long j) throws com.applovin.exoplayer2.ai {
            d.this.a(i, j);
        }

        @Override // com.applovin.exoplayer2.e.e.b
        public void a(int i, long j, long j2) throws com.applovin.exoplayer2.ai {
            d.this.a(i, j, j2);
        }

        @Override // com.applovin.exoplayer2.e.e.b
        public void a(int i, String str) throws com.applovin.exoplayer2.ai {
            d.this.a(i, str);
        }

        @Override // com.applovin.exoplayer2.e.e.b
        public boolean b(int i) {
            return d.this.b(i);
        }

        @Override // com.applovin.exoplayer2.e.e.b
        public void c(int i) throws com.applovin.exoplayer2.ai {
            d.this.c(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class b {
        public int A;
        public int B;
        public float C;
        public float D;
        public float E;
        public float F;
        public float G;
        public float H;
        public float I;
        public float J;
        public float K;
        public float L;
        public byte[] M;
        public int N;
        public int O;
        public int P;
        public long Q;
        public long R;
        public c S;
        public boolean T;
        public boolean U;
        public x V;
        public int W;
        private int X;
        private String Y;

        /* renamed from: a  reason: collision with root package name */
        public String f2183a;

        /* renamed from: b  reason: collision with root package name */
        public String f2184b;

        /* renamed from: c  reason: collision with root package name */
        public int f2185c;

        /* renamed from: d  reason: collision with root package name */
        public int f2186d;

        /* renamed from: e  reason: collision with root package name */
        public int f2187e;

        /* renamed from: f  reason: collision with root package name */
        public int f2188f;

        /* renamed from: g  reason: collision with root package name */
        public boolean f2189g;

        /* renamed from: h  reason: collision with root package name */
        public byte[] f2190h;
        public x.a i;
        public byte[] j;
        public com.applovin.exoplayer2.d.e k;
        public int l;
        public int m;
        public int n;
        public int o;
        public int p;
        public int q;
        public float r;
        public float s;
        public float t;
        public byte[] u;
        public int v;
        public boolean w;
        public int x;
        public int y;
        public int z;

        private b() {
            this.l = -1;
            this.m = -1;
            this.n = -1;
            this.o = -1;
            this.p = 0;
            this.q = -1;
            this.r = 0.0f;
            this.s = 0.0f;
            this.t = 0.0f;
            this.u = null;
            this.v = -1;
            this.w = false;
            this.x = -1;
            this.y = -1;
            this.z = -1;
            this.A = 1000;
            this.B = 200;
            this.C = -1.0f;
            this.D = -1.0f;
            this.E = -1.0f;
            this.F = -1.0f;
            this.G = -1.0f;
            this.H = -1.0f;
            this.I = -1.0f;
            this.J = -1.0f;
            this.K = -1.0f;
            this.L = -1.0f;
            this.N = 1;
            this.O = -1;
            this.P = 8000;
            this.Q = 0L;
            this.R = 0L;
            this.U = true;
            this.Y = "eng";
        }

        private static Pair<String, List<byte[]>> a(y yVar) throws com.applovin.exoplayer2.ai {
            try {
                yVar.e(16);
                long p = yVar.p();
                if (p == 1482049860) {
                    return new Pair<>(MimeTypes.VIDEO_DIVX, null);
                }
                if (p == 859189832) {
                    return new Pair<>(MimeTypes.VIDEO_H263, null);
                }
                if (p != 826496599) {
                    q.c("MatroskaExtractor", "Unknown FourCC. Setting mimeType to video/x-unknown");
                    return new Pair<>(MimeTypes.VIDEO_UNKNOWN, null);
                }
                byte[] d2 = yVar.d();
                for (int c2 = yVar.c() + 20; c2 < d2.length - 4; c2++) {
                    if (d2[c2] == 0 && d2[c2 + 1] == 0 && d2[c2 + 2] == 1 && d2[c2 + 3] == 15) {
                        return new Pair<>(MimeTypes.VIDEO_VC1, Collections.singletonList(Arrays.copyOfRange(d2, c2, d2.length)));
                    }
                }
                throw com.applovin.exoplayer2.ai.b("Failed to find FourCC VC1 initialization data", null);
            } catch (ArrayIndexOutOfBoundsException unused) {
                throw com.applovin.exoplayer2.ai.b("Error parsing FourCC private data", null);
            }
        }

        private static List<byte[]> a(byte[] bArr) throws com.applovin.exoplayer2.ai {
            int i;
            int i2;
            try {
                if (bArr[0] == 2) {
                    int i3 = 0;
                    int i4 = 1;
                    while (true) {
                        i = bArr[i4];
                        if ((i & 255) != 255) {
                            break;
                        }
                        i3 += 255;
                        i4++;
                    }
                    int i5 = i4 + 1;
                    int i6 = i3 + (i & 255);
                    int i7 = 0;
                    while (true) {
                        i2 = bArr[i5];
                        if ((i2 & 255) != 255) {
                            break;
                        }
                        i7 += 255;
                        i5++;
                    }
                    int i8 = i5 + 1;
                    int i9 = i7 + (i2 & 255);
                    if (bArr[i8] == 1) {
                        byte[] bArr2 = new byte[i6];
                        System.arraycopy(bArr, i8, bArr2, 0, i6);
                        int i10 = i8 + i6;
                        if (bArr[i10] == 3) {
                            int i11 = i10 + i9;
                            if (bArr[i11] == 5) {
                                byte[] bArr3 = new byte[bArr.length - i11];
                                System.arraycopy(bArr, i11, bArr3, 0, bArr.length - i11);
                                ArrayList arrayList = new ArrayList(2);
                                arrayList.add(bArr2);
                                arrayList.add(bArr3);
                                return arrayList;
                            }
                            throw com.applovin.exoplayer2.ai.b("Error parsing vorbis codec private", null);
                        }
                        throw com.applovin.exoplayer2.ai.b("Error parsing vorbis codec private", null);
                    }
                    throw com.applovin.exoplayer2.ai.b("Error parsing vorbis codec private", null);
                }
                throw com.applovin.exoplayer2.ai.b("Error parsing vorbis codec private", null);
            } catch (ArrayIndexOutOfBoundsException unused) {
                throw com.applovin.exoplayer2.ai.b("Error parsing vorbis codec private", null);
            }
        }

        private byte[] a(String str) throws com.applovin.exoplayer2.ai {
            byte[] bArr = this.j;
            if (bArr != null) {
                return bArr;
            }
            throw com.applovin.exoplayer2.ai.b("Missing CodecPrivate for codec " + str, null);
        }

        private static boolean b(y yVar) throws com.applovin.exoplayer2.ai {
            try {
                int j = yVar.j();
                if (j == 1) {
                    return true;
                }
                if (j == 65534) {
                    yVar.d(24);
                    if (yVar.s() == d.f2178e.getMostSignificantBits()) {
                        if (yVar.s() == d.f2178e.getLeastSignificantBits()) {
                            return true;
                        }
                    }
                    return false;
                }
                return false;
            } catch (ArrayIndexOutOfBoundsException unused) {
                throw com.applovin.exoplayer2.ai.b("Error parsing MS/ACM codec private", null);
            }
        }

        private byte[] c() {
            if (this.C == -1.0f || this.D == -1.0f || this.E == -1.0f || this.F == -1.0f || this.G == -1.0f || this.H == -1.0f || this.I == -1.0f || this.J == -1.0f || this.K == -1.0f || this.L == -1.0f) {
                return null;
            }
            byte[] bArr = new byte[25];
            ByteBuffer order = ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN);
            order.put((byte) 0);
            order.putShort((short) ((this.C * 50000.0f) + 0.5f));
            order.putShort((short) ((this.D * 50000.0f) + 0.5f));
            order.putShort((short) ((this.E * 50000.0f) + 0.5f));
            order.putShort((short) ((this.F * 50000.0f) + 0.5f));
            order.putShort((short) ((this.G * 50000.0f) + 0.5f));
            order.putShort((short) ((this.H * 50000.0f) + 0.5f));
            order.putShort((short) ((this.I * 50000.0f) + 0.5f));
            order.putShort((short) ((this.J * 50000.0f) + 0.5f));
            order.putShort((short) (this.K + 0.5f));
            order.putShort((short) (this.L + 0.5f));
            order.putShort((short) this.A);
            order.putShort((short) this.B);
            return bArr;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void d() {
            com.applovin.exoplayer2.l.a.b(this.V);
        }

        public void a() {
            c cVar = this.S;
            if (cVar != null) {
                cVar.a(this);
            }
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        public void a(j jVar, int i) throws com.applovin.exoplayer2.ai {
            char c2;
            List<byte[]> singletonList;
            String str;
            StringBuilder sb;
            int i2;
            String str2;
            int i3;
            List<byte[]> list;
            String str3;
            int i4;
            int i5;
            int i6;
            com.applovin.exoplayer2.m.c a2;
            String str4 = this.f2184b;
            str4.hashCode();
            int i7 = 4;
            int i8 = 0;
            int i9 = -1;
            switch (str4.hashCode()) {
                case -2095576542:
                    if (str4.equals("V_MPEG4/ISO/AP")) {
                        c2 = 0;
                        break;
                    }
                    c2 = 65535;
                    break;
                case -2095575984:
                    if (str4.equals("V_MPEG4/ISO/SP")) {
                        c2 = 1;
                        break;
                    }
                    c2 = 65535;
                    break;
                case -1985379776:
                    if (str4.equals("A_MS/ACM")) {
                        c2 = 2;
                        break;
                    }
                    c2 = 65535;
                    break;
                case -1784763192:
                    if (str4.equals("A_TRUEHD")) {
                        c2 = 3;
                        break;
                    }
                    c2 = 65535;
                    break;
                case -1730367663:
                    if (str4.equals("A_VORBIS")) {
                        c2 = 4;
                        break;
                    }
                    c2 = 65535;
                    break;
                case -1482641358:
                    if (str4.equals("A_MPEG/L2")) {
                        c2 = 5;
                        break;
                    }
                    c2 = 65535;
                    break;
                case -1482641357:
                    if (str4.equals("A_MPEG/L3")) {
                        c2 = 6;
                        break;
                    }
                    c2 = 65535;
                    break;
                case -1373388978:
                    if (str4.equals("V_MS/VFW/FOURCC")) {
                        c2 = 7;
                        break;
                    }
                    c2 = 65535;
                    break;
                case -933872740:
                    if (str4.equals("S_DVBSUB")) {
                        c2 = '\b';
                        break;
                    }
                    c2 = 65535;
                    break;
                case -538363189:
                    if (str4.equals("V_MPEG4/ISO/ASP")) {
                        c2 = '\t';
                        break;
                    }
                    c2 = 65535;
                    break;
                case -538363109:
                    if (str4.equals("V_MPEG4/ISO/AVC")) {
                        c2 = '\n';
                        break;
                    }
                    c2 = 65535;
                    break;
                case -425012669:
                    if (str4.equals("S_VOBSUB")) {
                        c2 = 11;
                        break;
                    }
                    c2 = 65535;
                    break;
                case -356037306:
                    if (str4.equals("A_DTS/LOSSLESS")) {
                        c2 = '\f';
                        break;
                    }
                    c2 = 65535;
                    break;
                case 62923557:
                    if (str4.equals("A_AAC")) {
                        c2 = '\r';
                        break;
                    }
                    c2 = 65535;
                    break;
                case 62923603:
                    if (str4.equals("A_AC3")) {
                        c2 = 14;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 62927045:
                    if (str4.equals("A_DTS")) {
                        c2 = 15;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 82318131:
                    if (str4.equals("V_AV1")) {
                        c2 = 16;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 82338133:
                    if (str4.equals("V_VP8")) {
                        c2 = 17;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 82338134:
                    if (str4.equals("V_VP9")) {
                        c2 = 18;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 99146302:
                    if (str4.equals("S_HDMV/PGS")) {
                        c2 = 19;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 444813526:
                    if (str4.equals("V_THEORA")) {
                        c2 = 20;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 542569478:
                    if (str4.equals("A_DTS/EXPRESS")) {
                        c2 = 21;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 635596514:
                    if (str4.equals("A_PCM/FLOAT/IEEE")) {
                        c2 = 22;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 725948237:
                    if (str4.equals("A_PCM/INT/BIG")) {
                        c2 = 23;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 725957860:
                    if (str4.equals("A_PCM/INT/LIT")) {
                        c2 = 24;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 738597099:
                    if (str4.equals("S_TEXT/ASS")) {
                        c2 = 25;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 855502857:
                    if (str4.equals("V_MPEGH/ISO/HEVC")) {
                        c2 = 26;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 1422270023:
                    if (str4.equals("S_TEXT/UTF8")) {
                        c2 = 27;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 1809237540:
                    if (str4.equals("V_MPEG2")) {
                        c2 = 28;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 1950749482:
                    if (str4.equals("A_EAC3")) {
                        c2 = 29;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 1950789798:
                    if (str4.equals("A_FLAC")) {
                        c2 = 30;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 1951062397:
                    if (str4.equals("A_OPUS")) {
                        c2 = 31;
                        break;
                    }
                    c2 = 65535;
                    break;
                default:
                    c2 = 65535;
                    break;
            }
            String str5 = MimeTypes.AUDIO_RAW;
            switch (c2) {
                case 0:
                case 1:
                case '\t':
                    byte[] bArr = this.j;
                    singletonList = bArr == null ? null : Collections.singletonList(bArr);
                    str5 = MimeTypes.VIDEO_MP4V;
                    i3 = -1;
                    i7 = -1;
                    str2 = null;
                    break;
                case 2:
                    if (b(new y(a(this.f2184b)))) {
                        i7 = ai.c(this.O);
                        if (i7 == 0) {
                            sb = new StringBuilder("Unsupported PCM bit depth: ");
                            str = sb.append(this.O).append(". Setting mimeType to audio/x-unknown").toString();
                            q.c("MatroskaExtractor", str);
                            i3 = -1;
                            i7 = -1;
                            singletonList = null;
                            str2 = null;
                            str5 = MimeTypes.AUDIO_UNKNOWN;
                            break;
                        }
                        i3 = -1;
                        singletonList = null;
                        str2 = null;
                        break;
                    } else {
                        str = "Non-PCM MS/ACM is unsupported. Setting mimeType to audio/x-unknown";
                        q.c("MatroskaExtractor", str);
                        i3 = -1;
                        i7 = -1;
                        singletonList = null;
                        str2 = null;
                        str5 = MimeTypes.AUDIO_UNKNOWN;
                    }
                case 3:
                    this.S = new c();
                    str5 = MimeTypes.AUDIO_TRUEHD;
                    i3 = -1;
                    i7 = -1;
                    singletonList = null;
                    str2 = null;
                    break;
                case 4:
                    singletonList = a(a(this.f2184b));
                    str5 = MimeTypes.AUDIO_VORBIS;
                    i2 = 8192;
                    i3 = i2;
                    i7 = -1;
                    str2 = null;
                    break;
                case 5:
                    str5 = MimeTypes.AUDIO_MPEG_L2;
                    i7 = -1;
                    singletonList = null;
                    str2 = null;
                    i3 = 4096;
                    break;
                case 6:
                    str5 = MimeTypes.AUDIO_MPEG;
                    i7 = -1;
                    singletonList = null;
                    str2 = null;
                    i3 = 4096;
                    break;
                case 7:
                    Pair<String, List<byte[]>> a3 = a(new y(a(this.f2184b)));
                    str5 = (String) a3.first;
                    singletonList = (List) a3.second;
                    i3 = -1;
                    i7 = -1;
                    str2 = null;
                    break;
                case '\b':
                    byte[] bArr2 = new byte[4];
                    System.arraycopy(a(this.f2184b), 0, bArr2, 0, 4);
                    singletonList = s.a(bArr2);
                    str5 = MimeTypes.APPLICATION_DVBSUBS;
                    i3 = -1;
                    i7 = -1;
                    str2 = null;
                    break;
                case '\n':
                    com.applovin.exoplayer2.m.a a4 = com.applovin.exoplayer2.m.a.a(new y(a(this.f2184b)));
                    list = a4.f3877a;
                    this.W = a4.f3878b;
                    str3 = a4.f3882f;
                    str5 = "video/avc";
                    i3 = -1;
                    i7 = -1;
                    List<byte[]> list2 = list;
                    str2 = str3;
                    singletonList = list2;
                    break;
                case 11:
                    singletonList = s.a(a(this.f2184b));
                    i3 = -1;
                    i7 = -1;
                    str5 = MimeTypes.APPLICATION_VOBSUB;
                    str2 = null;
                    break;
                case '\f':
                    str5 = MimeTypes.AUDIO_DTS_HD;
                    i3 = -1;
                    i7 = -1;
                    singletonList = null;
                    str2 = null;
                    break;
                case '\r':
                    singletonList = Collections.singletonList(a(this.f2184b));
                    a.C0022a a5 = com.applovin.exoplayer2.b.a.a(this.j);
                    this.P = a5.f1446a;
                    this.N = a5.f1447b;
                    str2 = a5.f1448c;
                    str5 = MimeTypes.AUDIO_AAC;
                    i3 = -1;
                    i7 = -1;
                    break;
                case 14:
                    str5 = MimeTypes.AUDIO_AC3;
                    i3 = -1;
                    i7 = -1;
                    singletonList = null;
                    str2 = null;
                    break;
                case 15:
                case 21:
                    str5 = MimeTypes.AUDIO_DTS;
                    i3 = -1;
                    i7 = -1;
                    singletonList = null;
                    str2 = null;
                    break;
                case 16:
                    str5 = MimeTypes.VIDEO_AV1;
                    i3 = -1;
                    i7 = -1;
                    singletonList = null;
                    str2 = null;
                    break;
                case 17:
                    str5 = MimeTypes.VIDEO_VP8;
                    i3 = -1;
                    i7 = -1;
                    singletonList = null;
                    str2 = null;
                    break;
                case 18:
                    str5 = MimeTypes.VIDEO_VP9;
                    i3 = -1;
                    i7 = -1;
                    singletonList = null;
                    str2 = null;
                    break;
                case 19:
                    i3 = -1;
                    i7 = -1;
                    str5 = MimeTypes.APPLICATION_PGS;
                    singletonList = null;
                    str2 = null;
                    break;
                case 20:
                    str5 = MimeTypes.VIDEO_UNKNOWN;
                    i3 = -1;
                    i7 = -1;
                    singletonList = null;
                    str2 = null;
                    break;
                case 22:
                    if (this.O != 32) {
                        sb = new StringBuilder("Unsupported floating point PCM bit depth: ");
                        str = sb.append(this.O).append(". Setting mimeType to audio/x-unknown").toString();
                        q.c("MatroskaExtractor", str);
                        i3 = -1;
                        i7 = -1;
                        singletonList = null;
                        str2 = null;
                        str5 = MimeTypes.AUDIO_UNKNOWN;
                        break;
                    }
                    i3 = -1;
                    singletonList = null;
                    str2 = null;
                    break;
                case 23:
                    int i10 = this.O;
                    if (i10 != 8) {
                        if (i10 != 16) {
                            sb = new StringBuilder("Unsupported big endian PCM bit depth: ");
                            str = sb.append(this.O).append(". Setting mimeType to audio/x-unknown").toString();
                            q.c("MatroskaExtractor", str);
                            i3 = -1;
                            i7 = -1;
                            singletonList = null;
                            str2 = null;
                            str5 = MimeTypes.AUDIO_UNKNOWN;
                            break;
                        } else {
                            i7 = 268435456;
                        }
                    } else {
                        i7 = 3;
                    }
                    i3 = -1;
                    singletonList = null;
                    str2 = null;
                    break;
                case 24:
                    i7 = ai.c(this.O);
                    if (i7 == 0) {
                        sb = new StringBuilder("Unsupported little endian PCM bit depth: ");
                        str = sb.append(this.O).append(". Setting mimeType to audio/x-unknown").toString();
                        q.c("MatroskaExtractor", str);
                        i3 = -1;
                        i7 = -1;
                        singletonList = null;
                        str2 = null;
                        str5 = MimeTypes.AUDIO_UNKNOWN;
                        break;
                    }
                    i3 = -1;
                    singletonList = null;
                    str2 = null;
                    break;
                case 25:
                    singletonList = s.a(d.f2176c, a(this.f2184b));
                    i3 = -1;
                    i7 = -1;
                    str5 = MimeTypes.TEXT_SSA;
                    str2 = null;
                    break;
                case 26:
                    com.applovin.exoplayer2.m.f a6 = com.applovin.exoplayer2.m.f.a(new y(a(this.f2184b)));
                    list = a6.f3961a;
                    this.W = a6.f3962b;
                    str3 = a6.f3963c;
                    str5 = "video/hevc";
                    i3 = -1;
                    i7 = -1;
                    List<byte[]> list22 = list;
                    str2 = str3;
                    singletonList = list22;
                    break;
                case 27:
                    i3 = -1;
                    i7 = -1;
                    str5 = MimeTypes.APPLICATION_SUBRIP;
                    singletonList = null;
                    str2 = null;
                    break;
                case 28:
                    str5 = MimeTypes.VIDEO_MPEG2;
                    i3 = -1;
                    i7 = -1;
                    singletonList = null;
                    str2 = null;
                    break;
                case 29:
                    str5 = MimeTypes.AUDIO_E_AC3;
                    i3 = -1;
                    i7 = -1;
                    singletonList = null;
                    str2 = null;
                    break;
                case 30:
                    singletonList = Collections.singletonList(a(this.f2184b));
                    str5 = MimeTypes.AUDIO_FLAC;
                    i3 = -1;
                    i7 = -1;
                    str2 = null;
                    break;
                case 31:
                    singletonList = new ArrayList<>(3);
                    singletonList.add(a(this.f2184b));
                    singletonList.add(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putLong(this.Q).array());
                    singletonList.add(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putLong(this.R).array());
                    str5 = MimeTypes.AUDIO_OPUS;
                    i2 = 5760;
                    i3 = i2;
                    i7 = -1;
                    str2 = null;
                    break;
                default:
                    throw com.applovin.exoplayer2.ai.b("Unrecognized codec identifier.", null);
            }
            if (this.M != null && (a2 = com.applovin.exoplayer2.m.c.a(new y(this.M))) != null) {
                str2 = a2.f3936c;
                str5 = MimeTypes.VIDEO_DOLBY_VISION;
            }
            String str6 = str5;
            int i11 = (this.U ? 1 : 0) | (this.T ? 2 : 0);
            v.a aVar = new v.a();
            if (u.a(str6)) {
                aVar.k(this.N).l(this.P).m(i7);
                i4 = 1;
            } else if (u.b(str6)) {
                if (this.p == 0) {
                    int i12 = this.n;
                    if (i12 == -1) {
                        i12 = this.l;
                    }
                    this.n = i12;
                    int i13 = this.o;
                    if (i13 == -1) {
                        i13 = this.m;
                    }
                    this.o = i13;
                }
                float f2 = (this.n == -1 || (i6 = this.o) == -1) ? -1.0f : (this.m * i5) / (this.l * i6);
                com.applovin.exoplayer2.m.b bVar = this.w ? new com.applovin.exoplayer2.m.b(this.x, this.z, this.y, c()) : null;
                if (this.f2183a != null && d.f2179f.containsKey(this.f2183a)) {
                    i9 = ((Integer) d.f2179f.get(this.f2183a)).intValue();
                }
                if (this.q == 0 && Float.compare(this.r, 0.0f) == 0 && Float.compare(this.s, 0.0f) == 0) {
                    if (Float.compare(this.t, 0.0f) != 0) {
                        if (Float.compare(this.s, 90.0f) == 0) {
                            i8 = 90;
                        } else if (Float.compare(this.s, -180.0f) == 0 || Float.compare(this.s, 180.0f) == 0) {
                            i8 = 180;
                        } else if (Float.compare(this.s, -90.0f) == 0) {
                            i8 = 270;
                        }
                    }
                    aVar.g(this.l).h(this.m).b(f2).i(i8).a(this.u).j(this.v).a(bVar);
                    i4 = 2;
                }
                i8 = i9;
                aVar.g(this.l).h(this.m).b(f2).i(i8).a(this.u).j(this.v).a(bVar);
                i4 = 2;
            } else if (!MimeTypes.APPLICATION_SUBRIP.equals(str6) && !MimeTypes.TEXT_SSA.equals(str6) && !MimeTypes.APPLICATION_VOBSUB.equals(str6) && !MimeTypes.APPLICATION_PGS.equals(str6) && !MimeTypes.APPLICATION_DVBSUBS.equals(str6)) {
                throw com.applovin.exoplayer2.ai.b("Unexpected MIME type.", null);
            } else {
                i4 = 3;
            }
            if (this.f2183a != null && !d.f2179f.containsKey(this.f2183a)) {
                aVar.b(this.f2183a);
            }
            v a7 = aVar.a(i).f(str6).f(i3).c(this.Y).b(i11).a(singletonList).d(str2).a(this.k).a();
            x a8 = jVar.a(this.f2185c, i4);
            this.V = a8;
            a8.a(a7);
        }

        public void b() {
            c cVar = this.S;
            if (cVar != null) {
                cVar.a();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        private final byte[] f2191a = new byte[10];

        /* renamed from: b  reason: collision with root package name */
        private boolean f2192b;

        /* renamed from: c  reason: collision with root package name */
        private int f2193c;

        /* renamed from: d  reason: collision with root package name */
        private long f2194d;

        /* renamed from: e  reason: collision with root package name */
        private int f2195e;

        /* renamed from: f  reason: collision with root package name */
        private int f2196f;

        /* renamed from: g  reason: collision with root package name */
        private int f2197g;

        public void a() {
            this.f2192b = false;
            this.f2193c = 0;
        }

        public void a(b bVar) {
            if (this.f2193c > 0) {
                bVar.V.a(this.f2194d, this.f2195e, this.f2196f, this.f2197g, bVar.i);
                this.f2193c = 0;
            }
        }

        public void a(b bVar, long j, int i, int i2, int i3) {
            if (this.f2192b) {
                int i4 = this.f2193c;
                int i5 = i4 + 1;
                this.f2193c = i5;
                if (i4 == 0) {
                    this.f2194d = j;
                    this.f2195e = i;
                    this.f2196f = 0;
                }
                this.f2196f += i2;
                this.f2197g = i3;
                if (i5 >= 16) {
                    a(bVar);
                }
            }
        }

        public void a(i iVar) throws IOException {
            if (this.f2192b) {
                return;
            }
            iVar.d(this.f2191a, 0, 10);
            iVar.a();
            if (com.applovin.exoplayer2.b.b.b(this.f2191a) == 0) {
                return;
            }
            this.f2192b = true;
        }
    }

    static {
        HashMap hashMap = new HashMap();
        hashMap.put("htc_video_rotA-000", 0);
        hashMap.put("htc_video_rotA-090", 90);
        hashMap.put("htc_video_rotA-180", 180);
        hashMap.put("htc_video_rotA-270", 270);
        f2179f = Collections.unmodifiableMap(hashMap);
    }

    public d() {
        this(0);
    }

    public d(int i) {
        this(new com.applovin.exoplayer2.e.e.a(), i);
    }

    d(com.applovin.exoplayer2.e.e.c cVar, int i) {
        this.w = -1L;
        this.x = C.TIME_UNSET;
        this.y = C.TIME_UNSET;
        this.z = C.TIME_UNSET;
        this.F = -1L;
        this.G = -1L;
        this.H = C.TIME_UNSET;
        this.f2180g = cVar;
        cVar.a(new a());
        this.j = (i & 1) == 0;
        this.f2181h = new f();
        this.i = new SparseArray<>();
        this.m = new y(4);
        this.n = new y(ByteBuffer.allocate(4).putInt(-1).array());
        this.o = new y(4);
        this.k = new y(com.applovin.exoplayer2.l.v.f3837a);
        this.l = new y(4);
        this.p = new y();
        this.q = new y();
        this.r = new y(8);
        this.s = new y();
        this.t = new y();
        this.R = new int[1];
    }

    private int a(i iVar, b bVar, int i) throws IOException {
        int i2;
        if ("S_TEXT/UTF8".equals(bVar.f2184b)) {
            a(iVar, f2175b, i);
        } else if (!"S_TEXT/ASS".equals(bVar.f2184b)) {
            x xVar = bVar.V;
            if (!this.aa) {
                if (bVar.f2189g) {
                    this.U &= -1073741825;
                    if (!this.ab) {
                        iVar.b(this.m.d(), 0, 1);
                        this.X++;
                        if ((this.m.d()[0] & 128) == 128) {
                            throw com.applovin.exoplayer2.ai.b("Extension bit is set in signal byte", null);
                        }
                        this.ae = this.m.d()[0];
                        this.ab = true;
                    }
                    byte b2 = this.ae;
                    if ((b2 & 1) == 1) {
                        boolean z = (b2 & 2) == 2;
                        this.U |= 1073741824;
                        if (!this.af) {
                            iVar.b(this.r.d(), 0, 8);
                            this.X += 8;
                            this.af = true;
                            this.m.d()[0] = (byte) ((z ? 128 : 0) | 8);
                            this.m.d(0);
                            xVar.a(this.m, 1, 1);
                            this.Y++;
                            this.r.d(0);
                            xVar.a(this.r, 8, 1);
                            this.Y += 8;
                        }
                        if (z) {
                            if (!this.ac) {
                                iVar.b(this.m.d(), 0, 1);
                                this.X++;
                                this.m.d(0);
                                this.ad = this.m.h();
                                this.ac = true;
                            }
                            int i3 = this.ad * 4;
                            this.m.a(i3);
                            iVar.b(this.m.d(), 0, i3);
                            this.X += i3;
                            short s = (short) ((this.ad / 2) + 1);
                            int i4 = (s * 6) + 2;
                            ByteBuffer byteBuffer = this.u;
                            if (byteBuffer == null || byteBuffer.capacity() < i4) {
                                this.u = ByteBuffer.allocate(i4);
                            }
                            this.u.position(0);
                            this.u.putShort(s);
                            int i5 = 0;
                            int i6 = 0;
                            while (true) {
                                i2 = this.ad;
                                if (i5 >= i2) {
                                    break;
                                }
                                int w = this.m.w();
                                if (i5 % 2 == 0) {
                                    this.u.putShort((short) (w - i6));
                                } else {
                                    this.u.putInt(w - i6);
                                }
                                i5++;
                                i6 = w;
                            }
                            int i7 = (i - this.X) - i6;
                            int i8 = i2 % 2;
                            ByteBuffer byteBuffer2 = this.u;
                            if (i8 == 1) {
                                byteBuffer2.putInt(i7);
                            } else {
                                byteBuffer2.putShort((short) i7);
                                this.u.putInt(0);
                            }
                            this.s.a(this.u.array(), i4);
                            xVar.a(this.s, i4, 1);
                            this.Y += i4;
                        }
                    }
                } else if (bVar.f2190h != null) {
                    this.p.a(bVar.f2190h, bVar.f2190h.length);
                }
                if (bVar.f2188f > 0) {
                    this.U |= 268435456;
                    this.t.a(0);
                    this.m.a(4);
                    this.m.d()[0] = (byte) ((i >> 24) & 255);
                    this.m.d()[1] = (byte) ((i >> 16) & 255);
                    this.m.d()[2] = (byte) ((i >> 8) & 255);
                    this.m.d()[3] = (byte) (i & 255);
                    xVar.a(this.m, 4, 2);
                    this.Y += 4;
                }
                this.aa = true;
            }
            int b3 = i + this.p.b();
            if (!"V_MPEG4/ISO/AVC".equals(bVar.f2184b) && !"V_MPEGH/ISO/HEVC".equals(bVar.f2184b)) {
                if (bVar.S != null) {
                    com.applovin.exoplayer2.l.a.b(this.p.b() == 0);
                    bVar.S.a(iVar);
                }
                while (true) {
                    int i9 = this.X;
                    if (i9 >= b3) {
                        break;
                    }
                    int a2 = a(iVar, xVar, b3 - i9);
                    this.X += a2;
                    this.Y += a2;
                }
            } else {
                byte[] d2 = this.l.d();
                d2[0] = 0;
                d2[1] = 0;
                d2[2] = 0;
                int i10 = bVar.W;
                int i11 = 4 - bVar.W;
                while (this.X < b3) {
                    int i12 = this.Z;
                    if (i12 == 0) {
                        a(iVar, d2, i11, i10);
                        this.X += i10;
                        this.l.d(0);
                        this.Z = this.l.w();
                        this.k.d(0);
                        xVar.a(this.k, 4);
                        this.Y += 4;
                    } else {
                        int a3 = a(iVar, xVar, i12);
                        this.X += a3;
                        this.Y += a3;
                        this.Z -= a3;
                    }
                }
            }
            if ("A_VORBIS".equals(bVar.f2184b)) {
                this.n.d(0);
                xVar.a(this.n, 4);
                this.Y += 4;
            }
            return e();
        } else {
            a(iVar, f2177d, i);
        }
        return e();
    }

    private int a(i iVar, x xVar, int i) throws IOException {
        int a2 = this.p.a();
        if (a2 > 0) {
            int min = Math.min(i, a2);
            xVar.a(this.p, min);
            return min;
        }
        return xVar.a((g) iVar, i, false);
    }

    private long a(long j) throws com.applovin.exoplayer2.ai {
        long j2 = this.x;
        if (j2 != C.TIME_UNSET) {
            return ai.d(j, j2, 1000L);
        }
        throw com.applovin.exoplayer2.ai.b("Can't scale timecode prior to timecodeScale being set.", null);
    }

    private com.applovin.exoplayer2.e.v a(r rVar, r rVar2) {
        int i;
        if (this.w == -1 || this.z == C.TIME_UNSET || rVar == null || rVar.a() == 0 || rVar2 == null || rVar2.a() != rVar.a()) {
            return new v.b(this.z);
        }
        int a2 = rVar.a();
        int[] iArr = new int[a2];
        long[] jArr = new long[a2];
        long[] jArr2 = new long[a2];
        long[] jArr3 = new long[a2];
        int i2 = 0;
        for (int i3 = 0; i3 < a2; i3++) {
            jArr3[i3] = rVar.a(i3);
            jArr[i3] = this.w + rVar2.a(i3);
        }
        while (true) {
            i = a2 - 1;
            if (i2 >= i) {
                break;
            }
            int i4 = i2 + 1;
            iArr[i2] = (int) (jArr[i4] - jArr[i2]);
            jArr2[i2] = jArr3[i4] - jArr3[i2];
            i2 = i4;
        }
        iArr[i] = (int) ((this.w + this.v) - jArr[i]);
        long j = this.z - jArr3[i];
        jArr2[i] = j;
        if (j <= 0) {
            q.c("MatroskaExtractor", "Discarding last cue point with unexpected duration: " + j);
            iArr = Arrays.copyOf(iArr, i);
            jArr = Arrays.copyOf(jArr, i);
            jArr2 = Arrays.copyOf(jArr2, i);
            jArr3 = Arrays.copyOf(jArr3, i);
        }
        return new com.applovin.exoplayer2.e.c(iArr, jArr, jArr2, jArr3);
    }

    private void a(b bVar, long j, int i, int i2, int i3) {
        String str;
        if (bVar.S != null) {
            bVar.S.a(bVar, j, i, i2, i3);
        } else {
            if ("S_TEXT/UTF8".equals(bVar.f2184b) || "S_TEXT/ASS".equals(bVar.f2184b)) {
                if (this.Q > 1) {
                    str = "Skipping subtitle sample in laced block.";
                } else if (this.O == C.TIME_UNSET) {
                    str = "Skipping subtitle sample with no duration.";
                } else {
                    a(bVar.f2184b, this.O, this.q.d());
                    int c2 = this.q.c();
                    while (true) {
                        if (c2 >= this.q.b()) {
                            break;
                        } else if (this.q.d()[c2] == 0) {
                            this.q.c(c2);
                            break;
                        } else {
                            c2++;
                        }
                    }
                    x xVar = bVar.V;
                    y yVar = this.q;
                    xVar.a(yVar, yVar.b());
                    i2 += this.q.b();
                }
                q.c("MatroskaExtractor", str);
            }
            if ((268435456 & i) != 0) {
                if (this.Q > 1) {
                    i &= -268435457;
                } else {
                    int b2 = this.t.b();
                    bVar.V.a(this.t, b2, 2);
                    i2 += b2;
                }
            }
            bVar.V.a(j, i, i2, i3, bVar.i);
        }
        this.L = true;
    }

    private void a(i iVar, int i) throws IOException {
        if (this.m.b() >= i) {
            return;
        }
        if (this.m.e() < i) {
            y yVar = this.m;
            yVar.b(Math.max(yVar.e() * 2, i));
        }
        iVar.b(this.m.d(), this.m.b(), i - this.m.b());
        this.m.c(i);
    }

    private void a(i iVar, byte[] bArr, int i) throws IOException {
        int length = bArr.length + i;
        if (this.q.e() < length) {
            this.q.a(Arrays.copyOf(bArr, length + i));
        } else {
            System.arraycopy(bArr, 0, this.q.d(), 0, bArr.length);
        }
        iVar.b(this.q.d(), bArr.length, i);
        this.q.d(0);
        this.q.c(length);
    }

    private void a(i iVar, byte[] bArr, int i, int i2) throws IOException {
        int min = Math.min(i2, this.p.a());
        iVar.b(bArr, i + min, i2 - min);
        if (min > 0) {
            this.p.a(bArr, i, min);
        }
    }

    private static void a(String str, long j, byte[] bArr) {
        byte[] a2;
        int i;
        str.hashCode();
        if (str.equals("S_TEXT/ASS")) {
            a2 = a(j, "%01d:%02d:%02d:%02d", 10000L);
            i = 21;
        } else if (!str.equals("S_TEXT/UTF8")) {
            throw new IllegalArgumentException();
        } else {
            a2 = a(j, "%02d:%02d:%02d,%03d", 1000L);
            i = 19;
        }
        System.arraycopy(a2, 0, bArr, i, a2.length);
    }

    private boolean a(com.applovin.exoplayer2.e.u uVar, long j) {
        if (this.E) {
            this.G = j;
            uVar.f2707a = this.F;
            this.E = false;
            return true;
        }
        if (this.B) {
            long j2 = this.G;
            if (j2 != -1) {
                uVar.f2707a = j2;
                this.G = -1L;
                return true;
            }
        }
        return false;
    }

    private static boolean a(String str) {
        str.hashCode();
        char c2 = 65535;
        switch (str.hashCode()) {
            case -2095576542:
                if (str.equals("V_MPEG4/ISO/AP")) {
                    c2 = 0;
                    break;
                }
                break;
            case -2095575984:
                if (str.equals("V_MPEG4/ISO/SP")) {
                    c2 = 1;
                    break;
                }
                break;
            case -1985379776:
                if (str.equals("A_MS/ACM")) {
                    c2 = 2;
                    break;
                }
                break;
            case -1784763192:
                if (str.equals("A_TRUEHD")) {
                    c2 = 3;
                    break;
                }
                break;
            case -1730367663:
                if (str.equals("A_VORBIS")) {
                    c2 = 4;
                    break;
                }
                break;
            case -1482641358:
                if (str.equals("A_MPEG/L2")) {
                    c2 = 5;
                    break;
                }
                break;
            case -1482641357:
                if (str.equals("A_MPEG/L3")) {
                    c2 = 6;
                    break;
                }
                break;
            case -1373388978:
                if (str.equals("V_MS/VFW/FOURCC")) {
                    c2 = 7;
                    break;
                }
                break;
            case -933872740:
                if (str.equals("S_DVBSUB")) {
                    c2 = '\b';
                    break;
                }
                break;
            case -538363189:
                if (str.equals("V_MPEG4/ISO/ASP")) {
                    c2 = '\t';
                    break;
                }
                break;
            case -538363109:
                if (str.equals("V_MPEG4/ISO/AVC")) {
                    c2 = '\n';
                    break;
                }
                break;
            case -425012669:
                if (str.equals("S_VOBSUB")) {
                    c2 = 11;
                    break;
                }
                break;
            case -356037306:
                if (str.equals("A_DTS/LOSSLESS")) {
                    c2 = '\f';
                    break;
                }
                break;
            case 62923557:
                if (str.equals("A_AAC")) {
                    c2 = '\r';
                    break;
                }
                break;
            case 62923603:
                if (str.equals("A_AC3")) {
                    c2 = 14;
                    break;
                }
                break;
            case 62927045:
                if (str.equals("A_DTS")) {
                    c2 = 15;
                    break;
                }
                break;
            case 82318131:
                if (str.equals("V_AV1")) {
                    c2 = 16;
                    break;
                }
                break;
            case 82338133:
                if (str.equals("V_VP8")) {
                    c2 = 17;
                    break;
                }
                break;
            case 82338134:
                if (str.equals("V_VP9")) {
                    c2 = 18;
                    break;
                }
                break;
            case 99146302:
                if (str.equals("S_HDMV/PGS")) {
                    c2 = 19;
                    break;
                }
                break;
            case 444813526:
                if (str.equals("V_THEORA")) {
                    c2 = 20;
                    break;
                }
                break;
            case 542569478:
                if (str.equals("A_DTS/EXPRESS")) {
                    c2 = 21;
                    break;
                }
                break;
            case 635596514:
                if (str.equals("A_PCM/FLOAT/IEEE")) {
                    c2 = 22;
                    break;
                }
                break;
            case 725948237:
                if (str.equals("A_PCM/INT/BIG")) {
                    c2 = 23;
                    break;
                }
                break;
            case 725957860:
                if (str.equals("A_PCM/INT/LIT")) {
                    c2 = 24;
                    break;
                }
                break;
            case 738597099:
                if (str.equals("S_TEXT/ASS")) {
                    c2 = 25;
                    break;
                }
                break;
            case 855502857:
                if (str.equals("V_MPEGH/ISO/HEVC")) {
                    c2 = 26;
                    break;
                }
                break;
            case 1422270023:
                if (str.equals("S_TEXT/UTF8")) {
                    c2 = 27;
                    break;
                }
                break;
            case 1809237540:
                if (str.equals("V_MPEG2")) {
                    c2 = 28;
                    break;
                }
                break;
            case 1950749482:
                if (str.equals("A_EAC3")) {
                    c2 = 29;
                    break;
                }
                break;
            case 1950789798:
                if (str.equals("A_FLAC")) {
                    c2 = 30;
                    break;
                }
                break;
            case 1951062397:
                if (str.equals("A_OPUS")) {
                    c2 = 31;
                    break;
                }
                break;
        }
        switch (c2) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case '\b':
            case '\t':
            case '\n':
            case 11:
            case '\f':
            case '\r':
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
            case 24:
            case 25:
            case 26:
            case 27:
            case 28:
            case 29:
            case 30:
            case 31:
                return true;
            default:
                return false;
        }
    }

    private static byte[] a(long j, String str, long j2) {
        com.applovin.exoplayer2.l.a.a(j != C.TIME_UNSET);
        int i = (int) (j / 3600000000L);
        long j3 = j - ((i * 3600) * 1000000);
        int i2 = (int) (j3 / 60000000);
        long j4 = j3 - ((i2 * 60) * 1000000);
        int i3 = (int) (j4 / 1000000);
        return ai.c(String.format(Locale.US, str, Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf((int) ((j4 - (i3 * 1000000)) / j2))));
    }

    private static int[] a(int[] iArr, int i) {
        return iArr == null ? new int[i] : iArr.length >= i ? iArr : new int[Math.max(iArr.length * 2, i)];
    }

    private void d(int i) throws com.applovin.exoplayer2.ai {
        if (this.A == null) {
            throw com.applovin.exoplayer2.ai.b("Element " + i + " must be in a TrackEntry", null);
        }
    }

    private int e() {
        int i = this.Y;
        f();
        return i;
    }

    private void e(int i) throws com.applovin.exoplayer2.ai {
        if (this.I == null || this.J == null) {
            throw com.applovin.exoplayer2.ai.b("Element " + i + " must be in a Cues", null);
        }
    }

    private b f(int i) throws com.applovin.exoplayer2.ai {
        d(i);
        return this.A;
    }

    private void f() {
        this.X = 0;
        this.Y = 0;
        this.Z = 0;
        this.aa = false;
        this.ab = false;
        this.ac = false;
        this.ad = 0;
        this.ae = (byte) 0;
        this.af = false;
        this.p.a(0);
    }

    private void g() {
        com.applovin.exoplayer2.l.a.a(this.ag);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ h[] h() {
        return new h[]{new d()};
    }

    protected int a(int i) {
        switch (i) {
            case 131:
            case 136:
            case 155:
            case 159:
            case 176:
            case 179:
            case 186:
            case 215:
            case 231:
            case 238:
            case 241:
            case 251:
            case 16871:
            case 16980:
            case 17029:
            case 17143:
            case 18401:
            case 18408:
            case 20529:
            case 20530:
            case 21420:
            case 21432:
            case 21680:
            case 21682:
            case 21690:
            case 21930:
            case 21945:
            case 21946:
            case 21947:
            case 21948:
            case 21949:
            case 21998:
            case 22186:
            case 22203:
            case 25188:
            case 30321:
            case 2352003:
            case 2807729:
                return 2;
            case TsExtractor.TS_STREAM_TYPE_SPLICE_INFO /* 134 */:
            case FirebaseError.ERROR_WEAK_PASSWORD /* 17026 */:
            case 21358:
            case 2274716:
                return 3;
            case 160:
            case 166:
            case 174:
            case 183:
            case 187:
            case 224:
            case 225:
            case 16868:
            case 18407:
            case 19899:
            case 20532:
            case 20533:
            case 21936:
            case 21968:
            case 25152:
            case 28032:
            case 30113:
            case 30320:
            case 290298740:
            case 357149030:
            case 374648427:
            case 408125543:
            case 440786851:
            case 475249515:
            case 524531317:
                return 1;
            case 161:
            case 163:
            case 165:
            case 16877:
            case 16981:
            case 18402:
            case 21419:
            case 25506:
            case 30322:
                return 4;
            case 181:
            case 17545:
            case 21969:
            case 21970:
            case 21971:
            case 21972:
            case 21973:
            case 21974:
            case 21975:
            case 21976:
            case 21977:
            case 21978:
            case 30323:
            case 30324:
            case 30325:
                return 5;
            default:
                return 0;
        }
    }

    @Override // com.applovin.exoplayer2.e.h
    public final int a(i iVar, com.applovin.exoplayer2.e.u uVar) throws IOException {
        this.L = false;
        boolean z = true;
        while (z && !this.L) {
            z = this.f2180g.a(iVar);
            if (z && a(uVar, iVar.c())) {
                return 1;
            }
        }
        if (z) {
            return 0;
        }
        for (int i = 0; i < this.i.size(); i++) {
            b valueAt = this.i.valueAt(i);
            valueAt.d();
            valueAt.a();
        }
        return -1;
    }

    protected void a(int i, double d2) throws com.applovin.exoplayer2.ai {
        if (i == 181) {
            f(i).P = (int) d2;
        } else if (i == 17545) {
            this.y = (long) d2;
        } else {
            switch (i) {
                case 21969:
                    f(i).C = (float) d2;
                    return;
                case 21970:
                    f(i).D = (float) d2;
                    return;
                case 21971:
                    f(i).E = (float) d2;
                    return;
                case 21972:
                    f(i).F = (float) d2;
                    return;
                case 21973:
                    f(i).G = (float) d2;
                    return;
                case 21974:
                    f(i).H = (float) d2;
                    return;
                case 21975:
                    f(i).I = (float) d2;
                    return;
                case 21976:
                    f(i).J = (float) d2;
                    return;
                case 21977:
                    f(i).K = (float) d2;
                    return;
                case 21978:
                    f(i).L = (float) d2;
                    return;
                default:
                    switch (i) {
                        case 30323:
                            f(i).r = (float) d2;
                            return;
                        case 30324:
                            f(i).s = (float) d2;
                            return;
                        case 30325:
                            f(i).t = (float) d2;
                            return;
                        default:
                            return;
                    }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:84:0x023a, code lost:
        throw com.applovin.exoplayer2.ai.b("EBML lacing sample size out of range.", null);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void a(int r22, int r23, com.applovin.exoplayer2.e.i r24) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 755
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.exoplayer2.e.e.d.a(int, int, com.applovin.exoplayer2.e.i):void");
    }

    protected void a(int i, long j) throws com.applovin.exoplayer2.ai {
        if (i == 20529) {
            if (j != 0) {
                throw com.applovin.exoplayer2.ai.b("ContentEncodingOrder " + j + " not supported", null);
            }
        } else if (i == 20530) {
            if (j != 1) {
                throw com.applovin.exoplayer2.ai.b("ContentEncodingScope " + j + " not supported", null);
            }
        } else {
            switch (i) {
                case 131:
                    f(i).f2186d = (int) j;
                    return;
                case 136:
                    f(i).U = j == 1;
                    return;
                case 155:
                    this.O = a(j);
                    return;
                case 159:
                    f(i).N = (int) j;
                    return;
                case 176:
                    f(i).l = (int) j;
                    return;
                case 179:
                    e(i);
                    this.I.a(a(j));
                    return;
                case 186:
                    f(i).m = (int) j;
                    return;
                case 215:
                    f(i).f2185c = (int) j;
                    return;
                case 231:
                    this.H = a(j);
                    return;
                case 238:
                    this.V = (int) j;
                    return;
                case 241:
                    if (this.K) {
                        return;
                    }
                    e(i);
                    this.J.a(j);
                    this.K = true;
                    return;
                case 251:
                    this.W = true;
                    return;
                case 16871:
                    f(i).X = (int) j;
                    return;
                case 16980:
                    if (j != 3) {
                        throw com.applovin.exoplayer2.ai.b("ContentCompAlgo " + j + " not supported", null);
                    }
                    return;
                case 17029:
                    if (j < 1 || j > 2) {
                        throw com.applovin.exoplayer2.ai.b("DocTypeReadVersion " + j + " not supported", null);
                    }
                    return;
                case 17143:
                    if (j != 1) {
                        throw com.applovin.exoplayer2.ai.b("EBMLReadVersion " + j + " not supported", null);
                    }
                    return;
                case 18401:
                    if (j != 5) {
                        throw com.applovin.exoplayer2.ai.b("ContentEncAlgo " + j + " not supported", null);
                    }
                    return;
                case 18408:
                    if (j != 1) {
                        throw com.applovin.exoplayer2.ai.b("AESSettingsCipherMode " + j + " not supported", null);
                    }
                    return;
                case 21420:
                    this.D = j + this.w;
                    return;
                case 21432:
                    int i2 = (int) j;
                    d(i);
                    if (i2 == 0) {
                        this.A.v = 0;
                        return;
                    } else if (i2 == 1) {
                        this.A.v = 2;
                        return;
                    } else if (i2 == 3) {
                        this.A.v = 1;
                        return;
                    } else if (i2 != 15) {
                        return;
                    } else {
                        this.A.v = 3;
                        return;
                    }
                case 21680:
                    f(i).n = (int) j;
                    return;
                case 21682:
                    f(i).p = (int) j;
                    return;
                case 21690:
                    f(i).o = (int) j;
                    return;
                case 21930:
                    f(i).T = j == 1;
                    return;
                case 21998:
                    f(i).f2188f = (int) j;
                    return;
                case 22186:
                    f(i).Q = j;
                    return;
                case 22203:
                    f(i).R = j;
                    return;
                case 25188:
                    f(i).O = (int) j;
                    return;
                case 30321:
                    d(i);
                    int i3 = (int) j;
                    if (i3 == 0) {
                        this.A.q = 0;
                        return;
                    } else if (i3 == 1) {
                        this.A.q = 1;
                        return;
                    } else if (i3 == 2) {
                        this.A.q = 2;
                        return;
                    } else if (i3 != 3) {
                        return;
                    } else {
                        this.A.q = 3;
                        return;
                    }
                case 2352003:
                    f(i).f2187e = (int) j;
                    return;
                case 2807729:
                    this.x = j;
                    return;
                default:
                    switch (i) {
                        case 21945:
                            d(i);
                            int i4 = (int) j;
                            if (i4 == 1) {
                                this.A.z = 2;
                                return;
                            } else if (i4 != 2) {
                                return;
                            } else {
                                this.A.z = 1;
                                return;
                            }
                        case 21946:
                            d(i);
                            int b2 = com.applovin.exoplayer2.m.b.b((int) j);
                            if (b2 != -1) {
                                this.A.y = b2;
                                return;
                            }
                            return;
                        case 21947:
                            d(i);
                            this.A.w = true;
                            int a2 = com.applovin.exoplayer2.m.b.a((int) j);
                            if (a2 != -1) {
                                this.A.x = a2;
                                return;
                            }
                            return;
                        case 21948:
                            f(i).A = (int) j;
                            return;
                        case 21949:
                            f(i).B = (int) j;
                            return;
                        default:
                            return;
                    }
            }
        }
    }

    protected void a(int i, long j, long j2) throws com.applovin.exoplayer2.ai {
        g();
        if (i == 160) {
            this.W = false;
        } else if (i == 174) {
            this.A = new b();
        } else if (i == 187) {
            this.K = false;
        } else if (i == 19899) {
            this.C = -1;
            this.D = -1L;
        } else if (i == 20533) {
            f(i).f2189g = true;
        } else if (i == 21968) {
            f(i).w = true;
        } else if (i == 408125543) {
            long j3 = this.w;
            if (j3 != -1 && j3 != j) {
                throw com.applovin.exoplayer2.ai.b("Multiple Segment elements not supported", null);
            }
            this.w = j;
            this.v = j2;
        } else if (i == 475249515) {
            this.I = new r();
            this.J = new r();
        } else if (i == 524531317 && !this.B) {
            if (this.j && this.F != -1) {
                this.E = true;
                return;
            }
            this.ag.a(new v.b(this.z));
            this.B = true;
        }
    }

    protected void a(int i, String str) throws com.applovin.exoplayer2.ai {
        if (i == 134) {
            f(i).f2184b = str;
        } else if (i == 17026) {
            if (!"webm".equals(str) && !"matroska".equals(str)) {
                throw com.applovin.exoplayer2.ai.b("DocType " + str + " not supported", null);
            }
        } else if (i == 21358) {
            f(i).f2183a = str;
        } else if (i != 2274716) {
        } else {
            f(i).Y = str;
        }
    }

    @Override // com.applovin.exoplayer2.e.h
    public void a(long j, long j2) {
        this.H = C.TIME_UNSET;
        this.M = 0;
        this.f2180g.a();
        this.f2181h.a();
        f();
        for (int i = 0; i < this.i.size(); i++) {
            this.i.valueAt(i).b();
        }
    }

    protected void a(b bVar, int i, i iVar, int i2) throws IOException {
        if (i != 4 || !"V_VP9".equals(bVar.f2184b)) {
            iVar.b(i2);
            return;
        }
        this.t.a(i2);
        iVar.b(this.t.d(), 0, i2);
    }

    protected void a(b bVar, i iVar, int i) throws IOException {
        if (bVar.X != 1685485123 && bVar.X != 1685480259) {
            iVar.b(i);
            return;
        }
        bVar.M = new byte[i];
        iVar.b(bVar.M, 0, i);
    }

    @Override // com.applovin.exoplayer2.e.h
    public final void a(j jVar) {
        this.ag = jVar;
    }

    @Override // com.applovin.exoplayer2.e.h
    public final boolean a(i iVar) throws IOException {
        return new e().a(iVar);
    }

    protected boolean b(int i) {
        return i == 357149030 || i == 524531317 || i == 475249515 || i == 374648427;
    }

    @Override // com.applovin.exoplayer2.e.h
    public final void c() {
    }

    protected void c(int i) throws com.applovin.exoplayer2.ai {
        g();
        if (i == 160) {
            if (this.M != 2) {
                return;
            }
            int i2 = 0;
            for (int i3 = 0; i3 < this.Q; i3++) {
                i2 += this.R[i3];
            }
            b bVar = this.i.get(this.S);
            bVar.d();
            for (int i4 = 0; i4 < this.Q; i4++) {
                long j = ((bVar.f2187e * i4) / 1000) + this.N;
                int i5 = this.U;
                if (i4 == 0 && !this.W) {
                    i5 |= 1;
                }
                int i6 = this.R[i4];
                i2 -= i6;
                a(bVar, j, i5, i6, i2);
            }
            this.M = 0;
        } else if (i == 174) {
            b bVar2 = (b) com.applovin.exoplayer2.l.a.a(this.A);
            if (bVar2.f2184b == null) {
                throw com.applovin.exoplayer2.ai.b("CodecId is missing in TrackEntry element", null);
            }
            if (a(bVar2.f2184b)) {
                bVar2.a(this.ag, bVar2.f2185c);
                this.i.put(bVar2.f2185c, bVar2);
            }
            this.A = null;
        } else if (i == 19899) {
            int i7 = this.C;
            if (i7 != -1) {
                long j2 = this.D;
                if (j2 != -1) {
                    if (i7 == 475249515) {
                        this.F = j2;
                        return;
                    }
                    return;
                }
            }
            throw com.applovin.exoplayer2.ai.b("Mandatory element SeekID or SeekPosition not found", null);
        } else if (i == 25152) {
            d(i);
            if (this.A.f2189g) {
                if (this.A.i == null) {
                    throw com.applovin.exoplayer2.ai.b("Encrypted Track found but ContentEncKeyID was not found", null);
                }
                this.A.k = new com.applovin.exoplayer2.d.e(new e.a(com.applovin.exoplayer2.h.f2968a, "video/webm", this.A.i.f2716b));
            }
        } else if (i == 28032) {
            d(i);
            if (this.A.f2189g && this.A.f2190h != null) {
                throw com.applovin.exoplayer2.ai.b("Combining encryption and compression is not supported", null);
            }
        } else if (i == 357149030) {
            if (this.x == C.TIME_UNSET) {
                this.x = 1000000L;
            }
            long j3 = this.y;
            if (j3 != C.TIME_UNSET) {
                this.z = a(j3);
            }
        } else if (i == 374648427) {
            if (this.i.size() == 0) {
                throw com.applovin.exoplayer2.ai.b("No valid tracks were found", null);
            }
            this.ag.a();
        } else if (i == 475249515) {
            if (!this.B) {
                this.ag.a(a(this.I, this.J));
                this.B = true;
            }
            this.I = null;
            this.J = null;
        }
    }
}
