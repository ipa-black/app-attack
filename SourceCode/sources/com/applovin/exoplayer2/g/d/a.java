package com.applovin.exoplayer2.g.d;

import com.applovin.exoplayer2.common.base.Ascii;
import com.applovin.exoplayer2.common.base.Charsets;
import com.applovin.exoplayer2.g.d;
import com.applovin.exoplayer2.g.g;
import java.nio.ByteBuffer;
import java.nio.charset.CharacterCodingException;
import java.nio.charset.CharsetDecoder;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes.dex */
public final class a extends g {

    /* renamed from: a  reason: collision with root package name */
    private static final Pattern f2859a = Pattern.compile("(.+?)='(.*?)';", 32);

    /* renamed from: b  reason: collision with root package name */
    private final CharsetDecoder f2860b = Charsets.UTF_8.newDecoder();

    /* renamed from: c  reason: collision with root package name */
    private final CharsetDecoder f2861c = Charsets.ISO_8859_1.newDecoder();

    private String a(ByteBuffer byteBuffer) {
        String charBuffer;
        CharsetDecoder charsetDecoder;
        try {
            charBuffer = this.f2860b.decode(byteBuffer).toString();
            charsetDecoder = this.f2860b;
        } catch (CharacterCodingException unused) {
            this.f2860b.reset();
            byteBuffer.rewind();
            try {
                charBuffer = this.f2861c.decode(byteBuffer).toString();
                charsetDecoder = this.f2861c;
            } catch (CharacterCodingException unused2) {
                this.f2861c.reset();
                byteBuffer.rewind();
                return null;
            } catch (Throwable th) {
                this.f2861c.reset();
                byteBuffer.rewind();
                throw th;
            }
        } catch (Throwable th2) {
            this.f2860b.reset();
            byteBuffer.rewind();
            throw th2;
        }
        charsetDecoder.reset();
        byteBuffer.rewind();
        return charBuffer;
    }

    @Override // com.applovin.exoplayer2.g.g
    protected com.applovin.exoplayer2.g.a a(d dVar, ByteBuffer byteBuffer) {
        String a2 = a(byteBuffer);
        byte[] bArr = new byte[byteBuffer.limit()];
        byteBuffer.get(bArr);
        String str = null;
        if (a2 == null) {
            return new com.applovin.exoplayer2.g.a(new c(bArr, null, null));
        }
        Matcher matcher = f2859a.matcher(a2);
        String str2 = null;
        for (int i = 0; matcher.find(i); i = matcher.end()) {
            String group = matcher.group(1);
            String group2 = matcher.group(2);
            if (group != null) {
                String lowerCase = Ascii.toLowerCase(group);
                lowerCase.hashCode();
                if (lowerCase.equals("streamurl")) {
                    str2 = group2;
                } else if (lowerCase.equals("streamtitle")) {
                    str = group2;
                }
            }
        }
        return new com.applovin.exoplayer2.g.a(new c(bArr, str, str2));
    }
}
