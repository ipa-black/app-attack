package org.apache.kerberos.sam;

import java.util.HashMap;
import java.util.Hashtable;
import javax.security.auth.kerberos.KerberosKey;
import org.apache.kerberos.store.PrincipalStoreEntry;
/* loaded from: classes5.dex */
public final class SamSubsystem {
    public static final String PROPKEY_BASE = "kerberos.sam.type.";
    private static KeyIntegrityChecker keyChecker;
    private static final HashMap verifiers = new HashMap();
    private static final Hashtable env = new Hashtable();

    public static void setIntegrityChecker(KeyIntegrityChecker keyIntegrityChecker) {
        keyChecker = keyIntegrityChecker;
    }

    public static KerberosKey verify(PrincipalStoreEntry principalStoreEntry, byte[] bArr) throws SamException {
        if (keyChecker == null) {
            throw new IllegalStateException("SamSubsystem not enabled with key integrity checker");
        }
        if (principalStoreEntry.getSamType() == null) {
            throw new SamException(principalStoreEntry.getSamType(), "Entry has null SAM type");
        }
        HashMap hashMap = verifiers;
        if (hashMap.containsKey(principalStoreEntry.getSamType())) {
            return ((SamVerifier) hashMap.get(principalStoreEntry.getSamType())).verify(principalStoreEntry.getPrincipal(), bArr);
        }
        String stringBuffer = new StringBuffer(PROPKEY_BASE).append(principalStoreEntry.getSamType().getOrdinal()).toString();
        Hashtable hashtable = env;
        if (!hashtable.containsKey(stringBuffer)) {
            throw new SamException(principalStoreEntry.getSamType(), new StringBuffer("Could not find property '").append(stringBuffer).append("'").toString());
        }
        String str = (String) hashtable.get(stringBuffer);
        try {
            SamVerifier samVerifier = (SamVerifier) Class.forName(str).newInstance();
            samVerifier.setIntegrityChecker(keyChecker);
            if (!samVerifier.getSamType().equals(principalStoreEntry.getSamType())) {
                throw new SamException(principalStoreEntry.getSamType(), new StringBuffer().append(new StringBuffer("Expecting entries with SAM type of ").append(samVerifier.getSamType()).toString()).append(" but got a type of entry with SAM type of ").append(principalStoreEntry.getSamType()).toString());
            }
            hashMap.put(samVerifier.getSamType(), samVerifier);
            return samVerifier.verify(principalStoreEntry.getPrincipal(), bArr);
        } catch (ClassNotFoundException e2) {
            throw new SamException(principalStoreEntry.getSamType(), new StringBuffer().append(new StringBuffer("Could not find verifier class '").append(str).toString()).append("' for SamType( ").append(principalStoreEntry.getSamType()).append(" ) ").toString(), e2);
        } catch (IllegalAccessException e3) {
            throw new SamException(principalStoreEntry.getSamType(), new StringBuffer().append(new StringBuffer("No public default constructor on class '").append(str).toString()).append("' for SamType( ").append(principalStoreEntry.getSamType()).append(" ) ").toString(), e3);
        } catch (InstantiationException e4) {
            throw new SamException(principalStoreEntry.getSamType(), new StringBuffer().append(new StringBuffer("Failed on default constructor invocation for class '").append(str).toString()).append("' for SamType( ").append(principalStoreEntry.getSamType()).append(" ) ").toString(), e4);
        }
    }

    public static void setEnvironment(Hashtable hashtable) {
        env.putAll(hashtable);
    }
}
