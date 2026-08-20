package com.applovin.exoplayer2.f;

import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
import android.text.TextUtils;
import android.util.Pair;
import com.applovin.exoplayer2.common.base.Ascii;
import com.applovin.exoplayer2.f.l;
import com.applovin.exoplayer2.l.ai;
import com.applovin.exoplayer2.l.q;
import com.applovin.exoplayer2.l.u;
import com.applovin.exoplayer2.v;
import com.google.android.exoplayer2.metadata.icy.IcyHeaders;
import com.google.android.exoplayer2.util.MimeTypes;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes.dex */
public final class l {

    /* renamed from: a  reason: collision with root package name */
    private static final Pattern f2822a = Pattern.compile("^\\D?(\\d+)$");

    /* renamed from: b  reason: collision with root package name */
    private static final HashMap<a, List<i>> f2823b = new HashMap<>();

    /* renamed from: c  reason: collision with root package name */
    private static int f2824c = -1;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final String f2825a;

        /* renamed from: b  reason: collision with root package name */
        public final boolean f2826b;

        /* renamed from: c  reason: collision with root package name */
        public final boolean f2827c;

        public a(String str, boolean z, boolean z2) {
            this.f2825a = str;
            this.f2826b = z;
            this.f2827c = z2;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || obj.getClass() != a.class) {
                return false;
            }
            a aVar = (a) obj;
            return TextUtils.equals(this.f2825a, aVar.f2825a) && this.f2826b == aVar.f2826b && this.f2827c == aVar.f2827c;
        }

        public int hashCode() {
            return ((((this.f2825a.hashCode() + 31) * 31) + (this.f2826b ? 1231 : 1237)) * 31) + (this.f2827c ? 1231 : 1237);
        }
    }

    /* loaded from: classes.dex */
    public static class b extends Exception {
        private b(Throwable th) {
            super("Failed to query underlying media codecs", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public interface c {
        int a();

        MediaCodecInfo a(int i);

        boolean a(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities);

        boolean b();

        boolean b(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class d implements c {
        private d() {
        }

        @Override // com.applovin.exoplayer2.f.l.c
        public int a() {
            return MediaCodecList.getCodecCount();
        }

        @Override // com.applovin.exoplayer2.f.l.c
        public MediaCodecInfo a(int i) {
            return MediaCodecList.getCodecInfoAt(i);
        }

        @Override // com.applovin.exoplayer2.f.l.c
        public boolean a(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
            return "secure-playback".equals(str) && "video/avc".equals(str2);
        }

        @Override // com.applovin.exoplayer2.f.l.c
        public boolean b() {
            return false;
        }

        @Override // com.applovin.exoplayer2.f.l.c
        public boolean b(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class e implements c {

        /* renamed from: a  reason: collision with root package name */
        private final int f2828a;

        /* renamed from: b  reason: collision with root package name */
        private MediaCodecInfo[] f2829b;

        public e(boolean z, boolean z2) {
            this.f2828a = (z || z2) ? 1 : 0;
        }

        private void c() {
            if (this.f2829b == null) {
                this.f2829b = new MediaCodecList(this.f2828a).getCodecInfos();
            }
        }

        @Override // com.applovin.exoplayer2.f.l.c
        public int a() {
            c();
            return this.f2829b.length;
        }

        @Override // com.applovin.exoplayer2.f.l.c
        public MediaCodecInfo a(int i) {
            c();
            return this.f2829b[i];
        }

        @Override // com.applovin.exoplayer2.f.l.c
        public boolean a(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
            return codecCapabilities.isFeatureSupported(str);
        }

        @Override // com.applovin.exoplayer2.f.l.c
        public boolean b() {
            return true;
        }

        @Override // com.applovin.exoplayer2.f.l.c
        public boolean b(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
            return codecCapabilities.isFeatureRequired(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public interface f<T> {
        int getScore(T t);
    }

    private static int a(int i) {
        if (i == 1 || i == 2) {
            return 25344;
        }
        switch (i) {
            case 8:
            case 16:
            case 32:
                return 101376;
            case 64:
                return 202752;
            case 128:
            case 256:
                return 414720;
            case 512:
                return 921600;
            case 1024:
                return 1310720;
            case 2048:
            case 4096:
                return 2097152;
            case 8192:
                return 2228224;
            case 16384:
                return 5652480;
            case 32768:
            case 65536:
                return 9437184;
            case 131072:
            case 262144:
            case 524288:
                return 35651584;
            default:
                return -1;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int a(i iVar) {
        return iVar.f2800a.startsWith("OMX.google") ? 1 : 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int a(f fVar, Object obj, Object obj2) {
        return fVar.getScore(obj2) - fVar.getScore(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int a(v vVar, i iVar) {
        try {
            return iVar.a(vVar) ? 1 : 0;
        } catch (b unused) {
            return -1;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0077, code lost:
        if (r3.equals("av01") == false) goto L11;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.util.Pair<java.lang.Integer, java.lang.Integer> a(com.applovin.exoplayer2.v r6) {
        /*
            java.lang.String r0 = r6.i
            r1 = 0
            if (r0 != 0) goto L6
            return r1
        L6:
            java.lang.String r0 = r6.i
            java.lang.String r2 = "\\."
            java.lang.String[] r0 = r0.split(r2)
            java.lang.String r2 = "video/dolby-vision"
            java.lang.String r3 = r6.l
            boolean r2 = r2.equals(r3)
            if (r2 == 0) goto L1f
            java.lang.String r6 = r6.i
            android.util.Pair r6 = a(r6, r0)
            return r6
        L1f:
            r2 = 0
            r3 = r0[r2]
            r3.hashCode()
            int r4 = r3.hashCode()
            r5 = -1
            switch(r4) {
                case 3004662: goto L71;
                case 3006243: goto L66;
                case 3006244: goto L5b;
                case 3199032: goto L50;
                case 3214780: goto L45;
                case 3356560: goto L3a;
                case 3624515: goto L2f;
                default: goto L2d;
            }
        L2d:
            r2 = r5
            goto L7a
        L2f:
            java.lang.String r2 = "vp09"
            boolean r2 = r3.equals(r2)
            if (r2 != 0) goto L38
            goto L2d
        L38:
            r2 = 6
            goto L7a
        L3a:
            java.lang.String r2 = "mp4a"
            boolean r2 = r3.equals(r2)
            if (r2 != 0) goto L43
            goto L2d
        L43:
            r2 = 5
            goto L7a
        L45:
            java.lang.String r2 = "hvc1"
            boolean r2 = r3.equals(r2)
            if (r2 != 0) goto L4e
            goto L2d
        L4e:
            r2 = 4
            goto L7a
        L50:
            java.lang.String r2 = "hev1"
            boolean r2 = r3.equals(r2)
            if (r2 != 0) goto L59
            goto L2d
        L59:
            r2 = 3
            goto L7a
        L5b:
            java.lang.String r2 = "avc2"
            boolean r2 = r3.equals(r2)
            if (r2 != 0) goto L64
            goto L2d
        L64:
            r2 = 2
            goto L7a
        L66:
            java.lang.String r2 = "avc1"
            boolean r2 = r3.equals(r2)
            if (r2 != 0) goto L6f
            goto L2d
        L6f:
            r2 = 1
            goto L7a
        L71:
            java.lang.String r4 = "av01"
            boolean r3 = r3.equals(r4)
            if (r3 != 0) goto L7a
            goto L2d
        L7a:
            switch(r2) {
                case 0: goto L9a;
                case 1: goto L93;
                case 2: goto L93;
                case 3: goto L8c;
                case 4: goto L8c;
                case 5: goto L85;
                case 6: goto L7e;
                default: goto L7d;
            }
        L7d:
            return r1
        L7e:
            java.lang.String r6 = r6.i
            android.util.Pair r6 = d(r6, r0)
            return r6
        L85:
            java.lang.String r6 = r6.i
            android.util.Pair r6 = e(r6, r0)
            return r6
        L8c:
            java.lang.String r6 = r6.i
            android.util.Pair r6 = b(r6, r0)
            return r6
        L93:
            java.lang.String r6 = r6.i
            android.util.Pair r6 = c(r6, r0)
            return r6
        L9a:
            java.lang.String r1 = r6.i
            com.applovin.exoplayer2.m.b r6 = r6.x
            android.util.Pair r6 = a(r1, r0, r6)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.exoplayer2.f.l.a(com.applovin.exoplayer2.v):android.util.Pair");
    }

    private static Pair<Integer, Integer> a(String str, String[] strArr) {
        StringBuilder sb;
        if (strArr.length < 3) {
            sb = new StringBuilder("Ignoring malformed Dolby Vision codec string: ");
        } else {
            Matcher matcher = f2822a.matcher(strArr[1]);
            if (matcher.matches()) {
                str = matcher.group(1);
                Integer b2 = b(str);
                if (b2 == null) {
                    sb = new StringBuilder("Unknown Dolby Vision profile string: ");
                } else {
                    str = strArr[2];
                    Integer c2 = c(str);
                    if (c2 != null) {
                        return new Pair<>(b2, c2);
                    }
                    sb = new StringBuilder("Unknown Dolby Vision level string: ");
                }
            } else {
                sb = new StringBuilder("Ignoring malformed Dolby Vision codec string: ");
            }
        }
        q.c("MediaCodecUtil", sb.append(str).toString());
        return null;
    }

    private static Pair<Integer, Integer> a(String str, String[] strArr, com.applovin.exoplayer2.m.b bVar) {
        StringBuilder sb;
        StringBuilder append;
        if (strArr.length >= 4) {
            try {
                int parseInt = Integer.parseInt(strArr[1]);
                int parseInt2 = Integer.parseInt(strArr[2].substring(0, 2));
                int parseInt3 = Integer.parseInt(strArr[3]);
                if (parseInt != 0) {
                    append = new StringBuilder("Unknown AV1 profile: ").append(parseInt);
                } else if (parseInt3 == 8 || parseInt3 == 10) {
                    int i = parseInt3 != 8 ? (bVar == null || !(bVar.f3932d != null || bVar.f3931c == 7 || bVar.f3931c == 6)) ? 2 : 4096 : 1;
                    int f2 = f(parseInt2);
                    if (f2 != -1) {
                        return new Pair<>(Integer.valueOf(i), Integer.valueOf(f2));
                    }
                    append = new StringBuilder("Unknown AV1 level: ").append(parseInt2);
                } else {
                    append = new StringBuilder("Unknown AV1 bit depth: ").append(parseInt3);
                }
            } catch (NumberFormatException unused) {
                sb = new StringBuilder("Ignoring malformed AV1 codec string: ");
            }
            q.c("MediaCodecUtil", append.toString());
            return null;
        }
        sb = new StringBuilder("Ignoring malformed AV1 codec string: ");
        append = sb.append(str);
        q.c("MediaCodecUtil", append.toString());
        return null;
    }

    public static i a() throws b {
        return a(MimeTypes.AUDIO_RAW, false, false);
    }

    public static i a(String str, boolean z, boolean z2) throws b {
        List<i> b2 = b(str, z, z2);
        if (b2.isEmpty()) {
            return null;
        }
        return b2.get(0);
    }

    private static Integer a(String str) {
        int i;
        if (str == null) {
            return null;
        }
        str.hashCode();
        char c2 = 65535;
        switch (str.hashCode()) {
            case 70821:
                if (str.equals("H30")) {
                    c2 = 0;
                    break;
                }
                break;
            case 70914:
                if (str.equals("H60")) {
                    c2 = 1;
                    break;
                }
                break;
            case 70917:
                if (str.equals("H63")) {
                    c2 = 2;
                    break;
                }
                break;
            case 71007:
                if (str.equals("H90")) {
                    c2 = 3;
                    break;
                }
                break;
            case 71010:
                if (str.equals("H93")) {
                    c2 = 4;
                    break;
                }
                break;
            case 74665:
                if (str.equals("L30")) {
                    c2 = 5;
                    break;
                }
                break;
            case 74758:
                if (str.equals("L60")) {
                    c2 = 6;
                    break;
                }
                break;
            case 74761:
                if (str.equals("L63")) {
                    c2 = 7;
                    break;
                }
                break;
            case 74851:
                if (str.equals("L90")) {
                    c2 = '\b';
                    break;
                }
                break;
            case 74854:
                if (str.equals("L93")) {
                    c2 = '\t';
                    break;
                }
                break;
            case 2193639:
                if (str.equals("H120")) {
                    c2 = '\n';
                    break;
                }
                break;
            case 2193642:
                if (str.equals("H123")) {
                    c2 = 11;
                    break;
                }
                break;
            case 2193732:
                if (str.equals("H150")) {
                    c2 = '\f';
                    break;
                }
                break;
            case 2193735:
                if (str.equals("H153")) {
                    c2 = '\r';
                    break;
                }
                break;
            case 2193738:
                if (str.equals("H156")) {
                    c2 = 14;
                    break;
                }
                break;
            case 2193825:
                if (str.equals("H180")) {
                    c2 = 15;
                    break;
                }
                break;
            case 2193828:
                if (str.equals("H183")) {
                    c2 = 16;
                    break;
                }
                break;
            case 2193831:
                if (str.equals("H186")) {
                    c2 = 17;
                    break;
                }
                break;
            case 2312803:
                if (str.equals("L120")) {
                    c2 = 18;
                    break;
                }
                break;
            case 2312806:
                if (str.equals("L123")) {
                    c2 = 19;
                    break;
                }
                break;
            case 2312896:
                if (str.equals("L150")) {
                    c2 = 20;
                    break;
                }
                break;
            case 2312899:
                if (str.equals("L153")) {
                    c2 = 21;
                    break;
                }
                break;
            case 2312902:
                if (str.equals("L156")) {
                    c2 = 22;
                    break;
                }
                break;
            case 2312989:
                if (str.equals("L180")) {
                    c2 = 23;
                    break;
                }
                break;
            case 2312992:
                if (str.equals("L183")) {
                    c2 = 24;
                    break;
                }
                break;
            case 2312995:
                if (str.equals("L186")) {
                    c2 = 25;
                    break;
                }
                break;
        }
        switch (c2) {
            case 0:
                return 2;
            case 1:
                return 8;
            case 2:
                i = 32;
                break;
            case 3:
                i = 128;
                break;
            case 4:
                i = 512;
                break;
            case 5:
                return 1;
            case 6:
                return 4;
            case 7:
                return 16;
            case '\b':
                i = 64;
                break;
            case '\t':
                i = 256;
                break;
            case '\n':
                i = 2048;
                break;
            case 11:
                i = 8192;
                break;
            case '\f':
                i = 32768;
                break;
            case '\r':
                i = 131072;
                break;
            case 14:
                i = 524288;
                break;
            case 15:
                i = 2097152;
                break;
            case 16:
                i = 8388608;
                break;
            case 17:
                i = 33554432;
                break;
            case 18:
                i = 1024;
                break;
            case 19:
                i = 4096;
                break;
            case 20:
                i = 16384;
                break;
            case 21:
                i = 65536;
                break;
            case 22:
                i = 262144;
                break;
            case 23:
                i = 1048576;
                break;
            case 24:
                i = 4194304;
                break;
            case 25:
                i = 16777216;
                break;
            default:
                return null;
        }
        return Integer.valueOf(i);
    }

    private static String a(MediaCodecInfo mediaCodecInfo, String str, String str2) {
        String[] supportedTypes;
        for (String str3 : mediaCodecInfo.getSupportedTypes()) {
            if (str3.equalsIgnoreCase(str2)) {
                return str3;
            }
        }
        if (str2.equals(MimeTypes.VIDEO_DOLBY_VISION)) {
            if ("OMX.MS.HEVCDV.Decoder".equals(str)) {
                return "video/hevcdv";
            }
            if ("OMX.RTK.video.decoder".equals(str) || "OMX.realtek.video.decoder.tunneled".equals(str)) {
                return "video/dv_hevc";
            }
            return null;
        } else if (str2.equals(MimeTypes.AUDIO_ALAC) && "OMX.lge.alac.decoder".equals(str)) {
            return "audio/x-lg-alac";
        } else {
            if (str2.equals(MimeTypes.AUDIO_FLAC) && "OMX.lge.flac.decoder".equals(str)) {
                return "audio/x-lg-flac";
            }
            return null;
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(7:30|(4:(2:75|76)|55|(9:58|59|60|61|62|63|64|66|67)|9)|34|35|36|37|9) */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0083, code lost:
        if (r1.f2826b == false) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00a8, code lost:
        r0 = e;
     */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0108 A[Catch: Exception -> 0x015e, TRY_ENTER, TryCatch #0 {Exception -> 0x015e, blocks: (B:3:0x0008, B:5:0x001b, B:63:0x012a, B:8:0x002d, B:11:0x0038, B:57:0x0100, B:60:0x0108, B:62:0x010e, B:64:0x0134, B:65:0x015c), top: B:70:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0134 A[ADDED_TO_REGION, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.util.ArrayList<com.applovin.exoplayer2.f.i> a(com.applovin.exoplayer2.f.l.a r24, com.applovin.exoplayer2.f.l.c r25) throws com.applovin.exoplayer2.f.l.b {
        /*
            Method dump skipped, instructions count: 358
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.exoplayer2.f.l.a(com.applovin.exoplayer2.f.l$a, com.applovin.exoplayer2.f.l$c):java.util.ArrayList");
    }

    public static List<i> a(List<i> list, final v vVar) {
        ArrayList arrayList = new ArrayList(list);
        a(arrayList, new f() { // from class: com.applovin.exoplayer2.f.l$$ExternalSyntheticLambda1
            @Override // com.applovin.exoplayer2.f.l.f
            public final int getScore(Object obj) {
                int a2;
                a2 = l.a(v.this, (i) obj);
                return a2;
            }
        });
        return arrayList;
    }

    private static void a(String str, List<i> list) {
        if (MimeTypes.AUDIO_RAW.equals(str)) {
            if (ai.f3781a < 26 && ai.f3782b.equals("R9") && list.size() == 1 && list.get(0).f2800a.equals("OMX.MTK.AUDIO.DECODER.RAW")) {
                list.add(i.a("OMX.google.raw.decoder", MimeTypes.AUDIO_RAW, MimeTypes.AUDIO_RAW, null, false, true, false, false, false));
            }
            a(list, new f() { // from class: com.applovin.exoplayer2.f.l$$ExternalSyntheticLambda2
                @Override // com.applovin.exoplayer2.f.l.f
                public final int getScore(Object obj) {
                    int b2;
                    b2 = l.b((i) obj);
                    return b2;
                }
            });
        }
        if (ai.f3781a < 21 && list.size() > 1) {
            String str2 = list.get(0).f2800a;
            if ("OMX.SEC.mp3.dec".equals(str2) || "OMX.SEC.MP3.Decoder".equals(str2) || "OMX.brcm.audio.mp3.decoder".equals(str2)) {
                a(list, new f() { // from class: com.applovin.exoplayer2.f.l$$ExternalSyntheticLambda3
                    @Override // com.applovin.exoplayer2.f.l.f
                    public final int getScore(Object obj) {
                        int a2;
                        a2 = l.a((i) obj);
                        return a2;
                    }
                });
            }
        }
        if (ai.f3781a >= 32 || list.size() <= 1 || !"OMX.qti.audio.decoder.flac".equals(list.get(0).f2800a)) {
            return;
        }
        list.add(list.remove(0));
    }

    private static <T> void a(List<T> list, final f<T> fVar) {
        Collections.sort(list, new Comparator() { // from class: com.applovin.exoplayer2.f.l$$ExternalSyntheticLambda0
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int a2;
                a2 = l.a(l.f.this, obj, obj2);
                return a2;
            }
        });
    }

    private static boolean a(MediaCodecInfo mediaCodecInfo) {
        return ai.f3781a >= 29 && b(mediaCodecInfo);
    }

    private static boolean a(MediaCodecInfo mediaCodecInfo, String str, boolean z, String str2) {
        if (mediaCodecInfo.isEncoder() || (!z && str.endsWith(".secure"))) {
            return false;
        }
        if (ai.f3781a >= 21 || !("CIPAACDecoder".equals(str) || "CIPMP3Decoder".equals(str) || "CIPVorbisDecoder".equals(str) || "CIPAMRNBDecoder".equals(str) || "AACDecoder".equals(str) || "MP3Decoder".equals(str))) {
            if (ai.f3781a < 18 && "OMX.MTK.AUDIO.DECODER.AAC".equals(str) && ("a70".equals(ai.f3782b) || ("Xiaomi".equals(ai.f3783c) && ai.f3782b.startsWith("HM")))) {
                return false;
            }
            if (ai.f3781a == 16 && "OMX.qcom.audio.decoder.mp3".equals(str) && ("dlxu".equals(ai.f3782b) || "protou".equals(ai.f3782b) || "ville".equals(ai.f3782b) || "villeplus".equals(ai.f3782b) || "villec2".equals(ai.f3782b) || ai.f3782b.startsWith("gee") || "C6602".equals(ai.f3782b) || "C6603".equals(ai.f3782b) || "C6606".equals(ai.f3782b) || "C6616".equals(ai.f3782b) || "L36h".equals(ai.f3782b) || "SO-02E".equals(ai.f3782b))) {
                return false;
            }
            if (ai.f3781a == 16 && "OMX.qcom.audio.decoder.aac".equals(str) && ("C1504".equals(ai.f3782b) || "C1505".equals(ai.f3782b) || "C1604".equals(ai.f3782b) || "C1605".equals(ai.f3782b))) {
                return false;
            }
            if (ai.f3781a >= 24 || !(("OMX.SEC.aac.dec".equals(str) || "OMX.Exynos.AAC.Decoder".equals(str)) && "samsung".equals(ai.f3783c) && (ai.f3782b.startsWith("zeroflte") || ai.f3782b.startsWith("zerolte") || ai.f3782b.startsWith("zenlte") || "SC-05G".equals(ai.f3782b) || "marinelteatt".equals(ai.f3782b) || "404SC".equals(ai.f3782b) || "SC-04G".equals(ai.f3782b) || "SCV31".equals(ai.f3782b)))) {
                if (ai.f3781a <= 19 && "OMX.SEC.vp8.dec".equals(str) && "samsung".equals(ai.f3783c) && (ai.f3782b.startsWith("d2") || ai.f3782b.startsWith("serrano") || ai.f3782b.startsWith("jflte") || ai.f3782b.startsWith("santos") || ai.f3782b.startsWith("t0"))) {
                    return false;
                }
                if (ai.f3781a <= 19 && ai.f3782b.startsWith("jflte") && "OMX.qcom.video.decoder.vp8".equals(str)) {
                    return false;
                }
                return (MimeTypes.AUDIO_E_AC3_JOC.equals(str2) && "OMX.MTK.AUDIO.DECODER.DSPAC3".equals(str)) ? false : true;
            }
            return false;
        }
        return false;
    }

    public static int b() throws b {
        if (f2824c == -1) {
            int i = 0;
            i a2 = a("video/avc", false, false);
            if (a2 != null) {
                MediaCodecInfo.CodecProfileLevel[] a3 = a2.a();
                int length = a3.length;
                int i2 = 0;
                while (i < length) {
                    i2 = Math.max(a(a3[i].level), i2);
                    i++;
                }
                i = Math.max(i2, ai.f3781a >= 21 ? 345600 : 172800);
            }
            f2824c = i;
        }
        return f2824c;
    }

    private static int b(int i) {
        if (i != 66) {
            if (i != 77) {
                if (i != 88) {
                    if (i != 100) {
                        if (i != 110) {
                            if (i != 122) {
                                return i != 244 ? -1 : 64;
                            }
                            return 32;
                        }
                        return 16;
                    }
                    return 8;
                }
                return 4;
            }
            return 2;
        }
        return 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int b(i iVar) {
        String str = iVar.f2800a;
        if (str.startsWith("OMX.google") || str.startsWith("c2.android")) {
            return 1;
        }
        return (ai.f3781a >= 26 || !str.equals("OMX.MTK.AUDIO.DECODER.RAW")) ? 0 : -1;
    }

    private static Pair<Integer, Integer> b(String str, String[] strArr) {
        StringBuilder sb;
        if (strArr.length < 4) {
            sb = new StringBuilder("Ignoring malformed HEVC codec string: ");
        } else {
            int i = 1;
            Matcher matcher = f2822a.matcher(strArr[1]);
            if (matcher.matches()) {
                str = matcher.group(1);
                if (!IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE.equals(str)) {
                    if ("2".equals(str)) {
                        i = 2;
                    } else {
                        sb = new StringBuilder("Unknown HEVC profile string: ");
                    }
                }
                str = strArr[3];
                Integer a2 = a(str);
                if (a2 != null) {
                    return new Pair<>(Integer.valueOf(i), a2);
                }
                sb = new StringBuilder("Unknown HEVC level string: ");
            } else {
                sb = new StringBuilder("Ignoring malformed HEVC codec string: ");
            }
        }
        q.c("MediaCodecUtil", sb.append(str).toString());
        return null;
    }

    private static Integer b(String str) {
        int i;
        if (str == null) {
            return null;
        }
        str.hashCode();
        char c2 = 65535;
        switch (str.hashCode()) {
            case 1536:
                if (str.equals("00")) {
                    c2 = 0;
                    break;
                }
                break;
            case 1537:
                if (str.equals("01")) {
                    c2 = 1;
                    break;
                }
                break;
            case 1538:
                if (str.equals("02")) {
                    c2 = 2;
                    break;
                }
                break;
            case 1539:
                if (str.equals("03")) {
                    c2 = 3;
                    break;
                }
                break;
            case 1540:
                if (str.equals("04")) {
                    c2 = 4;
                    break;
                }
                break;
            case 1541:
                if (str.equals("05")) {
                    c2 = 5;
                    break;
                }
                break;
            case 1542:
                if (str.equals("06")) {
                    c2 = 6;
                    break;
                }
                break;
            case 1543:
                if (str.equals("07")) {
                    c2 = 7;
                    break;
                }
                break;
            case 1544:
                if (str.equals("08")) {
                    c2 = '\b';
                    break;
                }
                break;
            case 1545:
                if (str.equals("09")) {
                    c2 = '\t';
                    break;
                }
                break;
        }
        switch (c2) {
            case 0:
                return 1;
            case 1:
                return 2;
            case 2:
                return 4;
            case 3:
                return 8;
            case 4:
                i = 16;
                break;
            case 5:
                i = 32;
                break;
            case 6:
                i = 64;
                break;
            case 7:
                i = 128;
                break;
            case '\b':
                i = 256;
                break;
            case '\t':
                i = 512;
                break;
            default:
                return null;
        }
        return Integer.valueOf(i);
    }

    public static synchronized List<i> b(String str, boolean z, boolean z2) throws b {
        synchronized (l.class) {
            a aVar = new a(str, z, z2);
            HashMap<a, List<i>> hashMap = f2823b;
            List<i> list = hashMap.get(aVar);
            if (list != null) {
                return list;
            }
            ArrayList<i> a2 = a(aVar, ai.f3781a >= 21 ? new e(z, z2) : new d());
            if (z && a2.isEmpty() && 21 <= ai.f3781a && ai.f3781a <= 23) {
                a2 = a(aVar, new d());
                if (!a2.isEmpty()) {
                    q.c("MediaCodecUtil", "MediaCodecList API didn't list secure decoder for: " + str + ". Assuming: " + a2.get(0).f2800a);
                }
            }
            a(str, a2);
            List<i> unmodifiableList = Collections.unmodifiableList(a2);
            hashMap.put(aVar, unmodifiableList);
            return unmodifiableList;
        }
    }

    private static boolean b(MediaCodecInfo mediaCodecInfo) {
        return mediaCodecInfo.isAlias();
    }

    private static int c(int i) {
        switch (i) {
            case 10:
                return 1;
            case 11:
                return 4;
            case 12:
                return 8;
            case 13:
                return 16;
            default:
                switch (i) {
                    case 20:
                        return 32;
                    case 21:
                        return 64;
                    case 22:
                        return 128;
                    default:
                        switch (i) {
                            case 30:
                                return 256;
                            case 31:
                                return 512;
                            case 32:
                                return 1024;
                            default:
                                switch (i) {
                                    case 40:
                                        return 2048;
                                    case 41:
                                        return 4096;
                                    case 42:
                                        return 8192;
                                    default:
                                        switch (i) {
                                            case 50:
                                                return 16384;
                                            case 51:
                                                return 32768;
                                            case 52:
                                                return 65536;
                                            default:
                                                return -1;
                                        }
                                }
                        }
                }
        }
    }

    private static Pair<Integer, Integer> c(String str, String[] strArr) {
        StringBuilder sb;
        int parseInt;
        int i;
        StringBuilder append;
        if (strArr.length >= 2) {
            try {
                if (strArr[1].length() == 6) {
                    i = Integer.parseInt(strArr[1].substring(0, 2), 16);
                    parseInt = Integer.parseInt(strArr[1].substring(4), 16);
                } else if (strArr.length < 3) {
                    q.c("MediaCodecUtil", "Ignoring malformed AVC codec string: " + str);
                    return null;
                } else {
                    int parseInt2 = Integer.parseInt(strArr[1]);
                    parseInt = Integer.parseInt(strArr[2]);
                    i = parseInt2;
                }
                int b2 = b(i);
                if (b2 == -1) {
                    append = new StringBuilder("Unknown AVC profile: ").append(i);
                } else {
                    int c2 = c(parseInt);
                    if (c2 != -1) {
                        return new Pair<>(Integer.valueOf(b2), Integer.valueOf(c2));
                    }
                    append = new StringBuilder("Unknown AVC level: ").append(parseInt);
                }
            } catch (NumberFormatException unused) {
                sb = new StringBuilder("Ignoring malformed AVC codec string: ");
            }
            q.c("MediaCodecUtil", append.toString());
            return null;
        }
        sb = new StringBuilder("Ignoring malformed AVC codec string: ");
        append = sb.append(str);
        q.c("MediaCodecUtil", append.toString());
        return null;
    }

    private static Integer c(String str) {
        int i;
        if (str == null) {
            return null;
        }
        str.hashCode();
        char c2 = 65535;
        switch (str.hashCode()) {
            case 1537:
                if (str.equals("01")) {
                    c2 = 0;
                    break;
                }
                break;
            case 1538:
                if (str.equals("02")) {
                    c2 = 1;
                    break;
                }
                break;
            case 1539:
                if (str.equals("03")) {
                    c2 = 2;
                    break;
                }
                break;
            case 1540:
                if (str.equals("04")) {
                    c2 = 3;
                    break;
                }
                break;
            case 1541:
                if (str.equals("05")) {
                    c2 = 4;
                    break;
                }
                break;
            case 1542:
                if (str.equals("06")) {
                    c2 = 5;
                    break;
                }
                break;
            case 1543:
                if (str.equals("07")) {
                    c2 = 6;
                    break;
                }
                break;
            case 1544:
                if (str.equals("08")) {
                    c2 = 7;
                    break;
                }
                break;
            case 1545:
                if (str.equals("09")) {
                    c2 = '\b';
                    break;
                }
                break;
            case 1567:
                if (str.equals("10")) {
                    c2 = '\t';
                    break;
                }
                break;
            case 1568:
                if (str.equals("11")) {
                    c2 = '\n';
                    break;
                }
                break;
            case 1569:
                if (str.equals("12")) {
                    c2 = 11;
                    break;
                }
                break;
            case 1570:
                if (str.equals("13")) {
                    c2 = '\f';
                    break;
                }
                break;
        }
        switch (c2) {
            case 0:
                return 1;
            case 1:
                return 2;
            case 2:
                return 4;
            case 3:
                return 8;
            case 4:
                i = 16;
                break;
            case 5:
                i = 32;
                break;
            case 6:
                i = 64;
                break;
            case 7:
                i = 128;
                break;
            case '\b':
                i = 256;
                break;
            case '\t':
                i = 512;
                break;
            case '\n':
                i = 1024;
                break;
            case 11:
                i = 2048;
                break;
            case '\f':
                i = 4096;
                break;
            default:
                return null;
        }
        return Integer.valueOf(i);
    }

    private static boolean c(MediaCodecInfo mediaCodecInfo) {
        return ai.f3781a >= 29 ? d(mediaCodecInfo) : !e(mediaCodecInfo);
    }

    private static int d(int i) {
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    return i != 3 ? -1 : 8;
                }
                return 4;
            }
            return 2;
        }
        return 1;
    }

    private static Pair<Integer, Integer> d(String str, String[] strArr) {
        StringBuilder sb;
        StringBuilder append;
        if (strArr.length >= 3) {
            try {
                int parseInt = Integer.parseInt(strArr[1]);
                int parseInt2 = Integer.parseInt(strArr[2]);
                int d2 = d(parseInt);
                if (d2 == -1) {
                    append = new StringBuilder("Unknown VP9 profile: ").append(parseInt);
                } else {
                    int e2 = e(parseInt2);
                    if (e2 != -1) {
                        return new Pair<>(Integer.valueOf(d2), Integer.valueOf(e2));
                    }
                    append = new StringBuilder("Unknown VP9 level: ").append(parseInt2);
                }
            } catch (NumberFormatException unused) {
                sb = new StringBuilder("Ignoring malformed VP9 codec string: ");
            }
            q.c("MediaCodecUtil", append.toString());
            return null;
        }
        sb = new StringBuilder("Ignoring malformed VP9 codec string: ");
        append = sb.append(str);
        q.c("MediaCodecUtil", append.toString());
        return null;
    }

    private static boolean d(MediaCodecInfo mediaCodecInfo) {
        return mediaCodecInfo.isHardwareAccelerated();
    }

    private static int e(int i) {
        if (i != 10) {
            if (i != 11) {
                if (i != 20) {
                    if (i != 21) {
                        if (i != 30) {
                            if (i != 31) {
                                if (i != 40) {
                                    if (i != 41) {
                                        if (i != 50) {
                                            if (i != 51) {
                                                switch (i) {
                                                    case 60:
                                                        return 2048;
                                                    case 61:
                                                        return 4096;
                                                    case 62:
                                                        return 8192;
                                                    default:
                                                        return -1;
                                                }
                                            }
                                            return 512;
                                        }
                                        return 256;
                                    }
                                    return 128;
                                }
                                return 64;
                            }
                            return 32;
                        }
                        return 16;
                    }
                    return 8;
                }
                return 4;
            }
            return 2;
        }
        return 1;
    }

    private static Pair<Integer, Integer> e(String str, String[] strArr) {
        int g2;
        if (strArr.length != 3) {
            q.c("MediaCodecUtil", "Ignoring malformed MP4A codec string: " + str);
            return null;
        }
        try {
            if (MimeTypes.AUDIO_AAC.equals(u.a(Integer.parseInt(strArr[1], 16))) && (g2 = g(Integer.parseInt(strArr[2]))) != -1) {
                return new Pair<>(Integer.valueOf(g2), 0);
            }
        } catch (NumberFormatException unused) {
            q.c("MediaCodecUtil", "Ignoring malformed MP4A codec string: " + str);
        }
        return null;
    }

    private static boolean e(MediaCodecInfo mediaCodecInfo) {
        if (ai.f3781a >= 29) {
            return f(mediaCodecInfo);
        }
        String lowerCase = Ascii.toLowerCase(mediaCodecInfo.getName());
        if (lowerCase.startsWith("arc.")) {
            return false;
        }
        return lowerCase.startsWith("omx.google.") || lowerCase.startsWith("omx.ffmpeg.") || (lowerCase.startsWith("omx.sec.") && lowerCase.contains(".sw.")) || lowerCase.equals("omx.qcom.video.decoder.hevcswvdec") || lowerCase.startsWith("c2.android.") || lowerCase.startsWith("c2.google.") || !(lowerCase.startsWith("omx.") || lowerCase.startsWith("c2."));
    }

    private static int f(int i) {
        switch (i) {
            case 0:
                return 1;
            case 1:
                return 2;
            case 2:
                return 4;
            case 3:
                return 8;
            case 4:
                return 16;
            case 5:
                return 32;
            case 6:
                return 64;
            case 7:
                return 128;
            case 8:
                return 256;
            case 9:
                return 512;
            case 10:
                return 1024;
            case 11:
                return 2048;
            case 12:
                return 4096;
            case 13:
                return 8192;
            case 14:
                return 16384;
            case 15:
                return 32768;
            case 16:
                return 65536;
            case 17:
                return 131072;
            case 18:
                return 262144;
            case 19:
                return 524288;
            case 20:
                return 1048576;
            case 21:
                return 2097152;
            case 22:
                return 4194304;
            case 23:
                return 8388608;
            default:
                return -1;
        }
    }

    private static boolean f(MediaCodecInfo mediaCodecInfo) {
        return mediaCodecInfo.isSoftwareOnly();
    }

    private static int g(int i) {
        int i2 = 17;
        if (i != 17) {
            i2 = 20;
            if (i != 20) {
                i2 = 23;
                if (i != 23) {
                    i2 = 29;
                    if (i != 29) {
                        i2 = 39;
                        if (i != 39) {
                            i2 = 42;
                            if (i != 42) {
                                switch (i) {
                                    case 1:
                                        return 1;
                                    case 2:
                                        return 2;
                                    case 3:
                                        return 3;
                                    case 4:
                                        return 4;
                                    case 5:
                                        return 5;
                                    case 6:
                                        return 6;
                                    default:
                                        return -1;
                                }
                            }
                        }
                    }
                }
            }
        }
        return i2;
    }

    private static boolean g(MediaCodecInfo mediaCodecInfo) {
        if (ai.f3781a >= 29) {
            return h(mediaCodecInfo);
        }
        String lowerCase = Ascii.toLowerCase(mediaCodecInfo.getName());
        return (lowerCase.startsWith("omx.google.") || lowerCase.startsWith("c2.android.") || lowerCase.startsWith("c2.google.")) ? false : true;
    }

    private static boolean h(MediaCodecInfo mediaCodecInfo) {
        return mediaCodecInfo.isVendor();
    }
}
