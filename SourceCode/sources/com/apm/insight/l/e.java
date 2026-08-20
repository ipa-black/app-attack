package com.apm.insight.l;

import java.io.OutputStream;
import java.io.PrintWriter;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.security.MessageDigest;
/* loaded from: classes.dex */
public class e extends PrintWriter {

    /* renamed from: a  reason: collision with root package name */
    private MessageDigest f999a;

    /* renamed from: b  reason: collision with root package name */
    private Charset f1000b;

    /* renamed from: c  reason: collision with root package name */
    private a f1001c;

    /* loaded from: classes.dex */
    public static class a {
        public boolean a(String str) {
            return true;
        }
    }

    public e(OutputStream outputStream, MessageDigest messageDigest, a aVar) {
        super(outputStream);
        this.f1000b = null;
        this.f999a = messageDigest;
        this.f1001c = aVar;
        if (messageDigest != null) {
            this.f1000b = Charset.defaultCharset();
        }
    }

    @Override // java.io.PrintWriter, java.io.Writer
    public void write(int i) {
        super.write(i);
        MessageDigest messageDigest = this.f999a;
        if (messageDigest != null) {
            messageDigest.update((byte) i);
        }
    }

    @Override // java.io.PrintWriter, java.io.Writer
    public void write(String str, int i, int i2) {
        super.write(str, i, i2);
        if (this.f999a != null) {
            a aVar = this.f1001c;
            if (aVar == null || aVar.a(str)) {
                this.f999a.update(this.f1000b.encode(CharBuffer.wrap(str, i, i2 + i)).array());
            }
        }
    }

    @Override // java.io.PrintWriter, java.io.Writer
    public void write(char[] cArr, int i, int i2) {
        super.write(cArr, i, i2);
        MessageDigest messageDigest = this.f999a;
        if (messageDigest != null) {
            messageDigest.update(this.f1000b.encode(CharBuffer.wrap(cArr)).array());
        }
    }
}
