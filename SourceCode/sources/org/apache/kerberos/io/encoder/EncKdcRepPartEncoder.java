package org.apache.kerberos.io.encoder;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import org.apache.asn1.der.ASN1OutputStream;
import org.apache.asn1.der.DERApplicationSpecific;
import org.apache.asn1.der.DERBitString;
import org.apache.asn1.der.DERGeneralString;
import org.apache.asn1.der.DERInteger;
import org.apache.asn1.der.DERSequence;
import org.apache.asn1.der.DERTaggedObject;
import org.apache.kerberos.messages.KdcReply;
/* loaded from: classes5.dex */
public abstract class EncKdcRepPartEncoder {
    private int applicationCode;

    /* JADX INFO: Access modifiers changed from: protected */
    public EncKdcRepPartEncoder(int i) {
        this.applicationCode = i;
    }

    public byte[] encode(KdcReply kdcReply) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        new ASN1OutputStream(byteArrayOutputStream).writeObject(DERApplicationSpecific.valueOf(this.applicationCode, encodeInitialSequence(kdcReply)));
        return byteArrayOutputStream.toByteArray();
    }

    protected DERSequence encodeInitialSequence(KdcReply kdcReply) {
        DERSequence dERSequence = new DERSequence();
        dERSequence.add(new DERTaggedObject(0, EncryptionKeyEncoder.encode(kdcReply.getKey())));
        dERSequence.add(new DERTaggedObject(1, LastRequestEncoder.encode(kdcReply.getLastRequest())));
        dERSequence.add(new DERTaggedObject(2, DERInteger.valueOf(kdcReply.getNonce())));
        if (kdcReply.getKeyExpiration() != null) {
            dERSequence.add(new DERTaggedObject(3, KerberosTimeEncoder.encode(kdcReply.getKeyExpiration())));
        }
        dERSequence.add(new DERTaggedObject(4, new DERBitString(kdcReply.getFlags().getBytes())));
        dERSequence.add(new DERTaggedObject(5, KerberosTimeEncoder.encode(kdcReply.getAuthTime())));
        if (kdcReply.getStartTime() != null) {
            dERSequence.add(new DERTaggedObject(6, KerberosTimeEncoder.encode(kdcReply.getStartTime())));
        }
        dERSequence.add(new DERTaggedObject(7, KerberosTimeEncoder.encode(kdcReply.getEndTime())));
        if (kdcReply.getRenewTill() != null) {
            dERSequence.add(new DERTaggedObject(8, KerberosTimeEncoder.encode(kdcReply.getRenewTill())));
        }
        dERSequence.add(new DERTaggedObject(9, DERGeneralString.valueOf(kdcReply.getServerRealm().toString())));
        dERSequence.add(new DERTaggedObject(10, PrincipalNameEncoder.encode(kdcReply.getServerPrincipal())));
        if (kdcReply.getClientAddresses() != null) {
            dERSequence.add(new DERTaggedObject(11, HostAddressesEncoder.encodeSequence(kdcReply.getClientAddresses())));
        }
        return dERSequence;
    }
}
