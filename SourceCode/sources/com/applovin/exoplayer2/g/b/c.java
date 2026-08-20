package com.applovin.exoplayer2.g.b;

import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;
/* loaded from: classes.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    private final ByteArrayOutputStream f2845a;

    /* renamed from: b  reason: collision with root package name */
    private final DataOutputStream f2846b;

    public c() {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(512);
        this.f2845a = byteArrayOutputStream;
        this.f2846b = new DataOutputStream(byteArrayOutputStream);
    }

    private static void a(DataOutputStream dataOutputStream, String str) throws IOException {
        dataOutputStream.writeBytes(str);
        dataOutputStream.writeByte(0);
    }

    public byte[] a(a aVar) {
        this.f2845a.reset();
        try {
            a(this.f2846b, aVar.f2839a);
            a(this.f2846b, aVar.f2840b != null ? aVar.f2840b : "");
            this.f2846b.writeLong(aVar.f2841c);
            this.f2846b.writeLong(aVar.f2842d);
            this.f2846b.write(aVar.f2843e);
            this.f2846b.flush();
            return this.f2845a.toByteArray();
        } catch (IOException e2) {
            throw new RuntimeException(e2);
        }
    }
}
