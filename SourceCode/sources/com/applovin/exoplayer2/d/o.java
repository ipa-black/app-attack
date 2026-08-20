package com.applovin.exoplayer2.d;

import android.media.DeniedByServerException;
import android.media.MediaCrypto;
import android.media.MediaCryptoException;
import android.media.MediaDrm;
import android.media.MediaDrmException;
import android.media.NotProvisionedException;
import android.media.UnsupportedSchemeException;
import android.text.TextUtils;
import com.applovin.exoplayer2.common.base.Charsets;
import com.applovin.exoplayer2.d.e;
import com.applovin.exoplayer2.d.m;
import com.applovin.exoplayer2.l.ai;
import com.applovin.exoplayer2.l.y;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.util.MimeTypes;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
/* loaded from: classes.dex */
public final class o implements m {

    /* renamed from: a  reason: collision with root package name */
    public static final m.c f2038a = new m.c() { // from class: com.applovin.exoplayer2.d.o$$ExternalSyntheticLambda0
        @Override // com.applovin.exoplayer2.d.m.c
        public final m acquireExoMediaDrm(UUID uuid) {
            m c2;
            c2 = o.c(uuid);
            return c2;
        }
    };

    /* renamed from: b  reason: collision with root package name */
    private final UUID f2039b;

    /* renamed from: c  reason: collision with root package name */
    private final MediaDrm f2040c;

    /* renamed from: d  reason: collision with root package name */
    private int f2041d;

    /* loaded from: classes.dex */
    private static class a {
        public static boolean a(MediaDrm mediaDrm, String str) {
            return mediaDrm.requiresSecureDecoder(str);
        }
    }

    private o(UUID uuid) throws UnsupportedSchemeException {
        com.applovin.exoplayer2.l.a.b(uuid);
        com.applovin.exoplayer2.l.a.a(!com.applovin.exoplayer2.h.f2969b.equals(uuid), "Use C.CLEARKEY_UUID instead");
        this.f2039b = uuid;
        MediaDrm mediaDrm = new MediaDrm(b(uuid));
        this.f2040c = mediaDrm;
        this.f2041d = 1;
        if (com.applovin.exoplayer2.h.f2971d.equals(uuid) && e()) {
            a(mediaDrm);
        }
    }

    private static e.a a(UUID uuid, List<e.a> list) {
        if (com.applovin.exoplayer2.h.f2971d.equals(uuid)) {
            if (ai.f3781a >= 28 && list.size() > 1) {
                e.a aVar = list.get(0);
                int i = 0;
                for (int i2 = 0; i2 < list.size(); i2++) {
                    e.a aVar2 = list.get(i2);
                    byte[] bArr = (byte[]) com.applovin.exoplayer2.l.a.b(aVar2.f2017d);
                    if (ai.a((Object) aVar2.f2016c, (Object) aVar.f2016c) && ai.a((Object) aVar2.f2015b, (Object) aVar.f2015b) && com.applovin.exoplayer2.e.g.h.a(bArr)) {
                        i += bArr.length;
                    }
                }
                byte[] bArr2 = new byte[i];
                int i3 = 0;
                for (int i4 = 0; i4 < list.size(); i4++) {
                    byte[] bArr3 = (byte[]) com.applovin.exoplayer2.l.a.b(list.get(i4).f2017d);
                    int length = bArr3.length;
                    System.arraycopy(bArr3, 0, bArr2, i3, length);
                    i3 += length;
                }
                return aVar.a(bArr2);
            }
            for (int i5 = 0; i5 < list.size(); i5++) {
                e.a aVar3 = list.get(i5);
                int c2 = com.applovin.exoplayer2.e.g.h.c((byte[]) com.applovin.exoplayer2.l.a.b(aVar3.f2017d));
                if (ai.f3781a < 23 && c2 == 0) {
                    return aVar3;
                }
                if (ai.f3781a >= 23 && c2 == 1) {
                    return aVar3;
                }
            }
        }
        return list.get(0);
    }

    public static o a(UUID uuid) throws t {
        try {
            return new o(uuid);
        } catch (UnsupportedSchemeException e2) {
            throw new t(1, e2);
        } catch (Exception e3) {
            throw new t(2, e3);
        }
    }

    private static String a(UUID uuid, String str) {
        return (ai.f3781a < 26 && com.applovin.exoplayer2.h.f2970c.equals(uuid) && (MimeTypes.VIDEO_MP4.equals(str) || MimeTypes.AUDIO_MP4.equals(str))) ? C.CENC_TYPE_cenc : str;
    }

    private static void a(MediaDrm mediaDrm) {
        mediaDrm.setPropertyString("securityLevel", "L3");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(m.b bVar, MediaDrm mediaDrm, byte[] bArr, int i, int i2, byte[] bArr2) {
        bVar.a(this, bArr, i, i2, bArr2);
    }

    private static byte[] a(UUID uuid, byte[] bArr) {
        byte[] a2;
        if (com.applovin.exoplayer2.h.f2972e.equals(uuid)) {
            byte[] a3 = com.applovin.exoplayer2.e.g.h.a(bArr, uuid);
            if (a3 != null) {
                bArr = a3;
            }
            bArr = com.applovin.exoplayer2.e.g.h.a(com.applovin.exoplayer2.h.f2972e, f(bArr));
        }
        return (((ai.f3781a >= 23 || !com.applovin.exoplayer2.h.f2971d.equals(uuid)) && !(com.applovin.exoplayer2.h.f2972e.equals(uuid) && "Amazon".equals(ai.f3783c) && ("AFTB".equals(ai.f3784d) || "AFTS".equals(ai.f3784d) || "AFTM".equals(ai.f3784d) || "AFTT".equals(ai.f3784d)))) || (a2 = com.applovin.exoplayer2.e.g.h.a(bArr, uuid)) == null) ? bArr : a2;
    }

    private static UUID b(UUID uuid) {
        return (ai.f3781a >= 27 || !com.applovin.exoplayer2.h.f2970c.equals(uuid)) ? uuid : com.applovin.exoplayer2.h.f2969b;
    }

    private static byte[] b(UUID uuid, byte[] bArr) {
        return com.applovin.exoplayer2.h.f2970c.equals(uuid) ? com.applovin.exoplayer2.d.a.a(bArr) : bArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ m c(UUID uuid) {
        try {
            return a(uuid);
        } catch (t unused) {
            com.applovin.exoplayer2.l.q.d("FrameworkMediaDrm", "Failed to instantiate a FrameworkMediaDrm for uuid: " + uuid + ".");
            return new k();
        }
    }

    private static boolean e() {
        return "ASUS_Z00AD".equals(ai.f3784d);
    }

    private static byte[] f(byte[] bArr) {
        int indexOf;
        y yVar = new y(bArr);
        int r = yVar.r();
        short l = yVar.l();
        short l2 = yVar.l();
        if (l != 1 || l2 != 1) {
            com.applovin.exoplayer2.l.q.b("FrameworkMediaDrm", "Unexpected record count or type. Skipping LA_URL workaround.");
            return bArr;
        }
        String a2 = yVar.a(yVar.l(), Charsets.UTF_16LE);
        if (a2.contains("<LA_URL>")) {
            return bArr;
        }
        if (a2.indexOf("</DATA>") == -1) {
            com.applovin.exoplayer2.l.q.c("FrameworkMediaDrm", "Could not find the </DATA> tag. Skipping LA_URL workaround.");
        }
        String str = a2.substring(0, indexOf) + "<LA_URL>https://x</LA_URL>" + a2.substring(indexOf);
        int i = r + 52;
        ByteBuffer allocate = ByteBuffer.allocate(i);
        allocate.order(ByteOrder.LITTLE_ENDIAN);
        allocate.putInt(i);
        allocate.putShort(l);
        allocate.putShort(l2);
        allocate.putShort((short) (str.length() * 2));
        allocate.put(str.getBytes(Charsets.UTF_16LE));
        return allocate.array();
    }

    @Override // com.applovin.exoplayer2.d.m
    public m.a a(byte[] bArr, List<e.a> list, int i, HashMap<String, String> hashMap) throws NotProvisionedException {
        e.a aVar;
        byte[] bArr2;
        String str;
        if (list != null) {
            aVar = a(this.f2039b, list);
            bArr2 = a(this.f2039b, (byte[]) com.applovin.exoplayer2.l.a.b(aVar.f2017d));
            str = a(this.f2039b, aVar.f2016c);
        } else {
            aVar = null;
            bArr2 = null;
            str = null;
        }
        MediaDrm.KeyRequest keyRequest = this.f2040c.getKeyRequest(bArr, bArr2, str, i, hashMap);
        byte[] b2 = b(this.f2039b, keyRequest.getData());
        String defaultUrl = keyRequest.getDefaultUrl();
        if ("https://x".equals(defaultUrl)) {
            defaultUrl = "";
        }
        if (TextUtils.isEmpty(defaultUrl) && aVar != null && !TextUtils.isEmpty(aVar.f2015b)) {
            defaultUrl = aVar.f2015b;
        }
        return new m.a(b2, defaultUrl, ai.f3781a >= 23 ? keyRequest.getRequestType() : Integer.MIN_VALUE);
    }

    public String a(String str) {
        return this.f2040c.getPropertyString(str);
    }

    @Override // com.applovin.exoplayer2.d.m
    public void a(final m.b bVar) {
        this.f2040c.setOnEventListener(bVar == null ? null : new MediaDrm.OnEventListener() { // from class: com.applovin.exoplayer2.d.o$$ExternalSyntheticLambda1
            @Override // android.media.MediaDrm.OnEventListener
            public final void onEvent(MediaDrm mediaDrm, byte[] bArr, int i, int i2, byte[] bArr2) {
                o.this.a(bVar, mediaDrm, bArr, i, i2, bArr2);
            }
        });
    }

    @Override // com.applovin.exoplayer2.d.m
    public void a(byte[] bArr) {
        this.f2040c.closeSession(bArr);
    }

    @Override // com.applovin.exoplayer2.d.m
    public boolean a(byte[] bArr, String str) {
        if (ai.f3781a >= 31) {
            return a.a(this.f2040c, str);
        }
        try {
            MediaCrypto mediaCrypto = new MediaCrypto(this.f2039b, bArr);
            try {
                return mediaCrypto.requiresSecureDecoderComponent(str);
            } finally {
                mediaCrypto.release();
            }
        } catch (MediaCryptoException unused) {
            return true;
        }
    }

    @Override // com.applovin.exoplayer2.d.m
    public byte[] a() throws MediaDrmException {
        return this.f2040c.openSession();
    }

    @Override // com.applovin.exoplayer2.d.m
    public byte[] a(byte[] bArr, byte[] bArr2) throws NotProvisionedException, DeniedByServerException {
        if (com.applovin.exoplayer2.h.f2970c.equals(this.f2039b)) {
            bArr2 = com.applovin.exoplayer2.d.a.b(bArr2);
        }
        return this.f2040c.provideKeyResponse(bArr, bArr2);
    }

    @Override // com.applovin.exoplayer2.d.m
    public m.d b() {
        MediaDrm.ProvisionRequest provisionRequest = this.f2040c.getProvisionRequest();
        return new m.d(provisionRequest.getData(), provisionRequest.getDefaultUrl());
    }

    @Override // com.applovin.exoplayer2.d.m
    public void b(byte[] bArr) throws DeniedByServerException {
        this.f2040c.provideProvisionResponse(bArr);
    }

    @Override // com.applovin.exoplayer2.d.m
    public void b(byte[] bArr, byte[] bArr2) {
        this.f2040c.restoreKeys(bArr, bArr2);
    }

    @Override // com.applovin.exoplayer2.d.m
    public Map<String, String> c(byte[] bArr) {
        return this.f2040c.queryKeyStatus(bArr);
    }

    @Override // com.applovin.exoplayer2.d.m
    public synchronized void c() {
        int i = this.f2041d - 1;
        this.f2041d = i;
        if (i == 0) {
            this.f2040c.release();
        }
    }

    @Override // com.applovin.exoplayer2.d.m
    public int d() {
        return 2;
    }

    @Override // com.applovin.exoplayer2.d.m
    /* renamed from: e */
    public n d(byte[] bArr) throws MediaCryptoException {
        return new n(b(this.f2039b), bArr, ai.f3781a < 21 && com.applovin.exoplayer2.h.f2971d.equals(this.f2039b) && "L3".equals(a("securityLevel")));
    }
}
