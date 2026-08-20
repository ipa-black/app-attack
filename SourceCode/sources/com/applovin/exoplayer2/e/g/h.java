package com.applovin.exoplayer2.e.g;

import com.applovin.exoplayer2.l.q;
import com.applovin.exoplayer2.l.y;
import com.google.android.exoplayer2.extractor.mp4.Atom;
import java.nio.ByteBuffer;
import java.util.UUID;
/* loaded from: classes.dex */
public final class h {

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private final UUID f2307a;

        /* renamed from: b  reason: collision with root package name */
        private final int f2308b;

        /* renamed from: c  reason: collision with root package name */
        private final byte[] f2309c;

        public a(UUID uuid, int i, byte[] bArr) {
            this.f2307a = uuid;
            this.f2308b = i;
            this.f2309c = bArr;
        }
    }

    public static boolean a(byte[] bArr) {
        return d(bArr) != null;
    }

    public static byte[] a(UUID uuid, byte[] bArr) {
        return a(uuid, null, bArr);
    }

    public static byte[] a(UUID uuid, UUID[] uuidArr, byte[] bArr) {
        int length = (bArr != null ? bArr.length : 0) + 32;
        if (uuidArr != null) {
            length += (uuidArr.length * 16) + 4;
        }
        ByteBuffer allocate = ByteBuffer.allocate(length);
        allocate.putInt(length);
        allocate.putInt(Atom.TYPE_pssh);
        allocate.putInt(uuidArr != null ? 16777216 : 0);
        allocate.putLong(uuid.getMostSignificantBits());
        allocate.putLong(uuid.getLeastSignificantBits());
        if (uuidArr != null) {
            allocate.putInt(uuidArr.length);
            for (UUID uuid2 : uuidArr) {
                allocate.putLong(uuid2.getMostSignificantBits());
                allocate.putLong(uuid2.getLeastSignificantBits());
            }
        }
        if (bArr != null && bArr.length != 0) {
            allocate.putInt(bArr.length);
            allocate.put(bArr);
        }
        return allocate.array();
    }

    public static byte[] a(byte[] bArr, UUID uuid) {
        a d2 = d(bArr);
        if (d2 == null) {
            return null;
        }
        if (uuid.equals(d2.f2307a)) {
            return d2.f2309c;
        }
        q.c("PsshAtomUtil", "UUID mismatch. Expected: " + uuid + ", got: " + d2.f2307a + ".");
        return null;
    }

    public static UUID b(byte[] bArr) {
        a d2 = d(bArr);
        if (d2 == null) {
            return null;
        }
        return d2.f2307a;
    }

    public static int c(byte[] bArr) {
        a d2 = d(bArr);
        if (d2 == null) {
            return -1;
        }
        return d2.f2308b;
    }

    private static a d(byte[] bArr) {
        y yVar = new y(bArr);
        if (yVar.b() < 32) {
            return null;
        }
        yVar.d(0);
        if (yVar.q() == yVar.a() + 4 && yVar.q() == 1886614376) {
            int a2 = com.applovin.exoplayer2.e.g.a.a(yVar.q());
            if (a2 > 1) {
                q.c("PsshAtomUtil", "Unsupported pssh version: " + a2);
                return null;
            }
            UUID uuid = new UUID(yVar.s(), yVar.s());
            if (a2 == 1) {
                yVar.e(yVar.w() * 16);
            }
            int w = yVar.w();
            if (w != yVar.a()) {
                return null;
            }
            byte[] bArr2 = new byte[w];
            yVar.a(bArr2, 0, w);
            return new a(uuid, a2, bArr2);
        }
        return null;
    }
}
