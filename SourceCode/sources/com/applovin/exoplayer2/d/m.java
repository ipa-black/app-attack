package com.applovin.exoplayer2.d;

import android.media.DeniedByServerException;
import android.media.MediaCryptoException;
import android.media.MediaDrmException;
import android.media.NotProvisionedException;
import com.applovin.exoplayer2.d.e;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
/* loaded from: classes.dex */
public interface m {

    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final byte[] f2029a;

        /* renamed from: b  reason: collision with root package name */
        private final String f2030b;

        /* renamed from: c  reason: collision with root package name */
        private final int f2031c;

        public a(byte[] bArr, String str, int i) {
            this.f2029a = bArr;
            this.f2030b = str;
            this.f2031c = i;
        }

        public byte[] a() {
            return this.f2029a;
        }

        public String b() {
            return this.f2030b;
        }
    }

    /* loaded from: classes.dex */
    public interface b {
        void a(m mVar, byte[] bArr, int i, int i2, byte[] bArr2);
    }

    /* loaded from: classes.dex */
    public interface c {
        m acquireExoMediaDrm(UUID uuid);
    }

    /* loaded from: classes.dex */
    public static final class d {

        /* renamed from: a  reason: collision with root package name */
        private final byte[] f2032a;

        /* renamed from: b  reason: collision with root package name */
        private final String f2033b;

        public d(byte[] bArr, String str) {
            this.f2032a = bArr;
            this.f2033b = str;
        }

        public byte[] a() {
            return this.f2032a;
        }

        public String b() {
            return this.f2033b;
        }
    }

    a a(byte[] bArr, List<e.a> list, int i, HashMap<String, String> hashMap) throws NotProvisionedException;

    void a(b bVar);

    void a(byte[] bArr);

    boolean a(byte[] bArr, String str);

    byte[] a() throws MediaDrmException;

    byte[] a(byte[] bArr, byte[] bArr2) throws NotProvisionedException, DeniedByServerException;

    d b();

    void b(byte[] bArr) throws DeniedByServerException;

    void b(byte[] bArr, byte[] bArr2);

    Map<String, String> c(byte[] bArr);

    void c();

    int d();

    com.applovin.exoplayer2.c.b d(byte[] bArr) throws MediaCryptoException;
}
