package com.applovin.exoplayer2.f;

import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Bundle;
import android.os.Handler;
import android.view.Surface;
import com.applovin.exoplayer2.f.m;
import com.applovin.exoplayer2.v;
import java.io.IOException;
import java.nio.ByteBuffer;
/* loaded from: classes.dex */
public interface g {

    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final i f2790a;

        /* renamed from: b  reason: collision with root package name */
        public final MediaFormat f2791b;

        /* renamed from: c  reason: collision with root package name */
        public final v f2792c;

        /* renamed from: d  reason: collision with root package name */
        public final Surface f2793d;

        /* renamed from: e  reason: collision with root package name */
        public final MediaCrypto f2794e;

        /* renamed from: f  reason: collision with root package name */
        public final int f2795f;

        /* renamed from: g  reason: collision with root package name */
        public final boolean f2796g;

        private a(i iVar, MediaFormat mediaFormat, v vVar, Surface surface, MediaCrypto mediaCrypto, int i, boolean z) {
            this.f2790a = iVar;
            this.f2791b = mediaFormat;
            this.f2792c = vVar;
            this.f2793d = surface;
            this.f2794e = mediaCrypto;
            this.f2795f = i;
            this.f2796g = z;
        }

        public static a a(i iVar, MediaFormat mediaFormat, v vVar, MediaCrypto mediaCrypto) {
            return new a(iVar, mediaFormat, vVar, null, mediaCrypto, 0, false);
        }

        public static a a(i iVar, MediaFormat mediaFormat, v vVar, Surface surface, MediaCrypto mediaCrypto) {
            return new a(iVar, mediaFormat, vVar, surface, mediaCrypto, 0, false);
        }
    }

    /* loaded from: classes.dex */
    public interface b {

        /* renamed from: a  reason: collision with root package name */
        public static final b f2797a = new m.b();

        g b(a aVar) throws IOException;
    }

    /* loaded from: classes.dex */
    public interface c {
        void a(g gVar, long j, long j2);
    }

    int a(MediaCodec.BufferInfo bufferInfo);

    ByteBuffer a(int i);

    void a(int i, int i2, int i3, long j, int i4);

    void a(int i, int i2, com.applovin.exoplayer2.c.c cVar, long j, int i3);

    void a(int i, long j);

    void a(int i, boolean z);

    void a(Bundle bundle);

    void a(Surface surface);

    void a(c cVar, Handler handler);

    boolean a();

    int b();

    ByteBuffer b(int i);

    MediaFormat c();

    void c(int i);

    void d();

    void e();
}
