package com.applovin.exoplayer2.b;

import com.applovin.exoplayer2.am;
import java.nio.ByteBuffer;
/* loaded from: classes.dex */
public interface h {

    /* loaded from: classes.dex */
    public static final class a extends Exception {

        /* renamed from: a  reason: collision with root package name */
        public final com.applovin.exoplayer2.v f1491a;

        public a(String str, com.applovin.exoplayer2.v vVar) {
            super(str);
            this.f1491a = vVar;
        }

        public a(Throwable th, com.applovin.exoplayer2.v vVar) {
            super(th);
            this.f1491a = vVar;
        }
    }

    /* loaded from: classes.dex */
    public static final class b extends Exception {

        /* renamed from: a  reason: collision with root package name */
        public final int f1492a;

        /* renamed from: b  reason: collision with root package name */
        public final boolean f1493b;

        /* renamed from: c  reason: collision with root package name */
        public final com.applovin.exoplayer2.v f1494c;

        public b(int i, int i2, int i3, int i4, com.applovin.exoplayer2.v vVar, boolean z, Exception exc) {
            super("AudioTrack init failed " + i + " Config(" + i2 + ", " + i3 + ", " + i4 + ")" + (z ? " (recoverable)" : ""), exc);
            this.f1492a = i;
            this.f1493b = z;
            this.f1494c = vVar;
        }
    }

    /* loaded from: classes.dex */
    public interface c {
        void a();

        void a(int i, long j, long j2);

        default void a(long j) {
        }

        default void a(Exception exc) {
        }

        void a(boolean z);

        default void b() {
        }

        default void b(long j) {
        }
    }

    /* loaded from: classes.dex */
    public static final class d extends Exception {

        /* renamed from: a  reason: collision with root package name */
        public final long f1495a;

        /* renamed from: b  reason: collision with root package name */
        public final long f1496b;

        public d(long j, long j2) {
            super("Unexpected audio track timestamp discontinuity: expected " + j2 + ", got " + j);
            this.f1495a = j;
            this.f1496b = j2;
        }
    }

    /* loaded from: classes.dex */
    public static final class e extends Exception {

        /* renamed from: a  reason: collision with root package name */
        public final int f1497a;

        /* renamed from: b  reason: collision with root package name */
        public final boolean f1498b;

        /* renamed from: c  reason: collision with root package name */
        public final com.applovin.exoplayer2.v f1499c;

        public e(int i, com.applovin.exoplayer2.v vVar, boolean z) {
            super("AudioTrack write failed: " + i);
            this.f1498b = z;
            this.f1497a = i;
            this.f1499c = vVar;
        }
    }

    long a(boolean z);

    void a();

    void a(float f2);

    void a(int i);

    void a(am amVar);

    void a(com.applovin.exoplayer2.b.d dVar);

    void a(c cVar);

    void a(k kVar);

    void a(com.applovin.exoplayer2.v vVar, int i, int[] iArr) throws a;

    boolean a(com.applovin.exoplayer2.v vVar);

    boolean a(ByteBuffer byteBuffer, long j, int i) throws b, e;

    int b(com.applovin.exoplayer2.v vVar);

    void b();

    void b(boolean z);

    void c() throws e;

    boolean d();

    boolean e();

    am f();

    void g();

    void h();

    void i();

    void j();

    void k();

    void l();
}
