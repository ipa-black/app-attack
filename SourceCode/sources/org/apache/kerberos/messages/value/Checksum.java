package org.apache.kerberos.messages.value;

import java.util.Arrays;
import org.apache.kerberos.crypto.checksum.ChecksumType;
/* loaded from: classes5.dex */
public class Checksum {
    private byte[] checksum;
    private ChecksumType checksumType;

    public Checksum(ChecksumType checksumType, byte[] bArr) {
        this.checksumType = checksumType;
        this.checksum = bArr;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Checksum) {
            Checksum checksum = (Checksum) obj;
            return this.checksumType == checksum.checksumType && Arrays.equals(this.checksum, checksum.checksum);
        }
        return false;
    }

    public byte[] getChecksumValue() {
        return this.checksum;
    }

    public ChecksumType getChecksumType() {
        return this.checksumType;
    }
}
