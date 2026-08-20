package com.applovin.exoplayer2.f;

import android.media.MediaCodec;
import android.media.MediaFormat;
import android.os.Bundle;
import android.os.Handler;
import android.view.Surface;
import com.applovin.exoplayer2.f.g;
import com.applovin.exoplayer2.l.ah;
import com.applovin.exoplayer2.l.ai;
import java.io.IOException;
import java.nio.ByteBuffer;
/* loaded from: classes.dex */
public class m implements g {

    /* renamed from: a  reason: collision with root package name */
    private final MediaCodec f2830a;

    /* renamed from: b  reason: collision with root package name */
    private final Surface f2831b;

    /* renamed from: c  reason: collision with root package name */
    private ByteBuffer[] f2832c;

    /* renamed from: d  reason: collision with root package name */
    private ByteBuffer[] f2833d;

    /* loaded from: classes.dex */
    private static final class a {
        public static Surface a(MediaCodec mediaCodec) {
            return mediaCodec.createInputSurface();
        }
    }

    /* loaded from: classes.dex */
    public static class b implements g.b {
        protected MediaCodec a(g.a aVar) throws IOException {
            com.applovin.exoplayer2.l.a.b(aVar.f2790a);
            String str = aVar.f2790a.f2800a;
            ah.a("createCodec:" + str);
            MediaCodec createByCodecName = MediaCodec.createByCodecName(str);
            ah.a();
            return createByCodecName;
        }

        @Override // com.applovin.exoplayer2.f.g.b
        public g b(g.a aVar) throws IOException {
            MediaCodec mediaCodec;
            Surface surface;
            Surface surface2 = null;
            try {
                mediaCodec = a(aVar);
                try {
                    ah.a("configureCodec");
                    mediaCodec.configure(aVar.f2791b, aVar.f2793d, aVar.f2794e, aVar.f2795f);
                    ah.a();
                    if (!aVar.f2796g) {
                        surface = null;
                    } else if (ai.f3781a < 18) {
                        throw new IllegalStateException("Encoding from a surface is only supported on API 18 and up.");
                    } else {
                        surface = a.a(mediaCodec);
                    }
                } catch (IOException e2) {
                    e = e2;
                } catch (RuntimeException e3) {
                    e = e3;
                }
                try {
                    ah.a("startCodec");
                    mediaCodec.start();
                    ah.a();
                    return new m(mediaCodec, surface);
                } catch (IOException | RuntimeException e4) {
                    surface2 = surface;
                    e = e4;
                    if (surface2 != null) {
                        surface2.release();
                    }
                    if (mediaCodec != null) {
                        mediaCodec.release();
                    }
                    throw e;
                }
            } catch (IOException | RuntimeException e5) {
                e = e5;
                mediaCodec = null;
            }
        }
    }

    private m(MediaCodec mediaCodec, Surface surface) {
        this.f2830a = mediaCodec;
        this.f2831b = surface;
        if (ai.f3781a < 21) {
            this.f2832c = mediaCodec.getInputBuffers();
            this.f2833d = mediaCodec.getOutputBuffers();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(g.c cVar, MediaCodec mediaCodec, long j, long j2) {
        cVar.a(this, j, j2);
    }

    @Override // com.applovin.exoplayer2.f.g
    public int a(MediaCodec.BufferInfo bufferInfo) {
        int dequeueOutputBuffer;
        do {
            dequeueOutputBuffer = this.f2830a.dequeueOutputBuffer(bufferInfo, 0L);
            if (dequeueOutputBuffer == -3 && ai.f3781a < 21) {
                this.f2833d = this.f2830a.getOutputBuffers();
                continue;
            }
        } while (dequeueOutputBuffer == -3);
        return dequeueOutputBuffer;
    }

    @Override // com.applovin.exoplayer2.f.g
    public ByteBuffer a(int i) {
        return ai.f3781a >= 21 ? this.f2830a.getInputBuffer(i) : ((ByteBuffer[]) ai.a(this.f2832c))[i];
    }

    @Override // com.applovin.exoplayer2.f.g
    public void a(int i, int i2, int i3, long j, int i4) {
        this.f2830a.queueInputBuffer(i, i2, i3, j, i4);
    }

    @Override // com.applovin.exoplayer2.f.g
    public void a(int i, int i2, com.applovin.exoplayer2.c.c cVar, long j, int i3) {
        this.f2830a.queueSecureInputBuffer(i, i2, cVar.a(), j, i3);
    }

    @Override // com.applovin.exoplayer2.f.g
    public void a(int i, long j) {
        this.f2830a.releaseOutputBuffer(i, j);
    }

    @Override // com.applovin.exoplayer2.f.g
    public void a(int i, boolean z) {
        this.f2830a.releaseOutputBuffer(i, z);
    }

    @Override // com.applovin.exoplayer2.f.g
    public void a(Bundle bundle) {
        this.f2830a.setParameters(bundle);
    }

    @Override // com.applovin.exoplayer2.f.g
    public void a(Surface surface) {
        this.f2830a.setOutputSurface(surface);
    }

    @Override // com.applovin.exoplayer2.f.g
    public void a(final g.c cVar, Handler handler) {
        this.f2830a.setOnFrameRenderedListener(new MediaCodec.OnFrameRenderedListener() { // from class: com.applovin.exoplayer2.f.m$$ExternalSyntheticLambda0
            @Override // android.media.MediaCodec.OnFrameRenderedListener
            public final void onFrameRendered(MediaCodec mediaCodec, long j, long j2) {
                m.this.a(cVar, mediaCodec, j, j2);
            }
        }, handler);
    }

    @Override // com.applovin.exoplayer2.f.g
    public boolean a() {
        return false;
    }

    @Override // com.applovin.exoplayer2.f.g
    public int b() {
        return this.f2830a.dequeueInputBuffer(0L);
    }

    @Override // com.applovin.exoplayer2.f.g
    public ByteBuffer b(int i) {
        return ai.f3781a >= 21 ? this.f2830a.getOutputBuffer(i) : ((ByteBuffer[]) ai.a(this.f2833d))[i];
    }

    @Override // com.applovin.exoplayer2.f.g
    public MediaFormat c() {
        return this.f2830a.getOutputFormat();
    }

    @Override // com.applovin.exoplayer2.f.g
    public void c(int i) {
        this.f2830a.setVideoScalingMode(i);
    }

    @Override // com.applovin.exoplayer2.f.g
    public void d() {
        this.f2830a.flush();
    }

    @Override // com.applovin.exoplayer2.f.g
    public void e() {
        this.f2832c = null;
        this.f2833d = null;
        Surface surface = this.f2831b;
        if (surface != null) {
            surface.release();
        }
        this.f2830a.release();
    }
}
