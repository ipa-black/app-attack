package com.applovin.exoplayer2.f;

import android.graphics.Point;
import android.media.MediaCodecInfo;
import android.util.Pair;
import com.applovin.exoplayer2.f.l;
import com.applovin.exoplayer2.l.ai;
import com.applovin.exoplayer2.l.q;
import com.applovin.exoplayer2.l.u;
import com.applovin.exoplayer2.v;
import com.google.android.exoplayer2.util.MimeTypes;
/* loaded from: classes.dex */
public final class i {

    /* renamed from: a  reason: collision with root package name */
    public final String f2800a;

    /* renamed from: b  reason: collision with root package name */
    public final String f2801b;

    /* renamed from: c  reason: collision with root package name */
    public final String f2802c;

    /* renamed from: d  reason: collision with root package name */
    public final MediaCodecInfo.CodecCapabilities f2803d;

    /* renamed from: e  reason: collision with root package name */
    public final boolean f2804e;

    /* renamed from: f  reason: collision with root package name */
    public final boolean f2805f;

    /* renamed from: g  reason: collision with root package name */
    public final boolean f2806g;

    /* renamed from: h  reason: collision with root package name */
    public final boolean f2807h;
    public final boolean i;
    public final boolean j;
    private final boolean k;

    i(String str, String str2, String str3, MediaCodecInfo.CodecCapabilities codecCapabilities, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6) {
        this.f2800a = (String) com.applovin.exoplayer2.l.a.b(str);
        this.f2801b = str2;
        this.f2802c = str3;
        this.f2803d = codecCapabilities;
        this.f2807h = z;
        this.i = z2;
        this.j = z3;
        this.f2804e = z4;
        this.f2805f = z5;
        this.f2806g = z6;
        this.k = u.b(str2);
    }

    private static int a(String str, String str2, int i) {
        if (i > 1 || ((ai.f3781a >= 26 && i > 0) || MimeTypes.AUDIO_MPEG.equals(str2) || MimeTypes.AUDIO_AMR_NB.equals(str2) || MimeTypes.AUDIO_AMR_WB.equals(str2) || MimeTypes.AUDIO_AAC.equals(str2) || MimeTypes.AUDIO_VORBIS.equals(str2) || MimeTypes.AUDIO_OPUS.equals(str2) || MimeTypes.AUDIO_RAW.equals(str2) || MimeTypes.AUDIO_FLAC.equals(str2) || MimeTypes.AUDIO_ALAW.equals(str2) || MimeTypes.AUDIO_MLAW.equals(str2) || MimeTypes.AUDIO_MSGSM.equals(str2))) {
            return i;
        }
        int i2 = MimeTypes.AUDIO_AC3.equals(str2) ? 6 : MimeTypes.AUDIO_E_AC3.equals(str2) ? 16 : 30;
        q.c(com.google.android.exoplayer2.mediacodec.MediaCodecInfo.TAG, "AssumedMaxChannelAdjustment: " + str + ", [" + i + " to " + i2 + "]");
        return i2;
    }

    private static Point a(MediaCodecInfo.VideoCapabilities videoCapabilities, int i, int i2) {
        int widthAlignment = videoCapabilities.getWidthAlignment();
        int heightAlignment = videoCapabilities.getHeightAlignment();
        return new Point(ai.a(i, widthAlignment) * widthAlignment, ai.a(i2, heightAlignment) * heightAlignment);
    }

    public static i a(String str, String str2, String str3, MediaCodecInfo.CodecCapabilities codecCapabilities, boolean z, boolean z2, boolean z3, boolean z4, boolean z5) {
        return new i(str, str2, str3, codecCapabilities, z, z2, z3, (z4 || codecCapabilities == null || !a(codecCapabilities) || c(str)) ? false : true, codecCapabilities != null && c(codecCapabilities), z5 || (codecCapabilities != null && e(codecCapabilities)));
    }

    private void a(String str) {
        q.a(com.google.android.exoplayer2.mediacodec.MediaCodecInfo.TAG, "NoSupport [" + str + "] [" + this.f2800a + ", " + this.f2801b + "] [" + ai.f3785e + "]");
    }

    private static boolean a(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return ai.f3781a >= 19 && b(codecCapabilities);
    }

    private static boolean a(MediaCodecInfo.VideoCapabilities videoCapabilities, int i, int i2, double d2) {
        Point a2 = a(videoCapabilities, i, i2);
        int i3 = a2.x;
        int i4 = a2.y;
        return (d2 == -1.0d || d2 < 1.0d) ? videoCapabilities.isSizeSupported(i3, i4) : videoCapabilities.areSizeAndRateSupported(i3, i4, Math.floor(d2));
    }

    private void b(String str) {
        q.a(com.google.android.exoplayer2.mediacodec.MediaCodecInfo.TAG, "AssumedSupport [" + str + "] [" + this.f2800a + ", " + this.f2801b + "] [" + ai.f3785e + "]");
    }

    private static boolean b(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return codecCapabilities.isFeatureSupported("adaptive-playback");
    }

    private static boolean c(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return ai.f3781a >= 21 && d(codecCapabilities);
    }

    private static boolean c(String str) {
        return ai.f3781a <= 22 && ("ODROID-XU3".equals(ai.f3784d) || "Nexus 10".equals(ai.f3784d)) && ("OMX.Exynos.AVC.Decoder".equals(str) || "OMX.Exynos.AVC.Decoder.secure".equals(str));
    }

    private static boolean d(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return codecCapabilities.isFeatureSupported("tunneled-playback");
    }

    private static boolean d(String str) {
        return ai.f3784d.startsWith("SM-T230") && "OMX.MARVELL.VIDEO.HW.CODA7542DECODER".equals(str);
    }

    private static boolean e(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return ai.f3781a >= 21 && f(codecCapabilities);
    }

    private static boolean e(String str) {
        return MimeTypes.AUDIO_OPUS.equals(str);
    }

    private static boolean f(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return codecCapabilities.isFeatureSupported("secure-playback");
    }

    private static final boolean f(String str) {
        return ("OMX.MTK.VIDEO.DECODER.HEVC".equals(str) && "mcv5a".equals(ai.f3782b)) ? false : true;
    }

    private static MediaCodecInfo.CodecProfileLevel[] g(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        MediaCodecInfo.VideoCapabilities videoCapabilities;
        int intValue = (codecCapabilities == null || (videoCapabilities = codecCapabilities.getVideoCapabilities()) == null) ? 0 : videoCapabilities.getBitrateRange().getUpper().intValue();
        int i = intValue >= 180000000 ? 1024 : intValue >= 120000000 ? 512 : intValue >= 60000000 ? 256 : intValue >= 30000000 ? 128 : intValue >= 18000000 ? 64 : intValue >= 12000000 ? 32 : intValue >= 7200000 ? 16 : intValue >= 3600000 ? 8 : intValue >= 1800000 ? 4 : intValue >= 800000 ? 2 : 1;
        MediaCodecInfo.CodecProfileLevel codecProfileLevel = new MediaCodecInfo.CodecProfileLevel();
        codecProfileLevel.profile = 1;
        codecProfileLevel.level = i;
        return new MediaCodecInfo.CodecProfileLevel[]{codecProfileLevel};
    }

    public Point a(int i, int i2) {
        MediaCodecInfo.VideoCapabilities videoCapabilities;
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.f2803d;
        if (codecCapabilities == null || (videoCapabilities = codecCapabilities.getVideoCapabilities()) == null) {
            return null;
        }
        return a(videoCapabilities, i, i2);
    }

    public com.applovin.exoplayer2.c.h a(v vVar, v vVar2) {
        int i = !ai.a((Object) vVar.l, (Object) vVar2.l) ? 8 : 0;
        if (this.k) {
            if (vVar.t != vVar2.t) {
                i |= 1024;
            }
            if (!this.f2804e && (vVar.q != vVar2.q || vVar.r != vVar2.r)) {
                i |= 512;
            }
            if (!ai.a(vVar.x, vVar2.x)) {
                i |= 2048;
            }
            if (d(this.f2800a) && !vVar.a(vVar2)) {
                i |= 2;
            }
            if (i == 0) {
                return new com.applovin.exoplayer2.c.h(this.f2800a, vVar, vVar2, vVar.a(vVar2) ? 3 : 2, 0);
            }
        } else {
            if (vVar.y != vVar2.y) {
                i |= 4096;
            }
            if (vVar.z != vVar2.z) {
                i |= 8192;
            }
            if (vVar.A != vVar2.A) {
                i |= 16384;
            }
            if (i == 0 && MimeTypes.AUDIO_AAC.equals(this.f2801b)) {
                Pair<Integer, Integer> a2 = l.a(vVar);
                Pair<Integer, Integer> a3 = l.a(vVar2);
                if (a2 != null && a3 != null) {
                    int intValue = ((Integer) a2.first).intValue();
                    int intValue2 = ((Integer) a3.first).intValue();
                    if (intValue == 42 && intValue2 == 42) {
                        return new com.applovin.exoplayer2.c.h(this.f2800a, vVar, vVar2, 3, 0);
                    }
                }
            }
            if (!vVar.a(vVar2)) {
                i |= 32;
            }
            if (e(this.f2801b)) {
                i |= 2;
            }
            if (i == 0) {
                return new com.applovin.exoplayer2.c.h(this.f2800a, vVar, vVar2, 1, 0);
            }
        }
        return new com.applovin.exoplayer2.c.h(this.f2800a, vVar, vVar2, 0, i);
    }

    public boolean a(int i) {
        String str;
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.f2803d;
        if (codecCapabilities == null) {
            str = "sampleRate.caps";
        } else {
            MediaCodecInfo.AudioCapabilities audioCapabilities = codecCapabilities.getAudioCapabilities();
            if (audioCapabilities == null) {
                str = "sampleRate.aCaps";
            } else if (audioCapabilities.isSampleRateSupported(i)) {
                return true;
            } else {
                str = "sampleRate.support, " + i;
            }
        }
        a(str);
        return false;
    }

    public boolean a(int i, int i2, double d2) {
        String str;
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.f2803d;
        if (codecCapabilities == null) {
            str = "sizeAndRate.caps";
        } else {
            MediaCodecInfo.VideoCapabilities videoCapabilities = codecCapabilities.getVideoCapabilities();
            if (videoCapabilities == null) {
                str = "sizeAndRate.vCaps";
            } else if (a(videoCapabilities, i, i2, d2)) {
                return true;
            } else {
                if (i < i2 && f(this.f2800a) && a(videoCapabilities, i2, i, d2)) {
                    b("sizeAndRate.rotated, " + i + "x" + i2 + "x" + d2);
                    return true;
                }
                str = "sizeAndRate.support, " + i + "x" + i2 + "x" + d2;
            }
        }
        a(str);
        return false;
    }

    public boolean a(v vVar) throws l.b {
        if (b(vVar)) {
            if (!this.k) {
                if (ai.f3781a >= 21) {
                    if (vVar.z != -1 && !a(vVar.z)) {
                        return false;
                    }
                    if (vVar.y != -1 && !b(vVar.y)) {
                        return false;
                    }
                }
                return true;
            } else if (vVar.q <= 0 || vVar.r <= 0) {
                return true;
            } else {
                if (ai.f3781a >= 21) {
                    return a(vVar.q, vVar.r, vVar.s);
                }
                boolean z = vVar.q * vVar.r <= l.b();
                if (!z) {
                    a("legacyFrameSize, " + vVar.q + "x" + vVar.r);
                }
                return z;
            }
        }
        return false;
    }

    public MediaCodecInfo.CodecProfileLevel[] a() {
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.f2803d;
        return (codecCapabilities == null || codecCapabilities.profileLevels == null) ? new MediaCodecInfo.CodecProfileLevel[0] : this.f2803d.profileLevels;
    }

    public boolean b() {
        if (ai.f3781a >= 29 && MimeTypes.VIDEO_VP9.equals(this.f2801b)) {
            for (MediaCodecInfo.CodecProfileLevel codecProfileLevel : a()) {
                if (codecProfileLevel.profile == 16384) {
                    return true;
                }
            }
        }
        return false;
    }

    public boolean b(int i) {
        String str;
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.f2803d;
        if (codecCapabilities == null) {
            str = "channelCount.caps";
        } else {
            MediaCodecInfo.AudioCapabilities audioCapabilities = codecCapabilities.getAudioCapabilities();
            if (audioCapabilities == null) {
                str = "channelCount.aCaps";
            } else if (a(this.f2800a, this.f2801b, audioCapabilities.getMaxInputChannelCount()) >= i) {
                return true;
            } else {
                str = "channelCount.support, " + i;
            }
        }
        a(str);
        return false;
    }

    public boolean b(v vVar) {
        String d2;
        StringBuilder sb;
        if (vVar.i == null || this.f2801b == null || (d2 = u.d(vVar.i)) == null) {
            return true;
        }
        if (this.f2801b.equals(d2)) {
            Pair<Integer, Integer> a2 = l.a(vVar);
            if (a2 == null) {
                return true;
            }
            int intValue = ((Integer) a2.first).intValue();
            int intValue2 = ((Integer) a2.second).intValue();
            if (!this.k && intValue != 42) {
                return true;
            }
            MediaCodecInfo.CodecProfileLevel[] a3 = a();
            if (ai.f3781a <= 23 && MimeTypes.VIDEO_VP9.equals(this.f2801b) && a3.length == 0) {
                a3 = g(this.f2803d);
            }
            for (MediaCodecInfo.CodecProfileLevel codecProfileLevel : a3) {
                if (codecProfileLevel.profile == intValue && codecProfileLevel.level >= intValue2) {
                    return true;
                }
            }
            sb = new StringBuilder("codec.profileLevel, ");
        } else {
            sb = new StringBuilder("codec.mime ");
        }
        a(sb.append(vVar.i).append(", ").append(d2).toString());
        return false;
    }

    public boolean c(v vVar) {
        if (this.k) {
            return this.f2804e;
        }
        Pair<Integer, Integer> a2 = l.a(vVar);
        return a2 != null && ((Integer) a2.first).intValue() == 42;
    }

    public String toString() {
        return this.f2800a;
    }
}
