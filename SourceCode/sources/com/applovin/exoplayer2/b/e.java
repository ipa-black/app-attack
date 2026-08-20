package com.applovin.exoplayer2.b;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.AudioAttributes;
import android.media.AudioFormat;
import android.media.AudioTrack;
import android.provider.Settings;
import com.applovin.exoplayer2.common.a.s;
import com.applovin.exoplayer2.l.ai;
import com.google.android.exoplayer2.audio.OpusUtil;
import java.util.Arrays;
/* loaded from: classes.dex */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    public static final e f1478a = new e(new int[]{2}, 8);

    /* renamed from: b  reason: collision with root package name */
    private static final e f1479b = new e(new int[]{2, 5, 6}, 8);

    /* renamed from: c  reason: collision with root package name */
    private static final int[] f1480c = {5, 6, 18, 17, 14, 7, 8};

    /* renamed from: d  reason: collision with root package name */
    private final int[] f1481d;

    /* renamed from: e  reason: collision with root package name */
    private final int f1482e;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class a {
        public static int[] a() {
            int[] iArr;
            s.a i = com.applovin.exoplayer2.common.a.s.i();
            for (int i2 : e.f1480c) {
                if (AudioTrack.isDirectPlaybackSupported(new AudioFormat.Builder().setChannelMask(12).setEncoding(i2).setSampleRate(OpusUtil.SAMPLE_RATE).build(), new AudioAttributes.Builder().setUsage(1).setContentType(3).setFlags(0).build())) {
                    i.a(Integer.valueOf(i2));
                }
            }
            i.a(2);
            return com.applovin.exoplayer2.common.b.c.a(i.a());
        }
    }

    public e(int[] iArr, int i) {
        if (iArr != null) {
            int[] copyOf = Arrays.copyOf(iArr, iArr.length);
            this.f1481d = copyOf;
            Arrays.sort(copyOf);
        } else {
            this.f1481d = new int[0];
        }
        this.f1482e = i;
    }

    public static e a(Context context) {
        return a(context, context.registerReceiver(null, new IntentFilter("android.media.action.HDMI_AUDIO_PLUG")));
    }

    static e a(Context context, Intent intent) {
        return (c() && Settings.Global.getInt(context.getContentResolver(), "external_surround_sound_enabled", 0) == 1) ? f1479b : (ai.f3781a < 29 || !ai.c(context)) ? (intent == null || intent.getIntExtra("android.media.extra.AUDIO_PLUG_STATE", 0) == 0) ? f1478a : new e(intent.getIntArrayExtra("android.media.extra.ENCODINGS"), intent.getIntExtra("android.media.extra.MAX_CHANNEL_COUNT", 8)) : new e(a.a(), 8);
    }

    private static boolean c() {
        return ai.f3781a >= 17 && ("Amazon".equals(ai.f3783c) || "Xiaomi".equals(ai.f3783c));
    }

    public int a() {
        return this.f1482e;
    }

    public boolean a(int i) {
        return Arrays.binarySearch(this.f1481d, i) >= 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof e) {
            e eVar = (e) obj;
            return Arrays.equals(this.f1481d, eVar.f1481d) && this.f1482e == eVar.f1482e;
        }
        return false;
    }

    public int hashCode() {
        return this.f1482e + (Arrays.hashCode(this.f1481d) * 31);
    }

    public String toString() {
        return "AudioCapabilities[maxChannelCount=" + this.f1482e + ", supportedEncodings=" + Arrays.toString(this.f1481d) + "]";
    }
}
