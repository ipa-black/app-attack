package com.applovin.exoplayer2.b;

import com.applovin.exoplayer2.l.ai;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
/* loaded from: classes.dex */
public interface f {

    /* renamed from: a  reason: collision with root package name */
    public static final ByteBuffer f1483a = ByteBuffer.allocateDirect(0).order(ByteOrder.nativeOrder());

    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public static final a f1484a = new a(-1, -1, -1);

        /* renamed from: b  reason: collision with root package name */
        public final int f1485b;

        /* renamed from: c  reason: collision with root package name */
        public final int f1486c;

        /* renamed from: d  reason: collision with root package name */
        public final int f1487d;

        /* renamed from: e  reason: collision with root package name */
        public final int f1488e;

        public a(int i, int i2, int i3) {
            this.f1485b = i;
            this.f1486c = i2;
            this.f1487d = i3;
            this.f1488e = ai.d(i3) ? ai.c(i3, i2) : -1;
        }

        public String toString() {
            return "AudioFormat[sampleRate=" + this.f1485b + ", channelCount=" + this.f1486c + ", encoding=" + this.f1487d + ']';
        }
    }

    /* loaded from: classes.dex */
    public static final class b extends Exception {
        public b(a aVar) {
            super("Unhandled format: " + aVar);
        }
    }

    a a(a aVar) throws b;

    void a(ByteBuffer byteBuffer);

    boolean a();

    void b();

    ByteBuffer c();

    boolean d();

    void e();

    void f();
}
