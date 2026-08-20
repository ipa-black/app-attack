package org.apache.kerberos.exceptions;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
/* loaded from: classes5.dex */
public final class ErrorType implements Comparable {
    public static final ErrorType KDC_ERR_BADOPTION;
    public static final ErrorType KDC_ERR_BAD_PVNO;
    public static final ErrorType KDC_ERR_CANNOT_POSTDATE;
    public static final ErrorType KDC_ERR_CLIENT_NOTYET;
    public static final ErrorType KDC_ERR_CLIENT_REVOKED;
    public static final ErrorType KDC_ERR_C_OLD_MAST_KVNO;
    public static final ErrorType KDC_ERR_C_PRINCIPAL_UNKNOWN;
    public static final ErrorType KDC_ERR_ETYPE_NOSUPP;
    public static final ErrorType KDC_ERR_KEY_EXPIRED;
    public static final ErrorType KDC_ERR_MUST_USE_USER2USER;
    public static final ErrorType KDC_ERR_NAME_EXP;
    public static final ErrorType KDC_ERR_NEVER_VALID;
    public static final ErrorType KDC_ERR_NONE;
    public static final ErrorType KDC_ERR_NULL_KEY;
    public static final ErrorType KDC_ERR_PADATA_TYPE_NOSUPP;
    public static final ErrorType KDC_ERR_PATH_NOT_ACCEPTED;
    public static final ErrorType KDC_ERR_POLICY;
    public static final ErrorType KDC_ERR_PREAUTH_FAILED;
    public static final ErrorType KDC_ERR_PREAUTH_REQUIRED;
    public static final ErrorType KDC_ERR_PRINCIPAL_NOT_UNIQUE;
    public static final ErrorType KDC_ERR_SERVER_NOMATCH;
    public static final ErrorType KDC_ERR_SERVICE_EXP;
    public static final ErrorType KDC_ERR_SERVICE_NOTYET;
    public static final ErrorType KDC_ERR_SERVICE_REVOKED;
    public static final ErrorType KDC_ERR_SUMTYPE_NOSUPP;
    public static final ErrorType KDC_ERR_SVC_UNAVAILABLE;
    public static final ErrorType KDC_ERR_S_OLD_MAST_KVNO;
    public static final ErrorType KDC_ERR_S_PRINCIPAL_UNKNOWN;
    public static final ErrorType KDC_ERR_TGT_REVOKED;
    public static final ErrorType KDC_ERR_TRTYPE_NOSUPP;
    public static final ErrorType KRB_AP_ERR_BADADDR;
    public static final ErrorType KRB_AP_ERR_BADDIRECTION;
    public static final ErrorType KRB_AP_ERR_BADKEYVER;
    public static final ErrorType KRB_AP_ERR_BADMATCH;
    public static final ErrorType KRB_AP_ERR_BADORDER;
    public static final ErrorType KRB_AP_ERR_BADSEQ;
    public static final ErrorType KRB_AP_ERR_BADVERSION;
    public static final ErrorType KRB_AP_ERR_BAD_INTEGRITY;
    public static final ErrorType KRB_AP_ERR_INAPP_CKSUM;
    public static final ErrorType KRB_AP_ERR_METHOD;
    public static final ErrorType KRB_AP_ERR_MODIFIED;
    public static final ErrorType KRB_AP_ERR_MSG_TYPE;
    public static final ErrorType KRB_AP_ERR_MUT_FAIL;
    public static final ErrorType KRB_AP_ERR_NOKEY;
    public static final ErrorType KRB_AP_ERR_NOT_US;
    public static final ErrorType KRB_AP_ERR_NO_TGT;
    public static final ErrorType KRB_AP_ERR_REPEAT;
    public static final ErrorType KRB_AP_ERR_SKEW;
    public static final ErrorType KRB_AP_ERR_TKT_EXPIRED;
    public static final ErrorType KRB_AP_ERR_TKT_NYV;
    public static final ErrorType KRB_AP_ERR_USER_TO_USER_REQUIRED;
    public static final ErrorType KRB_ERR_CANT_VERIFY_CERTIFICATE;
    public static final ErrorType KRB_ERR_CERTIFICATE_MISMATCH;
    public static final ErrorType KRB_ERR_CLIENT_NAME_MISMATCH;
    public static final ErrorType KRB_ERR_CLIENT_NOT_TRUSTED;
    public static final ErrorType KRB_ERR_FIELD_TOOLONG;
    public static final ErrorType KRB_ERR_GENERIC;
    public static final ErrorType KRB_ERR_INVALID_CERTIFICATE;
    public static final ErrorType KRB_ERR_INVALID_SIG;
    public static final ErrorType KRB_ERR_KDC_NAME_MISMATCH;
    public static final ErrorType KRB_ERR_KDC_NOT_TRUSTED;
    public static final ErrorType KRB_ERR_KEY_TOO_WEAK;
    public static final ErrorType KRB_ERR_REVOCATION_STATUS_UNAVAILABLE;
    public static final ErrorType KRB_ERR_REVOCATION_STATUS_UNKNOWN;
    public static final ErrorType KRB_ERR_REVOKED_CERTIFICATE;
    public static final ErrorType KRB_ERR_WRONG_REALM;
    public static final List VALUES;
    private static final ErrorType[] values;
    private final String name;
    private final int ordinal;

    static {
        ErrorType errorType = new ErrorType(0, "No error");
        KDC_ERR_NONE = errorType;
        ErrorType errorType2 = new ErrorType(1, "Client's entry in database expired");
        KDC_ERR_NAME_EXP = errorType2;
        ErrorType errorType3 = new ErrorType(2, "Server's entry in database has expired");
        KDC_ERR_SERVICE_EXP = errorType3;
        ErrorType errorType4 = new ErrorType(3, "Requested protocol version number not supported");
        KDC_ERR_BAD_PVNO = errorType4;
        ErrorType errorType5 = new ErrorType(4, "Client's key encrypted in old master key");
        KDC_ERR_C_OLD_MAST_KVNO = errorType5;
        ErrorType errorType6 = new ErrorType(5, "Server's key encrypted in old master key");
        KDC_ERR_S_OLD_MAST_KVNO = errorType6;
        ErrorType errorType7 = new ErrorType(6, "Client not found in Kerberos database");
        KDC_ERR_C_PRINCIPAL_UNKNOWN = errorType7;
        ErrorType errorType8 = new ErrorType(7, "Server not found in Kerberos database");
        KDC_ERR_S_PRINCIPAL_UNKNOWN = errorType8;
        ErrorType errorType9 = new ErrorType(8, "Multiple principal entries in database");
        KDC_ERR_PRINCIPAL_NOT_UNIQUE = errorType9;
        ErrorType errorType10 = new ErrorType(9, "The client or server has a null key");
        KDC_ERR_NULL_KEY = errorType10;
        ErrorType errorType11 = new ErrorType(10, "Ticket not eligible for postdating");
        KDC_ERR_CANNOT_POSTDATE = errorType11;
        ErrorType errorType12 = new ErrorType(11, "Requested start time is later than end time");
        KDC_ERR_NEVER_VALID = errorType12;
        ErrorType errorType13 = new ErrorType(12, "KDC policy rejects request");
        KDC_ERR_POLICY = errorType13;
        ErrorType errorType14 = new ErrorType(13, "KDC cannot accommodate requested option");
        KDC_ERR_BADOPTION = errorType14;
        ErrorType errorType15 = new ErrorType(14, "KDC has no support for encryption type");
        KDC_ERR_ETYPE_NOSUPP = errorType15;
        ErrorType errorType16 = new ErrorType(15, "KDC has no support for checksum type");
        KDC_ERR_SUMTYPE_NOSUPP = errorType16;
        ErrorType errorType17 = new ErrorType(16, "KDC has no support for padata type");
        KDC_ERR_PADATA_TYPE_NOSUPP = errorType17;
        ErrorType errorType18 = new ErrorType(17, "KDC has no support for transitedEncoding type");
        KDC_ERR_TRTYPE_NOSUPP = errorType18;
        ErrorType errorType19 = new ErrorType(18, "Clients credentials have been revoked");
        KDC_ERR_CLIENT_REVOKED = errorType19;
        ErrorType errorType20 = new ErrorType(19, "Credentials for server have been revoked");
        KDC_ERR_SERVICE_REVOKED = errorType20;
        ErrorType errorType21 = new ErrorType(20, "TGT has been revoked");
        KDC_ERR_TGT_REVOKED = errorType21;
        ErrorType errorType22 = new ErrorType(21, "Client not yet valid - try again later");
        KDC_ERR_CLIENT_NOTYET = errorType22;
        ErrorType errorType23 = new ErrorType(22, "Server not yet valid - try again later");
        KDC_ERR_SERVICE_NOTYET = errorType23;
        ErrorType errorType24 = new ErrorType(23, "Password has expired - change password to reset");
        KDC_ERR_KEY_EXPIRED = errorType24;
        ErrorType errorType25 = new ErrorType(24, "Pre-authentication information was invalid");
        KDC_ERR_PREAUTH_FAILED = errorType25;
        ErrorType errorType26 = new ErrorType(25, "Additional pre-authentication required");
        KDC_ERR_PREAUTH_REQUIRED = errorType26;
        ErrorType errorType27 = new ErrorType(26, "Requested server and ticket don't match");
        KDC_ERR_SERVER_NOMATCH = errorType27;
        ErrorType errorType28 = new ErrorType(27, "Server valid for user2user only");
        KDC_ERR_MUST_USE_USER2USER = errorType28;
        ErrorType errorType29 = new ErrorType(28, "KDC Policy rejects transitedEncoding path");
        KDC_ERR_PATH_NOT_ACCEPTED = errorType29;
        ErrorType errorType30 = new ErrorType(29, "A service is not available");
        KDC_ERR_SVC_UNAVAILABLE = errorType30;
        ErrorType errorType31 = new ErrorType(31, "Integrity check on decrypted field failed");
        KRB_AP_ERR_BAD_INTEGRITY = errorType31;
        ErrorType errorType32 = new ErrorType(32, "Ticket expired");
        KRB_AP_ERR_TKT_EXPIRED = errorType32;
        ErrorType errorType33 = new ErrorType(33, "Ticket not yet valid");
        KRB_AP_ERR_TKT_NYV = errorType33;
        ErrorType errorType34 = new ErrorType(34, "Request is a replay");
        KRB_AP_ERR_REPEAT = errorType34;
        ErrorType errorType35 = new ErrorType(35, "The ticket isn't for us");
        KRB_AP_ERR_NOT_US = errorType35;
        ErrorType errorType36 = new ErrorType(36, "Ticket and authenticator don't match");
        KRB_AP_ERR_BADMATCH = errorType36;
        ErrorType errorType37 = new ErrorType(37, "Clock skew too great");
        KRB_AP_ERR_SKEW = errorType37;
        ErrorType errorType38 = new ErrorType(38, "Incorrect net address");
        KRB_AP_ERR_BADADDR = errorType38;
        ErrorType errorType39 = new ErrorType(39, "Protocol version mismatch");
        KRB_AP_ERR_BADVERSION = errorType39;
        ErrorType errorType40 = new ErrorType(40, "Invalid msg type");
        KRB_AP_ERR_MSG_TYPE = errorType40;
        ErrorType errorType41 = new ErrorType(41, "Message stream modified");
        KRB_AP_ERR_MODIFIED = errorType41;
        ErrorType errorType42 = new ErrorType(42, "Message out of order");
        KRB_AP_ERR_BADORDER = errorType42;
        ErrorType errorType43 = new ErrorType(44, "Specified version of key is not available");
        KRB_AP_ERR_BADKEYVER = errorType43;
        ErrorType errorType44 = new ErrorType(45, "Service key not available");
        KRB_AP_ERR_NOKEY = errorType44;
        ErrorType errorType45 = new ErrorType(46, "Mutual authentication failed");
        KRB_AP_ERR_MUT_FAIL = errorType45;
        ErrorType errorType46 = new ErrorType(47, "Incorrect message direction");
        KRB_AP_ERR_BADDIRECTION = errorType46;
        ErrorType errorType47 = new ErrorType(48, "Alternative authentication method required");
        KRB_AP_ERR_METHOD = errorType47;
        ErrorType errorType48 = new ErrorType(49, "Incorrect sequence number in message");
        KRB_AP_ERR_BADSEQ = errorType48;
        ErrorType errorType49 = new ErrorType(50, "Inappropriate type of checksum in message");
        KRB_AP_ERR_INAPP_CKSUM = errorType49;
        ErrorType errorType50 = new ErrorType(60, "Generic error (description in e-text)");
        KRB_ERR_GENERIC = errorType50;
        ErrorType errorType51 = new ErrorType(61, "Field is too long for this implementation");
        KRB_ERR_FIELD_TOOLONG = errorType51;
        ErrorType errorType52 = new ErrorType(62, "Client is not trusted");
        KRB_ERR_CLIENT_NOT_TRUSTED = errorType52;
        ErrorType errorType53 = new ErrorType(63, "KDC is not trusted");
        KRB_ERR_KDC_NOT_TRUSTED = errorType53;
        ErrorType errorType54 = new ErrorType(64, "Signature is invalid");
        KRB_ERR_INVALID_SIG = errorType54;
        ErrorType errorType55 = new ErrorType(65, "Key too weak");
        KRB_ERR_KEY_TOO_WEAK = errorType55;
        ErrorType errorType56 = new ErrorType(66, "Certificates do not match");
        KRB_ERR_CERTIFICATE_MISMATCH = errorType56;
        ErrorType errorType57 = new ErrorType(67, "No tgt for user-to-user authentication");
        KRB_AP_ERR_NO_TGT = errorType57;
        ErrorType errorType58 = new ErrorType(68, "Wrong realm");
        KRB_ERR_WRONG_REALM = errorType58;
        ErrorType errorType59 = new ErrorType(69, "User-to-user authentication required");
        KRB_AP_ERR_USER_TO_USER_REQUIRED = errorType59;
        ErrorType errorType60 = new ErrorType(70, "Can't verify certificate");
        KRB_ERR_CANT_VERIFY_CERTIFICATE = errorType60;
        ErrorType errorType61 = new ErrorType(71, "Invalid certificate");
        KRB_ERR_INVALID_CERTIFICATE = errorType61;
        ErrorType errorType62 = new ErrorType(72, "Revoked certificate");
        KRB_ERR_REVOKED_CERTIFICATE = errorType62;
        ErrorType errorType63 = new ErrorType(73, "Revocation status unknown");
        KRB_ERR_REVOCATION_STATUS_UNKNOWN = errorType63;
        ErrorType errorType64 = new ErrorType(74, "Revocation status unavailable");
        KRB_ERR_REVOCATION_STATUS_UNAVAILABLE = errorType64;
        ErrorType errorType65 = new ErrorType(75, "Client names do not match");
        KRB_ERR_CLIENT_NAME_MISMATCH = errorType65;
        ErrorType errorType66 = new ErrorType(76, "KDC names do not match");
        KRB_ERR_KDC_NAME_MISMATCH = errorType66;
        ErrorType[] errorTypeArr = {errorType, errorType2, errorType3, errorType4, errorType5, errorType6, errorType7, errorType8, errorType9, errorType10, errorType11, errorType12, errorType13, errorType14, errorType15, errorType16, errorType17, errorType18, errorType19, errorType20, errorType21, errorType22, errorType23, errorType24, errorType25, errorType26, errorType27, errorType28, errorType29, errorType30, errorType31, errorType32, errorType33, errorType34, errorType35, errorType36, errorType37, errorType38, errorType39, errorType40, errorType41, errorType42, errorType43, errorType44, errorType45, errorType46, errorType47, errorType48, errorType49, errorType50, errorType51, errorType52, errorType53, errorType54, errorType55, errorType56, errorType57, errorType58, errorType59, errorType60, errorType61, errorType62, errorType63, errorType64, errorType65, errorType66};
        values = errorTypeArr;
        VALUES = Collections.unmodifiableList(Arrays.asList(errorTypeArr));
    }

    private ErrorType(int i, String str) {
        this.ordinal = i;
        this.name = str;
    }

    public String getMessage() {
        return this.name;
    }

    public String toString() {
        return this.name;
    }

    @Override // java.lang.Comparable
    public int compareTo(Object obj) {
        return this.ordinal - ((ErrorType) obj).ordinal;
    }

    public static ErrorType getTypeByOrdinal(int i) {
        int i2 = 0;
        while (true) {
            ErrorType[] errorTypeArr = values;
            if (i2 < errorTypeArr.length) {
                ErrorType errorType = errorTypeArr[i2];
                if (errorType.ordinal == i) {
                    return errorType;
                }
                i2++;
            } else {
                return KRB_ERR_GENERIC;
            }
        }
    }

    public int getOrdinal() {
        return this.ordinal;
    }
}
