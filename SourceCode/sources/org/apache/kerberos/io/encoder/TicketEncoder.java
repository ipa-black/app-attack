package org.apache.kerberos.io.encoder;

import org.apache.asn1.der.DERApplicationSpecific;
import org.apache.asn1.der.DERGeneralString;
import org.apache.asn1.der.DERInteger;
import org.apache.asn1.der.DERSequence;
import org.apache.asn1.der.DERTaggedObject;
import org.apache.kerberos.messages.components.Ticket;
/* loaded from: classes5.dex */
public class TicketEncoder {
    /* JADX INFO: Access modifiers changed from: protected */
    public static DERApplicationSpecific encode(Ticket ticket) {
        DERSequence dERSequence = new DERSequence();
        dERSequence.add(new DERTaggedObject(0, DERInteger.valueOf(ticket.getTicketVersionNumber())));
        dERSequence.add(new DERTaggedObject(1, DERGeneralString.valueOf(ticket.getRealm())));
        dERSequence.add(new DERTaggedObject(2, PrincipalNameEncoder.encode(ticket.getServerPrincipal())));
        dERSequence.add(new DERTaggedObject(3, EncryptedDataEncoder.encodeSequence(ticket.getEncPart())));
        try {
            return DERApplicationSpecific.valueOf(1, dERSequence);
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static DERSequence encodeSequence(Ticket[] ticketArr) {
        DERSequence dERSequence = new DERSequence();
        for (Ticket ticket : ticketArr) {
            DERSequence dERSequence2 = new DERSequence();
            dERSequence2.add(encode(ticket));
            dERSequence.add(dERSequence2);
        }
        return dERSequence;
    }
}
