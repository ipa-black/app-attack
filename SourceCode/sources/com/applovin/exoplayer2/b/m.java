package com.applovin.exoplayer2.b;

import com.applovin.exoplayer2.b.f;
import java.nio.ByteBuffer;
/* loaded from: classes.dex */
final class m extends l {

    /* renamed from: d  reason: collision with root package name */
    private int[] f1528d;

    /* renamed from: e  reason: collision with root package name */
    private int[] f1529e;

    @Override // com.applovin.exoplayer2.b.f
    public void a(ByteBuffer byteBuffer) {
        int[] iArr = (int[]) com.applovin.exoplayer2.l.a.b(this.f1529e);
        int position = byteBuffer.position();
        int limit = byteBuffer.limit();
        ByteBuffer a2 = a(((limit - position) / this.f1521b.f1488e) * this.f1522c.f1488e);
        while (position < limit) {
            for (int i : iArr) {
                a2.putShort(byteBuffer.getShort((i * 2) + position));
            }
            position += this.f1521b.f1488e;
        }
        byteBuffer.position(limit);
        a2.flip();
    }

    public void a(int[] iArr) {
        this.f1528d = iArr;
    }

    @Override // com.applovin.exoplayer2.b.l
    public f.a b(f.a aVar) throws f.b {
        int[] iArr = this.f1528d;
        if (iArr == null) {
            return f.a.f1484a;
        }
        if (aVar.f1487d == 2) {
            boolean z = aVar.f1486c != iArr.length;
            int i = 0;
            while (i < iArr.length) {
                int i2 = iArr[i];
                if (i2 >= aVar.f1486c) {
                    throw new f.b(aVar);
                }
                z |= i2 != i;
                i++;
            }
            return z ? new f.a(aVar.f1485b, iArr.length, 2) : f.a.f1484a;
        }
        throw new f.b(aVar);
    }

    @Override // com.applovin.exoplayer2.b.l
    protected void i() {
        this.f1529e = this.f1528d;
    }

    @Override // com.applovin.exoplayer2.b.l
    protected void j() {
        this.f1529e = null;
        this.f1528d = null;
    }
}
