package com.applovin.impl.sdk.utils;

import android.text.TextUtils;
import android.util.Base64;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.metadata.icy.IcyHeaders;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
/* loaded from: classes.dex */
public class n {
    public static String a(String str, String str2) {
        return a(str, str2, new byte[]{-83, -98, -53, -112, -29, -118, 55, 117, 59, 8, -12, -15, 73, 110, -67, 57, 117, 4, -26, 97, 66, -12, 125, 91, -119, -103, -30, 114, 123, 54, 51, -77});
    }

    public static String a(String str, String str2, long j) {
        return a(str, str2, j, new byte[]{-83, -98, -53, -112, -29, -118, 55, 117, 59, 8, -12, -15, 73, 110, -67, 57, 117, 4, -26, 97, 66, -12, 125, 91, -119, -103, -30, 114, 123, 54, 51, -77});
    }

    private static String a(String str, String str2, long j, byte[] bArr) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        if (str2 != null) {
            if (str2.length() >= 80) {
                if (bArr != null) {
                    char c2 = ' ';
                    if (bArr.length >= 32) {
                        if (str == null || str.isEmpty()) {
                            return str;
                        }
                        try {
                            String substring = str2.substring(32);
                            String substring2 = str2.substring(0, 32);
                            byte[] bytes = str.getBytes(C.UTF8_NAME);
                            byte[] a2 = a(substring2, bArr);
                            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                            byteArrayOutputStream.write(((byte) (j & 255)) ^ a2[0]);
                            char c3 = '\b';
                            byteArrayOutputStream.write(((byte) ((j >> 8) & 255)) ^ a2[1]);
                            byteArrayOutputStream.write(((byte) ((j >> 16) & 255)) ^ a2[2]);
                            byteArrayOutputStream.write(((byte) ((j >> 24) & 255)) ^ a2[3]);
                            byteArrayOutputStream.write(((byte) ((j >> 32) & 255)) ^ a2[4]);
                            byteArrayOutputStream.write(((byte) ((j >> 40) & 255)) ^ a2[5]);
                            byteArrayOutputStream.write(((byte) ((j >> 48) & 255)) ^ a2[6]);
                            byteArrayOutputStream.write(((byte) ((j >> 56) & 255)) ^ a2[7]);
                            int i8 = 0;
                            while (i8 < bytes.length) {
                                long j2 = j + i8;
                                long j3 = (j2 ^ (j2 >> 33)) * (-4417276706812531889L);
                                long j4 = (j3 ^ (j3 >> 29)) * (-8796714831421723037L);
                                long j5 = j4 ^ (j4 >> c2);
                                byteArrayOutputStream.write((byte) (((i8 >= bytes.length ? (byte) 0 : bytes[i8]) ^ a2[i8 % a2.length]) ^ (j5 & 255)));
                                byteArrayOutputStream.write((byte) ((a2[i % a2.length] ^ (i8 + 1 >= bytes.length ? (byte) 0 : bytes[i])) ^ ((j5 >> c3) & 255)));
                                byteArrayOutputStream.write((byte) ((a2[i2 % a2.length] ^ (i8 + 2 >= bytes.length ? (byte) 0 : bytes[i2])) ^ ((j5 >> 16) & 255)));
                                byteArrayOutputStream.write((byte) ((a2[i3 % a2.length] ^ (i8 + 3 >= bytes.length ? (byte) 0 : bytes[i3])) ^ ((j5 >> 24) & 255)));
                                byteArrayOutputStream.write((byte) ((a2[i4 % a2.length] ^ (i8 + 4 >= bytes.length ? (byte) 0 : bytes[i4])) ^ ((j5 >> 32) & 255)));
                                byteArrayOutputStream.write((byte) ((a2[i5 % a2.length] ^ (i8 + 5 >= bytes.length ? (byte) 0 : bytes[i5])) ^ ((j5 >> 40) & 255)));
                                byteArrayOutputStream.write((byte) ((a2[i6 % a2.length] ^ (i8 + 6 >= bytes.length ? (byte) 0 : bytes[i6])) ^ ((j5 >> 48) & 255)));
                                byteArrayOutputStream.write((byte) ((a2[i7 % a2.length] ^ (i8 + 7 >= bytes.length ? (byte) 0 : bytes[i7])) ^ ((j5 >> 56) & 255)));
                                i8 += 8;
                                c2 = ' ';
                                c3 = '\b';
                            }
                            return "1:" + a(bArr) + ":" + substring + ":" + b(byteArrayOutputStream.toByteArray());
                        } catch (IOException unused) {
                            return null;
                        }
                    }
                    throw new IllegalArgumentException("Salt is too short");
                }
                throw new IllegalArgumentException("No salt specified");
            }
            throw new IllegalArgumentException("SDK key is too short");
        }
        throw new IllegalArgumentException("No SDK key specified");
    }

    private static String a(String str, String str2, byte[] bArr) {
        if (str2 != null) {
            if (str2.length() >= 80) {
                if (bArr != null) {
                    char c2 = ' ';
                    if (bArr.length >= 32) {
                        if (TextUtils.isEmpty(str) || str.trim().startsWith("{")) {
                            return str;
                        }
                        String[] split = str.split(":");
                        char c3 = 0;
                        try {
                            if (IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE.equals(split[0]) && split.length == 4) {
                                char c4 = 1;
                                String str3 = split[1];
                                String str4 = split[2];
                                byte[] a2 = a(split[3]);
                                if (str2.endsWith(str4) && a(bArr).equals(str3)) {
                                    byte[] a3 = a(str2.substring(0, 32), bArr);
                                    ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(a2);
                                    char c5 = '\b';
                                    try {
                                        long read = (((byteArrayInputStream.read() ^ a3[5]) & 255) << 40) | ((byteArrayInputStream.read() ^ a3[0]) & 255) | (((byteArrayInputStream.read() ^ a3[1]) & 255) << 8) | (((byteArrayInputStream.read() ^ a3[2]) & 255) << 16) | (((byteArrayInputStream.read() ^ a3[3]) & 255) << 24) | (((byteArrayInputStream.read() ^ a3[4]) & 255) << 32) | (((byteArrayInputStream.read() ^ a3[6]) & 255) << 48) | (((byteArrayInputStream.read() ^ a3[7]) & 255) << 56);
                                        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                                        byte[] bArr2 = new byte[8];
                                        int read2 = byteArrayInputStream.read(bArr2);
                                        int i = 0;
                                        while (read2 >= 0) {
                                            long j = i + read;
                                            long j2 = (j ^ (j >> 33)) * (-4417276706812531889L);
                                            long j3 = (j2 ^ (j2 >> 29)) * (-8796714831421723037L);
                                            long j4 = j3 ^ (j3 >> c2);
                                            byteArrayOutputStream.write((byte) ((bArr2[c3] ^ a3[i % a3.length]) ^ (j4 & 255)));
                                            byteArrayOutputStream.write((byte) ((bArr2[c4] ^ a3[(i + 1) % a3.length]) ^ ((j4 >> c5) & 255)));
                                            byteArrayOutputStream.write((byte) ((a3[(i + 2) % a3.length] ^ bArr2[2]) ^ ((j4 >> 16) & 255)));
                                            byteArrayOutputStream.write((byte) ((a3[(i + 3) % a3.length] ^ bArr2[3]) ^ ((j4 >> 24) & 255)));
                                            byteArrayOutputStream.write((byte) ((a3[(i + 4) % a3.length] ^ bArr2[4]) ^ ((j4 >> c2) & 255)));
                                            byteArrayOutputStream.write((byte) ((bArr2[5] ^ a3[(i + 5) % a3.length]) ^ ((j4 >> 40) & 255)));
                                            byteArrayOutputStream.write((byte) ((a3[(i + 6) % a3.length] ^ bArr2[6]) ^ ((j4 >> 48) & 255)));
                                            byteArrayOutputStream.write((byte) ((a3[(i + 7) % a3.length] ^ bArr2[7]) ^ ((j4 >> 56) & 255)));
                                            read2 = byteArrayInputStream.read(bArr2);
                                            i += 8;
                                            read = read;
                                            c5 = '\b';
                                            c3 = 0;
                                            c2 = ' ';
                                            c4 = 1;
                                        }
                                        return new String(byteArrayOutputStream.toByteArray(), C.UTF8_NAME).trim();
                                    } catch (IOException unused) {
                                        return null;
                                    }
                                }
                                return null;
                            }
                            return null;
                        } catch (IOException unused2) {
                            return null;
                        }
                    }
                    throw new IllegalArgumentException("Salt is too short");
                }
                throw new IllegalArgumentException("No salt specified");
            }
            throw new IllegalArgumentException("SDK key is too short");
        }
        throw new IllegalArgumentException("No SDK key specified");
    }

    private static String a(byte[] bArr) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-1");
            messageDigest.update(bArr);
            return StringUtils.toHexString(messageDigest.digest());
        } catch (NoSuchAlgorithmException e2) {
            throw new RuntimeException("SHA-1 algorithm not found", e2);
        }
    }

    private static byte[] a(String str) {
        return Base64.decode(b(str), 0);
    }

    private static byte[] a(String str, byte[] bArr) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
            messageDigest.update(bArr);
            messageDigest.update(str.getBytes(C.UTF8_NAME));
            return messageDigest.digest();
        } catch (UnsupportedEncodingException e2) {
            throw new RuntimeException("UTF-8 encoding not found", e2);
        } catch (NoSuchAlgorithmException e3) {
            throw new RuntimeException("SHA-1 algorithm not found", e3);
        }
    }

    private static String b(String str) {
        return str.replace('-', '+').replace('_', '/').replace('*', '=');
    }

    private static String b(byte[] bArr) throws UnsupportedEncodingException {
        return c(Base64.encode(bArr, 2));
    }

    private static String c(byte[] bArr) throws UnsupportedEncodingException {
        return new String(bArr, C.UTF8_NAME).replace('+', '-').replace('/', '_').replace('=', '*');
    }
}
