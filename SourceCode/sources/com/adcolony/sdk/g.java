package com.adcolony.sdk;

import com.adcolony.adcolonysdk.BuildConfig;
import com.appnext.ads.fullscreen.RewardedVideo;
import java.io.ByteArrayOutputStream;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import java.util.Map;
import java.util.zip.DataFormatException;
import java.util.zip.Deflater;
import java.util.zip.Inflater;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* loaded from: classes.dex */
public final class g {

    /* renamed from: e  reason: collision with root package name */
    public static final a f310e = new a(null);

    /* renamed from: f  reason: collision with root package name */
    private static final Map<String, String> f311f = MapsKt.mutableMapOf(TuplesKt.to(RewardedVideo.VIDEO_MODE_DEFAULT, "truefalse"), TuplesKt.to(BuildConfig.LAUNCH_REQ_DICT_ID, BuildConfig.LAUNCH_REQ_DICT), TuplesKt.to(BuildConfig.LAUNCH_RESP_DICT_ID, BuildConfig.LAUNCH_RESP_DICT));

    /* renamed from: a  reason: collision with root package name */
    private final String f312a;

    /* renamed from: b  reason: collision with root package name */
    private final String f313b;

    /* renamed from: c  reason: collision with root package name */
    private final String f314c;

    /* renamed from: d  reason: collision with root package name */
    private final String f315d;

    /* loaded from: classes.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final Map<String, String> a() {
            return g.f311f;
        }

        @JvmStatic
        public final void a(Map<String, String> map) {
            synchronized (a()) {
                g.f310e.a().putAll(map);
                Unit unit = Unit.INSTANCE;
            }
        }

        @JvmStatic
        public final g a(String str, String str2) {
            g gVar;
            if (str == null || str2 == null) {
                return null;
            }
            synchronized (a()) {
                a aVar = g.f310e;
                if (!aVar.a().containsKey(str)) {
                    str = RewardedVideo.VIDEO_MODE_DEFAULT;
                }
                if (!aVar.a().containsKey(str2)) {
                    str2 = RewardedVideo.VIDEO_MODE_DEFAULT;
                }
                gVar = new g(str, str2, aVar.a().get(str), aVar.a().get(str2));
            }
            return gVar;
        }
    }

    public g(String str, String str2, String str3, String str4) {
        this.f312a = str;
        this.f313b = str2;
        this.f314c = str3;
        this.f315d = str4;
    }

    @JvmStatic
    public static final g a(String str, String str2) {
        return f310e.a(str, str2);
    }

    @JvmStatic
    public static final void a(Map<String, String> map) {
        f310e.a(map);
    }

    public final String b() {
        return this.f312a;
    }

    public final String c() {
        return this.f313b;
    }

    public final byte[] a(String str) throws UnsupportedEncodingException {
        return a(str.getBytes(h.f341a));
    }

    public final String b(byte[] bArr) throws DataFormatException, UnsupportedEncodingException, IllegalArgumentException {
        return b(bArr, this.f315d);
    }

    private final String b(byte[] bArr, String str) throws DataFormatException, UnsupportedEncodingException, IllegalArgumentException {
        Inflater inflater = new Inflater();
        try {
            inflater.setInput(bArr);
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            byte[] bArr2 = new byte[512];
            while (!inflater.finished()) {
                byteArrayOutputStream.write(bArr2, 0, inflater.inflate(bArr2));
                if (inflater.needsDictionary()) {
                    Charset charset = h.f341a;
                    if (str == null) {
                        throw new NullPointerException("null cannot be cast to non-null type java.lang.String");
                    }
                    inflater.setDictionary(str.getBytes(charset));
                }
            }
            String str2 = new String(byteArrayOutputStream.toByteArray(), h.f341a);
            CloseableKt.closeFinally(byteArrayOutputStream, null);
            return str2;
        } finally {
            inflater.end();
        }
    }

    public final byte[] a(byte[] bArr) throws UnsupportedEncodingException {
        return a(bArr, this.f314c);
    }

    private final byte[] a(byte[] bArr, String str) throws UnsupportedEncodingException {
        Deflater deflater = new Deflater();
        try {
            Charset charset = h.f341a;
            if (str != null) {
                deflater.setDictionary(str.getBytes(charset));
                deflater.setInput(bArr);
                deflater.finish();
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                byte[] bArr2 = new byte[512];
                while (!deflater.finished()) {
                    byteArrayOutputStream.write(bArr2, 0, deflater.deflate(bArr2));
                }
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                CloseableKt.closeFinally(byteArrayOutputStream, null);
                return byteArray;
            }
            throw new NullPointerException("null cannot be cast to non-null type java.lang.String");
        } finally {
            deflater.end();
        }
    }
}
