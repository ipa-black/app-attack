package org.apache.kerberos.kdc;

import java.io.IOException;
import javax.security.auth.kerberos.KerberosKey;
import javax.security.auth.kerberos.KerberosPrincipal;
import org.apache.kerberos.crypto.RandomKey;
import org.apache.kerberos.crypto.encryption.EncryptionEngineFactory;
import org.apache.kerberos.crypto.encryption.EncryptionType;
import org.apache.kerberos.exceptions.ErrorType;
import org.apache.kerberos.exceptions.KerberosException;
import org.apache.kerberos.io.decoder.EncryptedDataDecoder;
import org.apache.kerberos.io.decoder.EncryptedTimestampDecoder;
import org.apache.kerberos.io.encoder.EncAsRepPartEncoder;
import org.apache.kerberos.io.encoder.EncTicketPartEncoder;
import org.apache.kerberos.io.encoder.EncryptionTypeInfoEncoder;
import org.apache.kerberos.io.encoder.PreAuthenticationDataEncoder;
import org.apache.kerberos.messages.AuthenticationReply;
import org.apache.kerberos.messages.KdcRequest;
import org.apache.kerberos.messages.components.EncTicketPart;
import org.apache.kerberos.messages.components.EncTicketPartModifier;
import org.apache.kerberos.messages.components.Ticket;
import org.apache.kerberos.messages.value.EncryptedData;
import org.apache.kerberos.messages.value.EncryptedTimeStamp;
import org.apache.kerberos.messages.value.EncryptionKey;
import org.apache.kerberos.messages.value.EncryptionTypeInfoEntry;
import org.apache.kerberos.messages.value.KerberosTime;
import org.apache.kerberos.messages.value.LastRequest;
import org.apache.kerberos.messages.value.PreAuthenticationData;
import org.apache.kerberos.messages.value.PreAuthenticationDataModifier;
import org.apache.kerberos.messages.value.PreAuthenticationDataType;
import org.apache.kerberos.messages.value.TransitedEncoding;
import org.apache.kerberos.sam.SamException;
import org.apache.kerberos.sam.SamSubsystem;
import org.apache.kerberos.sam.TimestampChecker;
import org.apache.kerberos.store.PrincipalStore;
import org.apache.kerberos.store.PrincipalStoreEntry;
/* loaded from: classes5.dex */
public class AuthenticationService extends org.apache.kerberos.service.KerberosService {
    static {
        SamSubsystem.setIntegrityChecker(new TimestampChecker());
    }

    public AuthenticationService(org.apache.kerberos.service.KdcConfiguration kdcConfiguration, PrincipalStore principalStore) {
        super(kdcConfiguration, principalStore);
        SamSubsystem.setEnvironment(kdcConfiguration.getProperties());
    }

    public AuthenticationReply getReplyFor(KdcRequest kdcRequest) throws KerberosException {
        EncryptionKey verifyPreAuthentication = verifyPreAuthentication(kdcRequest);
        AuthenticationReply authenticationReply = getAuthenticationReply(kdcRequest, generateNewTicket(kdcRequest));
        encryptReplyPart(authenticationReply, verifyPreAuthentication);
        return authenticationReply;
    }

    private EncryptionKey verifyPreAuthentication(KdcRequest kdcRequest) throws KerberosException {
        EncryptionKey encryptionKey;
        KerberosPrincipal clientPrincipal = kdcRequest.getClientPrincipal();
        PrincipalStoreEntry entryForClient = getEntryForClient(clientPrincipal);
        int i = 0;
        EncryptionKey encryptionKey2 = null;
        EncryptedTimeStamp encryptedTimeStamp = null;
        if (entryForClient.getSamType() == null) {
            encryptionKey = entryForClient.getEncryptionKey();
            if (encryptionKey == null) {
                throw new KerberosException(ErrorType.KDC_ERR_NULL_KEY);
            }
            if (this.config.isPaEncTimestampRequired()) {
                PreAuthenticationData[] preAuthData = kdcRequest.getPreAuthData();
                if (preAuthData == null) {
                    throw new KerberosException(ErrorType.KDC_ERR_PREAUTH_REQUIRED, preparePreAuthenticationError());
                }
                while (i < preAuthData.length) {
                    if (preAuthData[i].getDataType().equals(PreAuthenticationDataType.PA_ENC_TIMESTAMP)) {
                        try {
                            encryptedTimeStamp = new EncryptedTimestampDecoder().decode(EncryptionEngineFactory.getEncryptionEngineFor(encryptionKey).getDecryptedData(encryptionKey, EncryptedDataDecoder.decode(preAuthData[i].getDataValue())));
                        } catch (IOException unused) {
                            throw new KerberosException(ErrorType.KRB_AP_ERR_BAD_INTEGRITY);
                        } catch (ClassCastException unused2) {
                            throw new KerberosException(ErrorType.KRB_AP_ERR_BAD_INTEGRITY);
                        } catch (KerberosException unused3) {
                            throw new KerberosException(ErrorType.KRB_AP_ERR_BAD_INTEGRITY);
                        }
                    }
                    i++;
                }
                if (encryptedTimeStamp == null) {
                    throw new KerberosException(ErrorType.KDC_ERR_PREAUTH_REQUIRED, preparePreAuthenticationError());
                }
                if (!encryptedTimeStamp.getTimeStamp().isInClockSkew(this.config.getClockSkew())) {
                    throw new KerberosException(ErrorType.KDC_ERR_PREAUTH_FAILED);
                }
            }
        } else {
            PreAuthenticationData[] preAuthData2 = kdcRequest.getPreAuthData();
            if (preAuthData2 == null || preAuthData2.length == 0) {
                throw new KerberosException(ErrorType.KDC_ERR_PREAUTH_REQUIRED, preparePreAuthenticationError());
            }
            while (i < preAuthData2.length) {
                try {
                    if (preAuthData2[i].getDataType().equals(PreAuthenticationDataType.PA_ENC_TIMESTAMP)) {
                        KerberosKey verify = SamSubsystem.verify(entryForClient, preAuthData2[i].getDataValue());
                        encryptionKey2 = new EncryptionKey(EncryptionType.getTypeByOrdinal(verify.getKeyType()), verify.getEncoded());
                    }
                    i++;
                } catch (SamException e2) {
                    throw new KerberosException(60, e2.getMessage());
                }
            }
            encryptionKey = encryptionKey2;
        }
        System.out.println(new StringBuffer("Ticket will be issued to client ").append(clientPrincipal.toString()).append(".").toString());
        return encryptionKey;
    }

    private byte[] preparePreAuthenticationError() {
        PreAuthenticationData[] preAuthenticationDataArr = new PreAuthenticationData[2];
        PreAuthenticationDataModifier preAuthenticationDataModifier = new PreAuthenticationDataModifier();
        preAuthenticationDataModifier.setDataType(PreAuthenticationDataType.PA_ENC_TIMESTAMP);
        preAuthenticationDataModifier.setDataValue(new byte[0]);
        preAuthenticationDataArr[0] = preAuthenticationDataModifier.getPreAuthenticationData();
        try {
            byte[] encode = EncryptionTypeInfoEncoder.encode(new EncryptionTypeInfoEntry[]{new EncryptionTypeInfoEntry(EncryptionType.DES_CBC_MD5, null)});
            PreAuthenticationDataModifier preAuthenticationDataModifier2 = new PreAuthenticationDataModifier();
            preAuthenticationDataModifier2.setDataType(PreAuthenticationDataType.PA_ENCTYPE_INFO);
            preAuthenticationDataModifier2.setDataValue(encode);
            preAuthenticationDataArr[1] = preAuthenticationDataModifier2.getPreAuthenticationData();
            try {
                return PreAuthenticationDataEncoder.encode(preAuthenticationDataArr);
            } catch (IOException e2) {
                e2.printStackTrace();
                return null;
            }
        } catch (IOException e3) {
            e3.printStackTrace();
            return null;
        }
    }

    private Ticket generateNewTicket(KdcRequest kdcRequest) throws KerberosException {
        long j;
        KerberosPrincipal serverPrincipal = kdcRequest.getServerPrincipal();
        EncryptionKey serverKey = getServerKey(serverPrincipal);
        KerberosPrincipal serverPrincipal2 = kdcRequest.getServerPrincipal();
        EncTicketPartModifier encTicketPartModifier = new EncTicketPartModifier();
        if (kdcRequest.getKdcOptions().get(1)) {
            encTicketPartModifier.setFlag(1);
        }
        if (kdcRequest.getKdcOptions().get(3)) {
            encTicketPartModifier.setFlag(3);
        }
        if (kdcRequest.getKdcOptions().get(5)) {
            encTicketPartModifier.setFlag(5);
        }
        if (kdcRequest.getKdcOptions().get(30) || kdcRequest.getKdcOptions().get(31) || kdcRequest.getKdcOptions().get(4) || kdcRequest.getKdcOptions().get(2) || kdcRequest.getKdcOptions().get(28)) {
            throw new KerberosException(ErrorType.KDC_ERR_BADOPTION);
        }
        encTicketPartModifier.setSessionKey(new RandomKey().getNewSessionKey());
        encTicketPartModifier.setClientPrincipal(kdcRequest.getClientPrincipal());
        encTicketPartModifier.setTransitedEncoding(new TransitedEncoding());
        KerberosTime kerberosTime = new KerberosTime();
        encTicketPartModifier.setAuthTime(kerberosTime);
        if (kdcRequest.getKdcOptions().get(6)) {
            if (!this.config.isPostdateAllowed()) {
                throw new KerberosException(ErrorType.KDC_ERR_POLICY);
            }
            encTicketPartModifier.setFlag(7);
            encTicketPartModifier.setStartTime(kdcRequest.getFrom());
        }
        KerberosTime kerberosTime2 = new KerberosTime(Math.min(kerberosTime.getTime() + this.config.getMaximumTicketLifetime(), kdcRequest.getTill().getTime() == 0 ? Long.MAX_VALUE : kdcRequest.getTill().getTime()));
        encTicketPartModifier.setEndTime(kerberosTime2);
        if (kdcRequest.getKdcOptions().get(27) && kdcRequest.getTill().greaterThan(kerberosTime2)) {
            kdcRequest.getKdcOptions().set(8);
            j = kdcRequest.getTill().getTime();
        } else {
            j = 0;
        }
        long time = j != 0 ? kdcRequest.getRtime().getTime() : Long.MAX_VALUE;
        if (kdcRequest.getKdcOptions().get(8)) {
            encTicketPartModifier.setFlag(8);
            KerberosTime from = kdcRequest.getFrom();
            if (from == null) {
                from = new KerberosTime();
            }
            encTicketPartModifier.setRenewTill(new KerberosTime(Math.min(from.getTime() + this.config.getMaximumRenewableLifetime(), time)));
        }
        if (kdcRequest.getAddresses() != null) {
            encTicketPartModifier.setClientAddresses(kdcRequest.getAddresses());
        }
        EncTicketPart encTicketPart = encTicketPartModifier.getEncTicketPart();
        Ticket ticket = new Ticket(serverPrincipal2, encryptTicketPart(encTicketPart, serverKey));
        ticket.setEncTicketPart(encTicketPart);
        System.out.println(new StringBuffer("Ticket will be issued for access to ").append(serverPrincipal.toString()).append(".").toString());
        return ticket;
    }

    private EncryptedData encryptTicketPart(EncTicketPart encTicketPart, EncryptionKey encryptionKey) {
        try {
            return EncryptionEngineFactory.getEncryptionEngineFor(encryptionKey).getEncryptedData(encryptionKey, new EncTicketPartEncoder().encode(encTicketPart));
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    private void encryptReplyPart(AuthenticationReply authenticationReply, EncryptionKey encryptionKey) {
        try {
            authenticationReply.setEncPart(EncryptionEngineFactory.getEncryptionEngineFor(encryptionKey).getEncryptedData(encryptionKey, new EncAsRepPartEncoder().encode(authenticationReply)));
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private AuthenticationReply getAuthenticationReply(KdcRequest kdcRequest, Ticket ticket) {
        AuthenticationReply authenticationReply = new AuthenticationReply();
        authenticationReply.setClientPrincipal(kdcRequest.getClientPrincipal());
        authenticationReply.setTicket(ticket);
        authenticationReply.setKey(ticket.getSessionKey());
        authenticationReply.setLastRequest(new LastRequest());
        authenticationReply.setNonce(kdcRequest.getNonce());
        authenticationReply.setFlags(ticket.getFlags());
        authenticationReply.setAuthTime(ticket.getAuthTime());
        authenticationReply.setStartTime(ticket.getStartTime());
        authenticationReply.setEndTime(ticket.getEndTime());
        if (ticket.getFlags().get(8)) {
            authenticationReply.setRenewTill(ticket.getRenewTill());
        }
        authenticationReply.setServerPrincipal(ticket.getServerPrincipal());
        authenticationReply.setClientAddresses(ticket.getClientAddresses());
        return authenticationReply;
    }
}
