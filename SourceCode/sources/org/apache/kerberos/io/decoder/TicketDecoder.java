package org.apache.kerberos.io.decoder;

import java.io.IOException;
import java.util.Enumeration;
import org.apache.asn1.der.DERApplicationSpecific;
import org.apache.asn1.der.DERGeneralString;
import org.apache.asn1.der.DERInteger;
import org.apache.asn1.der.DERSequence;
import org.apache.asn1.der.DERTaggedObject;
import org.apache.kerberos.messages.components.Ticket;
import org.apache.kerberos.messages.components.TicketModifier;
/* loaded from: classes5.dex */
public class TicketDecoder {
    public static Ticket[] decodeSequence(DERSequence dERSequence) throws IOException {
        Ticket[] ticketArr = new Ticket[dERSequence.size()];
        Enumeration objects = dERSequence.getObjects();
        while (objects.hasMoreElements()) {
            ticketArr[0] = decode((DERApplicationSpecific) objects.nextElement());
        }
        return ticketArr;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static Ticket decode(DERApplicationSpecific dERApplicationSpecific) throws IOException {
        TicketModifier ticketModifier = new TicketModifier();
        Enumeration objects = dERApplicationSpecific.getObject().getObjects();
        while (objects.hasMoreElements()) {
            DERTaggedObject dERTaggedObject = (DERTaggedObject) objects.nextElement();
            int tagNo = dERTaggedObject.getTagNo();
            DERInteger object = dERTaggedObject.getObject();
            if (tagNo == 0) {
                ticketModifier.setTicketVersionNumber(object.intValue());
            } else if (tagNo == 1) {
                ticketModifier.setServerRealm(((DERGeneralString) object).getString());
            } else if (tagNo == 2) {
                ticketModifier.setServerName(PrincipalNameDecoder.decode((DERSequence) object));
            } else if (tagNo == 3) {
                ticketModifier.setEncPart(EncryptedDataDecoder.decode((DERSequence) object));
            }
        }
        return ticketModifier.getTicket();
    }
}
