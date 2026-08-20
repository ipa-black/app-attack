package org.apache.kerberos.service;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import javax.security.auth.kerberos.KerberosPrincipal;
import org.apache.kerberos.crypto.checksum.ChecksumType;
import org.apache.kerberos.crypto.checksum.Crc32Checksum;
import org.apache.kerberos.crypto.checksum.RsaMd4Checksum;
import org.apache.kerberos.crypto.checksum.RsaMd5Checksum;
import org.apache.kerberos.crypto.checksum.Sha1Checksum;
import org.apache.kerberos.crypto.encryption.EncryptionEngineFactory;
import org.apache.kerberos.crypto.encryption.EncryptionType;
import org.apache.kerberos.exceptions.ErrorType;
import org.apache.kerberos.exceptions.KerberosException;
import org.apache.kerberos.io.decoder.AuthenticatorDecoder;
import org.apache.kerberos.io.decoder.EncTicketPartDecoder;
import org.apache.kerberos.messages.ApplicationRequest;
import org.apache.kerberos.messages.MessageType;
import org.apache.kerberos.messages.components.Authenticator;
import org.apache.kerberos.messages.components.EncTicketPartModifier;
import org.apache.kerberos.messages.components.Ticket;
import org.apache.kerberos.messages.value.EncryptionKey;
import org.apache.kerberos.messages.value.KerberosTime;
import org.apache.kerberos.replay.InMemoryReplayCache;
import org.apache.kerberos.replay.ReplayCache;
import org.apache.kerberos.store.PrincipalStore;
import org.apache.kerberos.store.PrincipalStoreEntry;
import org.apache.kerberos.store.operations.GetPrincipal;
/* loaded from: classes5.dex */
public class KerberosService {
    private Map checksumEngines;
    protected KdcConfiguration config;
    private ReplayCache replayCache = new InMemoryReplayCache();
    protected PrincipalStore store;

    public KerberosService(KdcConfiguration kdcConfiguration, PrincipalStore principalStore) {
        HashMap hashMap = new HashMap();
        this.checksumEngines = hashMap;
        this.config = kdcConfiguration;
        this.store = principalStore;
        hashMap.put(ChecksumType.CRC32, new Crc32Checksum());
        this.checksumEngines.put(ChecksumType.RSA_MD4, new RsaMd4Checksum());
        this.checksumEngines.put(ChecksumType.RSA_MD5, new RsaMd5Checksum());
        this.checksumEngines.put(ChecksumType.SHA1, new Sha1Checksum());
    }

    public EncryptionKey getClientKey(KerberosPrincipal kerberosPrincipal) throws KerberosException {
        return getKey(kerberosPrincipal, ErrorType.KDC_ERR_C_PRINCIPAL_UNKNOWN);
    }

    public EncryptionKey getServerKey(KerberosPrincipal kerberosPrincipal) throws KerberosException {
        return getKey(kerberosPrincipal, ErrorType.KDC_ERR_S_PRINCIPAL_UNKNOWN);
    }

    private EncryptionKey getKey(KerberosPrincipal kerberosPrincipal, ErrorType errorType) throws KerberosException {
        try {
            PrincipalStoreEntry principalStoreEntry = (PrincipalStoreEntry) this.store.execute(new GetPrincipal(kerberosPrincipal));
            if (principalStoreEntry == null || principalStoreEntry.getEncryptionKey() == null) {
                throw new KerberosException(errorType);
            }
            return principalStoreEntry.getEncryptionKey();
        } catch (Exception unused) {
            throw new KerberosException(errorType);
        }
    }

    public PrincipalStoreEntry getEntryForClient(KerberosPrincipal kerberosPrincipal) throws KerberosException {
        try {
            PrincipalStoreEntry principalStoreEntry = (PrincipalStoreEntry) this.store.execute(new GetPrincipal(kerberosPrincipal));
            if (principalStoreEntry != null) {
                return principalStoreEntry;
            }
            throw new KerberosException(ErrorType.KDC_ERR_C_PRINCIPAL_UNKNOWN);
        } catch (Exception unused) {
            throw new KerberosException(ErrorType.KDC_ERR_C_PRINCIPAL_UNKNOWN);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public EncryptionType getBestEncryptionType(EncryptionType[] encryptionTypeArr) throws KerberosException {
        EncryptionType[] encryptionTypes = this.config.getEncryptionTypes();
        for (EncryptionType encryptionType : encryptionTypeArr) {
            for (EncryptionType encryptionType2 : encryptionTypes) {
                if (encryptionType == encryptionType2) {
                    return encryptionType2;
                }
            }
        }
        throw new KerberosException(ErrorType.KDC_ERR_ETYPE_NOSUPP);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void verifyTicket(Ticket ticket, KerberosPrincipal kerberosPrincipal) throws KerberosException {
        if (!ticket.getRealm().equals(this.config.getPrimaryRealm()) && !ticket.getServerPrincipal().equals(kerberosPrincipal)) {
            throw new KerberosException(ErrorType.KRB_AP_ERR_NOT_US);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Authenticator verifyAuthHeader(ApplicationRequest applicationRequest, Ticket ticket) throws KerberosException, IOException {
        EncryptionKey serverKey;
        if (applicationRequest.getProtocolVersionNumber() != 5) {
            throw new KerberosException(ErrorType.KRB_AP_ERR_BADVERSION);
        }
        if (applicationRequest.getMessageType() != MessageType.KRB_AP_REQ) {
            throw new KerberosException(ErrorType.KRB_AP_ERR_MSG_TYPE);
        }
        if (applicationRequest.getTicket().getTicketVersionNumber() != 5) {
            throw new KerberosException(ErrorType.KRB_AP_ERR_BADVERSION);
        }
        KerberosPrincipal serverPrincipal = ticket.getServerPrincipal();
        if (applicationRequest.getOption(1)) {
            serverKey = applicationRequest.getTicket().getSessionKey();
        } else {
            serverKey = getServerKey(serverPrincipal);
        }
        if (serverKey == null) {
            throw new KerberosException(ErrorType.KRB_AP_ERR_NOKEY);
        }
        try {
            ticket.setEncTicketPart(new EncTicketPartDecoder().decode(EncryptionEngineFactory.getEncryptionEngineFor(serverKey).getDecryptedData(serverKey, ticket.getEncPart())));
            try {
                Authenticator decode = new AuthenticatorDecoder().decode(EncryptionEngineFactory.getEncryptionEngineFor(ticket.getSessionKey()).getDecryptedData(ticket.getSessionKey(), applicationRequest.getEncPart()));
                if (!decode.getClientPrincipal().getName().equals(ticket.getClientPrincipal().getName())) {
                    throw new KerberosException(ErrorType.KRB_AP_ERR_BADMATCH);
                }
                ticket.getClientAddresses();
                if (this.replayCache.isReplay(decode.getClientTime(), decode.getClientPrincipal())) {
                    throw new KerberosException(ErrorType.KRB_AP_ERR_REPEAT);
                }
                this.replayCache.save(decode.getClientTime(), decode.getClientPrincipal());
                if (!decode.getClientTime().isInClockSkew(this.config.getClockSkew())) {
                    throw new KerberosException(ErrorType.KRB_AP_ERR_SKEW);
                }
                if ((ticket.getStartTime() != null && !ticket.getStartTime().isInClockSkew(this.config.getClockSkew())) || ticket.getFlag(7)) {
                    throw new KerberosException(ErrorType.KRB_AP_ERR_TKT_NYV);
                }
                if (!ticket.getEndTime().greaterThan(new KerberosTime())) {
                    throw new KerberosException(ErrorType.KRB_AP_ERR_TKT_EXPIRED);
                }
                applicationRequest.setOption(2);
                return decode;
            } catch (KerberosException unused) {
                throw new KerberosException(ErrorType.KRB_AP_ERR_BAD_INTEGRITY);
            }
        } catch (KerberosException unused2) {
            throw new KerberosException(ErrorType.KRB_AP_ERR_BAD_INTEGRITY);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void echoTicket(EncTicketPartModifier encTicketPartModifier, Ticket ticket) {
        encTicketPartModifier.setAuthorizationData(ticket.getAuthorizationData());
        encTicketPartModifier.setAuthTime(ticket.getAuthTime());
        encTicketPartModifier.setClientAddresses(ticket.getClientAddresses());
        encTicketPartModifier.setClientPrincipal(ticket.getClientPrincipal());
        encTicketPartModifier.setEndTime(ticket.getEndTime());
        encTicketPartModifier.setFlags(ticket.getFlags());
        encTicketPartModifier.setRenewTill(ticket.getRenewTill());
        encTicketPartModifier.setSessionKey(ticket.getSessionKey());
        encTicketPartModifier.setTransitedEncoding(ticket.getTransitedEncoding());
    }
}
