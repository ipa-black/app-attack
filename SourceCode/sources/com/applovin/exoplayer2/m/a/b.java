package com.applovin.exoplayer2.m.a;

import com.applovin.exoplayer2.as;
import com.applovin.exoplayer2.l.ai;
import com.applovin.exoplayer2.l.y;
import com.applovin.exoplayer2.p;
import com.applovin.exoplayer2.v;
import com.google.android.exoplayer2.util.MimeTypes;
import java.nio.ByteBuffer;
/* loaded from: classes.dex */
public final class b extends com.applovin.exoplayer2.e {

    /* renamed from: a  reason: collision with root package name */
    private final com.applovin.exoplayer2.c.g f3883a;

    /* renamed from: b  reason: collision with root package name */
    private final y f3884b;

    /* renamed from: c  reason: collision with root package name */
    private long f3885c;

    /* renamed from: d  reason: collision with root package name */
    private a f3886d;

    /* renamed from: e  reason: collision with root package name */
    private long f3887e;

    public b() {
        super(6);
        this.f3883a = new com.applovin.exoplayer2.c.g(1);
        this.f3884b = new y();
    }

    private void B() {
        a aVar = this.f3886d;
        if (aVar != null) {
            aVar.a();
        }
    }

    private float[] a(ByteBuffer byteBuffer) {
        if (byteBuffer.remaining() != 16) {
            return null;
        }
        this.f3884b.a(byteBuffer.array(), byteBuffer.limit());
        this.f3884b.d(byteBuffer.arrayOffset() + 4);
        float[] fArr = new float[3];
        for (int i = 0; i < 3; i++) {
            fArr[i] = Float.intBitsToFloat(this.f3884b.r());
        }
        return fArr;
    }

    @Override // com.applovin.exoplayer2.ar
    public boolean A() {
        return g();
    }

    @Override // com.applovin.exoplayer2.as
    public int a(v vVar) {
        return as.b(MimeTypes.APPLICATION_CAMERA_MOTION.equals(vVar.l) ? 4 : 0);
    }

    @Override // com.applovin.exoplayer2.e, com.applovin.exoplayer2.ao.b
    public void a(int i, Object obj) throws p {
        if (i == 8) {
            this.f3886d = (a) obj;
        } else {
            super.a(i, obj);
        }
    }

    @Override // com.applovin.exoplayer2.ar
    public void a(long j, long j2) {
        while (!g() && this.f3887e < 100000 + j) {
            this.f3883a.a();
            if (a(t(), this.f3883a, 0) != -4 || this.f3883a.c()) {
                return;
            }
            this.f3887e = this.f3883a.f1677d;
            if (this.f3886d != null && !this.f3883a.b()) {
                this.f3883a.h();
                float[] a2 = a((ByteBuffer) ai.a(this.f3883a.f1675b));
                if (a2 != null) {
                    ((a) ai.a(this.f3886d)).a(this.f3887e - this.f3885c, a2);
                }
            }
        }
    }

    @Override // com.applovin.exoplayer2.e
    protected void a(long j, boolean z) {
        this.f3887e = Long.MIN_VALUE;
        B();
    }

    @Override // com.applovin.exoplayer2.e
    protected void a(v[] vVarArr, long j, long j2) {
        this.f3885c = j2;
    }

    @Override // com.applovin.exoplayer2.e
    protected void r() {
        B();
    }

    @Override // com.applovin.exoplayer2.ar, com.applovin.exoplayer2.as
    public String y() {
        return "CameraMotionRenderer";
    }

    @Override // com.applovin.exoplayer2.ar
    public boolean z() {
        return true;
    }
}
