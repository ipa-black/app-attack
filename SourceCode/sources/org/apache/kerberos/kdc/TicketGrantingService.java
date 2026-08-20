package org.apache.kerberos.kdc;

import java.io.IOException;
import javax.security.auth.kerberos.KerberosPrincipal;
import org.apache.kerberos.crypto.RandomKey;
import org.apache.kerberos.crypto.checksum.RsaMd5Checksum;
import org.apache.kerberos.crypto.encryption.EncryptionEngineFactory;
import org.apache.kerberos.exceptions.ErrorType;
import org.apache.kerberos.exceptions.KerberosException;
import org.apache.kerberos.io.decoder.ApplicationRequestDecoder;
import org.apache.kerberos.io.decoder.AuthorizationDataDecoder;
import org.apache.kerberos.io.encoder.EncTgsRepPartEncoder;
import org.apache.kerberos.io.encoder.EncTicketPartEncoder;
import org.apache.kerberos.io.encoder.KdcReqBodyEncoder;
import org.apache.kerberos.messages.ApplicationRequest;
import org.apache.kerberos.messages.KdcRequest;
import org.apache.kerberos.messages.TicketGrantReply;
import org.apache.kerberos.messages.components.Authenticator;
import org.apache.kerberos.messages.components.EncTicketPart;
import org.apache.kerberos.messages.components.EncTicketPartModifier;
import org.apache.kerberos.messages.components.Ticket;
import org.apache.kerberos.messages.value.AuthorizationData;
import org.apache.kerberos.messages.value.Checksum;
import org.apache.kerberos.messages.value.EncryptedData;
import org.apache.kerberos.messages.value.EncryptionKey;
import org.apache.kerberos.messages.value.KerberosTime;
import org.apache.kerberos.messages.value.LastRequest;
import org.apache.kerberos.messages.value.PreAuthenticationDataType;
import org.apache.kerberos.store.PrincipalStore;
/* loaded from: classes5.dex */
public class TicketGrantingService extends org.apache.kerberos.service.KerberosService {
    public TicketGrantingService(org.apache.kerberos.service.KdcConfiguration kdcConfiguration, PrincipalStore principalStore) {
        super(kdcConfiguration, principalStore);
    }

    public TicketGrantReply getReplyFor(KdcRequest kdcRequest) throws KerberosException, IOException {
        ApplicationRequest authHeader = getAuthHeader(kdcRequest);
        Ticket ticket = authHeader.getTicket();
        Authenticator verifyAuthHeader = verifyAuthHeader(authHeader, ticket);
        verifyTicket(ticket, kdcRequest.getServerPrincipal());
        EncryptionKey newSessionKey = new RandomKey().getNewSessionKey();
        getBestEncryptionType(kdcRequest.getEType());
        TicketGrantReply reply = getReply(ticket, getNewTicket(kdcRequest, ticket, newSessionKey, verifyAuthHeader), newSessionKey, kdcRequest);
        if (verifyAuthHeader.getSubSessionKey() != null) {
            encryptReplyPart(reply, verifyAuthHeader.getSubSessionKey());
        } else {
            encryptReplyPart(reply, ticket.getSessionKey());
        }
        return reply;
    }

    private ApplicationRequest getAuthHeader(KdcRequest kdcRequest) throws KerberosException, IOException {
        if (kdcRequest.getPreAuthData()[0].getDataType() != PreAuthenticationDataType.PA_TGS_REQ) {
            throw new KerberosException(ErrorType.KDC_ERR_PADATA_TYPE_NOSUPP);
        }
        return new ApplicationRequestDecoder().decode(kdcRequest.getPreAuthData()[0].getDataValue());
    }

    private void verifyBodyChecksum(Checksum checksum, KdcRequest kdcRequest) throws KerberosException {
        byte[] bArr;
        if (checksum == null) {
            throw new KerberosException(ErrorType.KRB_AP_ERR_INAPP_CKSUM);
        }
        try {
            bArr = new KdcReqBodyEncoder().encode(kdcRequest);
        } catch (IOException e2) {
            e2.printStackTrace();
            bArr = null;
        }
        RsaMd5Checksum rsaMd5Checksum = new RsaMd5Checksum();
        if (!new Checksum(rsaMd5Checksum.checksumType(), rsaMd5Checksum.calculateChecksum(bArr)).equals(checksum)) {
            throw new KerberosException(ErrorType.KRB_AP_ERR_MODIFIED);
        }
    }

    private Ticket getNewTicket(KdcRequest kdcRequest, Ticket ticket, EncryptionKey encryptionKey, Authenticator authenticator) throws KerberosException {
        KerberosPrincipal serverPrincipal = kdcRequest.getServerPrincipal();
        EncTicketPartModifier encTicketPartModifier = new EncTicketPartModifier();
        encTicketPartModifier.setClientAddresses(ticket.getClientAddresses());
        processFlags(kdcRequest, ticket, encTicketPartModifier);
        encTicketPartModifier.setSessionKey(encryptionKey);
        encTicketPartModifier.setClientPrincipal(ticket.getClientPrincipal());
        encTicketPartModifier.setAuthorizationData(processAuthorizationData(kdcRequest, authenticator, ticket));
        processTransited(encTicketPartModifier, ticket);
        processTimes(kdcRequest, encTicketPartModifier, ticket);
        EncryptionKey serverKey = getServerKey(kdcRequest.getServerPrincipal());
        EncTicketPart encTicketPart = encTicketPartModifier.getEncTicketPart();
        Ticket ticket2 = new Ticket(serverPrincipal, encryptTicketPart(encTicketPart, serverKey, kdcRequest));
        ticket2.setEncTicketPart(encTicketPart);
        return ticket2;
    }

    private void processFlags(KdcRequest kdcRequest, Ticket ticket, EncTicketPartModifier encTicketPartModifier) throws KerberosException {
        if (kdcRequest.getOption(1)) {
            if (!ticket.getFlag(1)) {
                throw new KerberosException(ErrorType.KDC_ERR_BADOPTION);
            }
            encTicketPartModifier.setFlag(1);
        }
        if (kdcRequest.getOption(2)) {
            if (!ticket.getFlag(1)) {
                throw new KerberosException(ErrorType.KDC_ERR_BADOPTION);
            }
            encTicketPartModifier.setFlag(2);
            encTicketPartModifier.setClientAddresses(kdcRequest.getAddresses());
        }
        if (ticket.getFlag(2)) {
            encTicketPartModifier.setFlag(2);
        }
        if (kdcRequest.getOption(3)) {
            if (!ticket.getFlag(3)) {
                throw new KerberosException(ErrorType.KDC_ERR_BADOPTION);
            }
            encTicketPartModifier.setFlag(3);
        }
        if (kdcRequest.getOption(4)) {
            if (!ticket.getFlag(3)) {
                throw new KerberosException(ErrorType.KDC_ERR_BADOPTION);
            }
            encTicketPartModifier.setFlag(4);
            encTicketPartModifier.setClientAddresses(kdcRequest.getAddresses());
        }
        if (kdcRequest.getOption(5)) {
            if (!ticket.getFlag(5)) {
                throw new KerberosException(ErrorType.KDC_ERR_BADOPTION);
            }
            encTicketPartModifier.setFlag(5);
        }
        if (kdcRequest.getOption(6)) {
            if (!ticket.getFlag(5)) {
                throw new KerberosException(ErrorType.KDC_ERR_BADOPTION);
            }
            encTicketPartModifier.setFlag(6);
            encTicketPartModifier.setFlag(7);
            if (!this.config.isPostdateAllowed()) {
                throw new KerberosException(ErrorType.KDC_ERR_POLICY);
            }
            encTicketPartModifier.setStartTime(kdcRequest.getFrom());
        }
        if (kdcRequest.getOption(31)) {
            if (!ticket.getFlag(7)) {
                throw new KerberosException(ErrorType.KDC_ERR_POLICY);
            }
            if (ticket.getStartTime().greaterThan(new KerberosTime())) {
                throw new KerberosException(ErrorType.KRB_AP_ERR_TKT_NYV);
            }
            echoTicket(encTicketPartModifier, ticket);
            encTicketPartModifier.clearFlag(7);
        }
        if (kdcRequest.getOption(0) || kdcRequest.getOption(27)) {
            throw new KerberosException(ErrorType.KDC_ERR_BADOPTION);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x00df  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void processTimes(org.apache.kerberos.messages.KdcRequest r10, org.apache.kerberos.messages.components.EncTicketPartModifier r11, org.apache.kerberos.messages.components.Ticket r12) throws org.apache.kerberos.exceptions.KerberosException {
        /*
            Method dump skipped, instructions count: 298
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.kerberos.kdc.TicketGrantingService.processTimes(org.apache.kerberos.messages.KdcRequest, org.apache.kerberos.messages.components.EncTicketPartModifier, org.apache.kerberos.messages.components.Ticket):void");
    }

    private AuthorizationData processAuthorizationData(KdcRequest kdcRequest, Authenticator authenticator, Ticket ticket) throws KerberosException {
        if (kdcRequest.getEncAuthorizationData() != null) {
            try {
                AuthorizationData decode = new AuthorizationDataDecoder().decode(EncryptionEngineFactory.getEncryptionEngineFor(authenticator.getSubSessionKey()).getDecryptedData(authenticator.getSubSessionKey(), kdcRequest.getEncAuthorizationData()));
                decode.add(ticket.getAuthorizationData());
                return decode;
            } catch (IOException unused) {
                throw new KerberosException(ErrorType.KRB_AP_ERR_BAD_INTEGRITY);
            } catch (KerberosException unused2) {
                throw new KerberosException(ErrorType.KRB_AP_ERR_BAD_INTEGRITY);
            }
        }
        return null;
    }

    private void processTransited(EncTicketPartModifier encTicketPartModifier, Ticket ticket) {
        encTicketPartModifier.setTransitedEncoding(ticket.getTransitedEncoding());
    }

    private EncryptedData encryptTicketPart(EncTicketPart encTicketPart, EncryptionKey encryptionKey, KdcRequest kdcRequest) throws KerberosException {
        byte[] bArr;
        try {
            bArr = new EncTicketPartEncoder().encode(encTicketPart);
        } catch (IOException e2) {
            e2.printStackTrace();
            bArr = null;
        }
        kdcRequest.getOption(28);
        return EncryptionEngineFactory.getEncryptionEngineFor(encryptionKey).getEncryptedData(encryptionKey, bArr);
    }

    private void encryptReplyPart(TicketGrantReply ticketGrantReply, EncryptionKey encryptionKey) {
        try {
            ticketGrantReply.setEncPart(EncryptionEngineFactory.getEncryptionEngineFor(encryptionKey).getEncryptedData(encryptionKey, new EncTgsRepPartEncoder().encode(ticketGrantReply)));
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private TicketGrantReply getReply(Ticket ticket, Ticket ticket2, EncryptionKey encryptionKey, KdcRequest kdcRequest) {
        TicketGrantReply ticketGrantReply = new TicketGrantReply();
        ticketGrantReply.setClientPrincipal(ticket.getClientPrincipal());
        ticketGrantReply.setTicket(ticket2);
        ticketGrantReply.setKey(encryptionKey);
        ticketGrantReply.setNonce(kdcRequest.getNonce());
        ticketGrantReply.setLastRequest(new LastRequest());
        ticketGrantReply.setFlags(ticket2.getFlags());
        ticketGrantReply.setClientAddresses(ticket2.getClientAddresses());
        ticketGrantReply.setAuthTime(ticket2.getAuthTime());
        ticketGrantReply.setStartTime(ticket2.getStartTime());
        ticketGrantReply.setEndTime(ticket2.getEndTime());
        ticketGrantReply.setServerPrincipal(ticket2.getServerPrincipal());
        if (ticket2.getFlag(8)) {
            ticketGrantReply.setRenewTill(ticket2.getRenewTill());
        }
        return ticketGrantReply;
    }
}
