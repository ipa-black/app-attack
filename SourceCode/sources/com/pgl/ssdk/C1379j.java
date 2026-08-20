package com.pgl.ssdk;

import com.pgl.ssdk.AbstractC1372c;
import com.pgl.ssdk.ces.out.DungeonFlag;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.security.NoSuchAlgorithmException;
import java.security.cert.Certificate;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.List;
/* compiled from: V2VerifierSimple.java */
/* renamed from: com.pgl.ssdk.j  reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public class C1379j {
    @DungeonFlag
    private static C1374e a(ByteBuffer byteBuffer) throws C1370a, NoSuchAlgorithmException, CertificateException {
        ByteBuffer a2 = C1376g.a(byteBuffer);
        a2.get(new byte[a2.remaining()]);
        a2.flip();
        a2.position(0);
        C1376g.a(a2);
        byte[] b2 = C1376g.b(C1376g.a(a2));
        try {
            Certificate generateCertificate = CertificateFactory.getInstance("X.509").generateCertificate(new ByteArrayInputStream(b2));
            if (generateCertificate instanceof X509Certificate) {
                return new C1374e(String.valueOf(((X509Certificate) generateCertificate).getSubjectDN()), b2);
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    public static List<C1374e> a(InterfaceC1383n interfaceC1383n, AbstractC1372c.a aVar) throws IOException, C1375f {
        try {
            try {
                ByteBuffer a2 = C1376g.a(C1376g.a(interfaceC1383n, aVar, 1896449818).f12228a);
                if (a2.hasRemaining()) {
                    ArrayList arrayList = new ArrayList();
                    while (a2.hasRemaining()) {
                        try {
                            arrayList.add(a(C1376g.a(a2)));
                        } catch (NoSuchAlgorithmException | CertificateException unused) {
                        }
                    }
                    return arrayList;
                }
                return null;
            } catch (C1370a | BufferUnderflowException unused2) {
                return null;
            }
        } catch (C1378i e2) {
            throw new C1375f(e2.getMessage());
        }
    }
}
