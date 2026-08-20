package com.applovin.exoplayer2.i;

import com.applovin.exoplayer2.c.i;
import java.nio.ByteBuffer;
/* loaded from: classes.dex */
public abstract class d extends com.applovin.exoplayer2.c.j<j, k, h> implements g {

    /* renamed from: a  reason: collision with root package name */
    private final String f3302a;

    /* JADX INFO: Access modifiers changed from: protected */
    public d(String str) {
        super(new j[2], new k[2]);
        this.f3302a = str;
        a(1024);
    }

    protected abstract f a(byte[] bArr, int i, boolean z) throws h;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.applovin.exoplayer2.c.j
    public final h a(j jVar, k kVar, boolean z) {
        try {
            ByteBuffer byteBuffer = (ByteBuffer) com.applovin.exoplayer2.l.a.b(jVar.f1675b);
            kVar.a(jVar.f1677d, a(byteBuffer.array(), byteBuffer.limit(), z), jVar.f3456f);
            kVar.c(Integer.MIN_VALUE);
            return null;
        } catch (h e2) {
            return e2;
        }
    }

    @Override // com.applovin.exoplayer2.i.g
    public void a(long j) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.applovin.exoplayer2.c.j
    /* renamed from: b */
    public final h a(Throwable th) {
        return new h("Unexpected decode error", th);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.applovin.exoplayer2.c.j
    /* renamed from: i */
    public final j g() {
        return new j();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.applovin.exoplayer2.c.j
    /* renamed from: j */
    public final k h() {
        return new e(new i.a() { // from class: com.applovin.exoplayer2.i.d$$ExternalSyntheticLambda0
            @Override // com.applovin.exoplayer2.c.i.a
            public final void releaseOutputBuffer(com.applovin.exoplayer2.c.i iVar) {
                d.this.a((d) ((k) iVar));
            }
        });
    }
}
