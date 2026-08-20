package com.appsgeyser.multiTabApp.utils;

import android.util.Base64;
import com.google.android.exoplayer2.C;
import java.security.MessageDigest;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
/* loaded from: classes2.dex */
public class AESCrypt {
    public static final String SEED_16_CHARACTER = "hhyGEUIaySvDEPRd";
    private final Cipher cipher;
    private final SecretKeySpec key;
    private AlgorithmParameterSpec spec;

    public AESCrypt() throws Exception {
        MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
        messageDigest.update(SEED_16_CHARACTER.getBytes(C.UTF8_NAME));
        byte[] bArr = new byte[32];
        System.arraycopy(messageDigest.digest(), 0, bArr, 0, 32);
        this.cipher = Cipher.getInstance("AES/CBC/PKCS7Padding");
        this.key = new SecretKeySpec(bArr, "AES");
        this.spec = getIV();
    }

    public AlgorithmParameterSpec getIV() {
        return new IvParameterSpec(new byte[]{4, 1, 4, 4, 7, 9, 8, 1, 3, 2, 2, 3, 0, 0, 4, 3});
    }

    public String encrypt(String str) throws Exception {
        this.cipher.init(1, this.key, this.spec);
        return new String(Base64.encode(this.cipher.doFinal(str.getBytes(C.UTF8_NAME)), 0), C.UTF8_NAME);
    }

    public String decrypt(String str) throws Exception {
        this.cipher.init(2, this.key, this.spec);
        return new String(this.cipher.doFinal(Base64.decode(str, 0)), C.UTF8_NAME);
    }
}
