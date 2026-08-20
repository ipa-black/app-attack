package org.apache.ldap.common.message;

import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import javax.naming.AuthenticationException;
import javax.naming.AuthenticationNotSupportedException;
import javax.naming.CommunicationException;
import javax.naming.ContextNotEmptyException;
import javax.naming.InvalidNameException;
import javax.naming.LimitExceededException;
import javax.naming.NameAlreadyBoundException;
import javax.naming.NameNotFoundException;
import javax.naming.NamingException;
import javax.naming.NoPermissionException;
import javax.naming.OperationNotSupportedException;
import javax.naming.PartialResultException;
import javax.naming.ServiceUnavailableException;
import javax.naming.SizeLimitExceededException;
import javax.naming.TimeLimitExceededException;
import javax.naming.directory.AttributeInUseException;
import javax.naming.directory.InvalidAttributeIdentifierException;
import javax.naming.directory.InvalidAttributeValueException;
import javax.naming.directory.InvalidSearchFilterException;
import javax.naming.directory.NoSuchAttributeException;
import javax.naming.directory.SchemaViolationException;
import org.apache.ldap.common.exception.LdapException;
import org.apache.ldap.common.util.ValuedEnum;
/* loaded from: classes3.dex */
public class ResultCodeEnum extends ValuedEnum {
    public static final Set ADD_CODES;
    public static final ResultCodeEnum ADMINLIMITEXCEEDED;
    public static final int ADMINLIMITEXCEEDED_VAL = 11;
    public static final ResultCodeEnum AFFECTSMULTIPLEDSAS;
    public static final int AFFECTSMULTIPLEDSAS_VAL = 71;
    public static final ResultCodeEnum ALIASDEREFERENCINGPROBLEM;
    public static final int ALIASDEREFERENCINGPROBLEM_VAL = 36;
    public static final ResultCodeEnum ALIASPROBLEM;
    public static final int ALIASPROBLEM_VAL = 33;
    public static final Set ALL_CODES;
    public static final ResultCodeEnum ATTRIBUTEORVALUEEXISTS;
    public static final int ATTRIBUTEORVALUEEXISTS_VAL = 20;
    public static final Set ATTRIBUTE_CODES;
    public static final Set AUTHENTICATIONNOTSUPPOERTEDEXCEPTION_CODES;
    public static final ResultCodeEnum AUTHMETHODNOTSUPPORTED;
    public static final int AUTHMETHODNOTSUPPORTED_VAL = 7;
    public static final Set BIND_CODES;
    public static final ResultCodeEnum BUSY;
    public static final int BUSY_VAL = 51;
    public static final Set COMMON_CODES;
    public static final ResultCodeEnum COMPAREFALSE;
    public static final int COMPAREFALSE_VAL = 5;
    public static final ResultCodeEnum COMPARETRUE;
    public static final int COMPARETRUE_VAL = 6;
    public static final Set COMPARE_CODES;
    public static final ResultCodeEnum CONFIDENTIALITYREQUIRED;
    public static final int CONFIDENTIALITYREQUIRED_VAL = 13;
    public static final ResultCodeEnum CONSTRAINTVIOLATION;
    public static final int CONSTRAINTVIOLATION_VAL = 19;
    public static final Set DELETE_CODES;
    public static final ResultCodeEnum ENTRYALREADYEXISTS;
    public static final int ENTRYALREADYEXISTS_VAL = 68;
    public static final Set EXTENDED_CODES;
    public static final Set GENERAL_CODES;
    public static final ResultCodeEnum INAPPROPRIATEAUTHENTICATION;
    public static final int INAPPROPRIATEAUTHENTICATION_VAL = 48;
    public static final ResultCodeEnum INAPPROPRIATEMATCHING;
    public static final int INAPPROPRIATEMATCHING_VAL = 18;
    public static final ResultCodeEnum INSUFFICIENTACCESSRIGHTS;
    public static final int INSUFFICIENTACCESSRIGHTS_VAL = 50;
    public static final ResultCodeEnum INVALIDATTRIBUTESYNTAX;
    public static final int INVALIDATTRIBUTESYNTAX_VAL = 21;
    public static final Set INVALIDATTRIBUTEVALUEEXCEPTION_CODES;
    public static final ResultCodeEnum INVALIDCREDENTIALS;
    public static final int INVALIDCREDENTIALS_VAL = 49;
    public static final ResultCodeEnum INVALIDDNSYNTAX;
    public static final int INVALIDDNSYNTAX_VAL = 34;
    public static final Set INVALIDNAMEEXCEPTION_CODES;
    public static final Set LIMITEXCEEDEDEXCEPTION_CODES;
    public static final ResultCodeEnum LOOPDETECT;
    public static final int LOOPDETECT_VAL = 54;
    public static final Set MODIFYDN_CODES;
    public static final Set MODIFY_CODES;
    public static final Set NAME_CODES;
    public static final Set NAMINGEXCEPTION_CODES;
    public static final ResultCodeEnum NAMINGVIOLATION;
    public static final int NAMINGVIOLATION_VAL = 64;
    public static final Set NON_ERRONEOUS_CODES;
    public static final ResultCodeEnum NOSUCHATTRIBUTE;
    public static final int NOSUCHATTRIBUTE_VAL = 16;
    public static final ResultCodeEnum NOSUCHOBJECT;
    public static final int NOSUCHOBJECT_VAL = 32;
    public static final ResultCodeEnum NOTALLOWEDONNONLEAF;
    public static final int NOTALLOWEDONNONLEAF_VAL = 66;
    public static final ResultCodeEnum NOTALLOWEDONRDN;
    public static final int NOTALLOWEDONRDN_VAL = 67;
    public static final ResultCodeEnum OBJECTCLASSMODSPROHIBITED;
    public static final int OBJECTCLASSMODSPROHIBITED_VAL = 69;
    public static final ResultCodeEnum OBJECTCLASSVIOLATION;
    public static final int OBJECTCLASSVIOLATION_VAL = 65;
    public static final Set OPERATIONNOTSUPPOERTEXCEPTION_CODES;
    public static final ResultCodeEnum OPERATIONSERROR;
    public static final int OPERATIONSERROR_VAL = 1;
    public static final ResultCodeEnum OTHER;
    public static final int OTHER_VAL = 80;
    public static final ResultCodeEnum PARTIALRESULTS;
    public static final Set PARTIALRESULTSEXCEPTION_CODES;
    public static final int PARTIALRESULTS_VAL = 9;
    public static final ResultCodeEnum PROTOCOLERROR;
    public static final int PROTOCOLERROR_VAL = 2;
    public static final ResultCodeEnum REFERRAL;
    public static final int REFERRAL_VAL = 10;
    public static final ResultCodeEnum SASLBINDINPROGRESS;
    public static final int SASLBINDINPROGRESS_VAL = 14;
    public static final Set SCHEMAVIOLATIONEXCEPTION_CODES;
    public static final Set SEARCH_CODES;
    public static final Set SECURITY_CODES;
    public static final Set SERVICEUNAVAILABLE_CODES;
    public static final Set SERVICE_CODES;
    public static final ResultCodeEnum SIZELIMITEXCEEDED;
    public static final int SIZELIMITEXCEEDED_VAL = 4;
    public static final ResultCodeEnum STRONGAUTHREQUIRED;
    public static final int STRONGAUTHREQUIRED_VAL = 8;
    public static final ResultCodeEnum SUCCESS;
    public static final int SUCCESS_VAL = 0;
    public static final ResultCodeEnum TIMELIMITEXCEEDED;
    public static final int TIMELIMITEXCEEDED_VAL = 3;
    public static final ResultCodeEnum UNAVAILABLE;
    public static final ResultCodeEnum UNAVAILABLECRITICALEXTENSION;
    public static final int UNAVAILABLECRITICALEXTENSION_VAL = 12;
    public static final int UNAVAILABLE_VAL = 52;
    public static final ResultCodeEnum UNDEFINEDATTRIBUTETYPE;
    public static final int UNDEFINEDATTRIBUTETYPE_VAL = 17;
    public static final ResultCodeEnum UNWILLINGTOPERFORM;
    public static final int UNWILLINGTOPERFORM_VAL = 53;
    public static final Set UPDATE_CODES;

    static {
        ResultCodeEnum resultCodeEnum = new ResultCodeEnum("PARTIALRESULTS", 9);
        PARTIALRESULTS = resultCodeEnum;
        ResultCodeEnum resultCodeEnum2 = new ResultCodeEnum("SUCCESS", 0);
        SUCCESS = resultCodeEnum2;
        ResultCodeEnum resultCodeEnum3 = new ResultCodeEnum("COMPAREFALSE", 5);
        COMPAREFALSE = resultCodeEnum3;
        ResultCodeEnum resultCodeEnum4 = new ResultCodeEnum("COMPARETRUE", 6);
        COMPARETRUE = resultCodeEnum4;
        ResultCodeEnum resultCodeEnum5 = new ResultCodeEnum("REFERRAL", 10);
        REFERRAL = resultCodeEnum5;
        ResultCodeEnum resultCodeEnum6 = new ResultCodeEnum("SASLBINDINPROGRESS", 14);
        SASLBINDINPROGRESS = resultCodeEnum6;
        ResultCodeEnum resultCodeEnum7 = new ResultCodeEnum("AUTHMETHODNOTSUPPORTED", 7);
        AUTHMETHODNOTSUPPORTED = resultCodeEnum7;
        ResultCodeEnum resultCodeEnum8 = new ResultCodeEnum("STRONGAUTHREQUIRED", 8);
        STRONGAUTHREQUIRED = resultCodeEnum8;
        ResultCodeEnum resultCodeEnum9 = new ResultCodeEnum("CONFIDENTIALITYREQUIRED", 13);
        CONFIDENTIALITYREQUIRED = resultCodeEnum9;
        ResultCodeEnum resultCodeEnum10 = new ResultCodeEnum("ALIASDEREFERENCINGPROBLEM", 36);
        ALIASDEREFERENCINGPROBLEM = resultCodeEnum10;
        ResultCodeEnum resultCodeEnum11 = new ResultCodeEnum("INAPPROPRIATEAUTHENTICATION", 48);
        INAPPROPRIATEAUTHENTICATION = resultCodeEnum11;
        ResultCodeEnum resultCodeEnum12 = new ResultCodeEnum("INVALIDCREDENTIALS", 49);
        INVALIDCREDENTIALS = resultCodeEnum12;
        ResultCodeEnum resultCodeEnum13 = new ResultCodeEnum("INSUFFICIENTACCESSRIGHTS", 50);
        INSUFFICIENTACCESSRIGHTS = resultCodeEnum13;
        ResultCodeEnum resultCodeEnum14 = new ResultCodeEnum("OPERATIONSERROR", 1);
        OPERATIONSERROR = resultCodeEnum14;
        ResultCodeEnum resultCodeEnum15 = new ResultCodeEnum("PROTOCOLERROR", 2);
        PROTOCOLERROR = resultCodeEnum15;
        ResultCodeEnum resultCodeEnum16 = new ResultCodeEnum("TIMELIMITEXCEEDED", 3);
        TIMELIMITEXCEEDED = resultCodeEnum16;
        ResultCodeEnum resultCodeEnum17 = new ResultCodeEnum("SIZELIMITEXCEEDED", 4);
        SIZELIMITEXCEEDED = resultCodeEnum17;
        ResultCodeEnum resultCodeEnum18 = new ResultCodeEnum("ADMINLIMITEXCEEDED", 11);
        ADMINLIMITEXCEEDED = resultCodeEnum18;
        ResultCodeEnum resultCodeEnum19 = new ResultCodeEnum("UNAVAILABLECRITICALEXTENSION", 12);
        UNAVAILABLECRITICALEXTENSION = resultCodeEnum19;
        ResultCodeEnum resultCodeEnum20 = new ResultCodeEnum("BUSY", 51);
        BUSY = resultCodeEnum20;
        ResultCodeEnum resultCodeEnum21 = new ResultCodeEnum("UNAVAILABLE", 52);
        UNAVAILABLE = resultCodeEnum21;
        ResultCodeEnum resultCodeEnum22 = new ResultCodeEnum("UNWILLINGTOPERFORM", 53);
        UNWILLINGTOPERFORM = resultCodeEnum22;
        ResultCodeEnum resultCodeEnum23 = new ResultCodeEnum("LOOPDETECT", 54);
        LOOPDETECT = resultCodeEnum23;
        ResultCodeEnum resultCodeEnum24 = new ResultCodeEnum("NOSUCHATTRIBUTE", 16);
        NOSUCHATTRIBUTE = resultCodeEnum24;
        ResultCodeEnum resultCodeEnum25 = new ResultCodeEnum("UNDEFINEDATTRIBUTETYPE", 17);
        UNDEFINEDATTRIBUTETYPE = resultCodeEnum25;
        ResultCodeEnum resultCodeEnum26 = new ResultCodeEnum("INAPPROPRIATEMATCHING", 18);
        INAPPROPRIATEMATCHING = resultCodeEnum26;
        ResultCodeEnum resultCodeEnum27 = new ResultCodeEnum("CONSTRAINTVIOLATION", 19);
        CONSTRAINTVIOLATION = resultCodeEnum27;
        ResultCodeEnum resultCodeEnum28 = new ResultCodeEnum("ATTRIBUTEORVALUEEXISTS", 20);
        ATTRIBUTEORVALUEEXISTS = resultCodeEnum28;
        ResultCodeEnum resultCodeEnum29 = new ResultCodeEnum("INVALIDATTRIBUTESYNTAX", 21);
        INVALIDATTRIBUTESYNTAX = resultCodeEnum29;
        ResultCodeEnum resultCodeEnum30 = new ResultCodeEnum("NOSUCHOBJECT", 32);
        NOSUCHOBJECT = resultCodeEnum30;
        ResultCodeEnum resultCodeEnum31 = new ResultCodeEnum("ALIASPROBLEM", 33);
        ALIASPROBLEM = resultCodeEnum31;
        ResultCodeEnum resultCodeEnum32 = new ResultCodeEnum("INVALIDDNSYNTAX", 34);
        INVALIDDNSYNTAX = resultCodeEnum32;
        ResultCodeEnum resultCodeEnum33 = new ResultCodeEnum("NAMINGVIOLATION", 64);
        NAMINGVIOLATION = resultCodeEnum33;
        ResultCodeEnum resultCodeEnum34 = new ResultCodeEnum("OBJECTCLASSVIOLATION", 65);
        OBJECTCLASSVIOLATION = resultCodeEnum34;
        ResultCodeEnum resultCodeEnum35 = new ResultCodeEnum("NOTALLOWEDONNONLEAF", 66);
        NOTALLOWEDONNONLEAF = resultCodeEnum35;
        ResultCodeEnum resultCodeEnum36 = new ResultCodeEnum("NOTALLOWEDONRDN", 67);
        NOTALLOWEDONRDN = resultCodeEnum36;
        ResultCodeEnum resultCodeEnum37 = new ResultCodeEnum("ENTRYALREADYEXISTS", 68);
        ENTRYALREADYEXISTS = resultCodeEnum37;
        ResultCodeEnum resultCodeEnum38 = new ResultCodeEnum("OBJECTCLASSMODSPROHIBITE", 69);
        OBJECTCLASSMODSPROHIBITED = resultCodeEnum38;
        ResultCodeEnum resultCodeEnum39 = new ResultCodeEnum("AFFECTSMULTIPLEDSAS", 71);
        AFFECTSMULTIPLEDSAS = resultCodeEnum39;
        ResultCodeEnum resultCodeEnum40 = new ResultCodeEnum("OTHER", 80);
        OTHER = resultCodeEnum40;
        GENERAL_CODES = Collections.singleton(resultCodeEnum40);
        HashSet hashSet = new HashSet();
        hashSet.add(resultCodeEnum2);
        hashSet.add(resultCodeEnum4);
        hashSet.add(resultCodeEnum3);
        hashSet.add(resultCodeEnum5);
        hashSet.add(resultCodeEnum6);
        NON_ERRONEOUS_CODES = Collections.unmodifiableSet(hashSet);
        HashSet hashSet2 = new HashSet();
        hashSet2.add(resultCodeEnum24);
        hashSet2.add(resultCodeEnum25);
        hashSet2.add(resultCodeEnum26);
        hashSet2.add(resultCodeEnum27);
        hashSet2.add(resultCodeEnum28);
        hashSet2.add(resultCodeEnum29);
        ATTRIBUTE_CODES = Collections.unmodifiableSet(hashSet2);
        HashSet hashSet3 = new HashSet();
        hashSet3.add(resultCodeEnum30);
        hashSet3.add(resultCodeEnum31);
        hashSet3.add(resultCodeEnum32);
        NAME_CODES = Collections.unmodifiableSet(hashSet3);
        HashSet hashSet4 = new HashSet();
        hashSet4.add(resultCodeEnum12);
        hashSet4.add(resultCodeEnum8);
        hashSet4.add(resultCodeEnum7);
        hashSet4.add(resultCodeEnum9);
        hashSet4.add(resultCodeEnum13);
        hashSet4.add(resultCodeEnum10);
        hashSet4.add(resultCodeEnum11);
        SECURITY_CODES = Collections.unmodifiableSet(hashSet4);
        HashSet hashSet5 = new HashSet();
        hashSet5.add(resultCodeEnum20);
        hashSet5.add(resultCodeEnum23);
        hashSet5.add(resultCodeEnum21);
        hashSet5.add(resultCodeEnum15);
        hashSet5.add(resultCodeEnum14);
        hashSet5.add(resultCodeEnum16);
        hashSet5.add(resultCodeEnum17);
        hashSet5.add(resultCodeEnum18);
        hashSet5.add(resultCodeEnum22);
        hashSet5.add(resultCodeEnum19);
        SERVICE_CODES = Collections.unmodifiableSet(hashSet5);
        HashSet hashSet6 = new HashSet();
        hashSet6.add(resultCodeEnum33);
        hashSet6.add(resultCodeEnum34);
        hashSet6.add(resultCodeEnum35);
        hashSet6.add(resultCodeEnum36);
        hashSet6.add(resultCodeEnum37);
        hashSet6.add(resultCodeEnum38);
        hashSet6.add(resultCodeEnum39);
        UPDATE_CODES = Collections.unmodifiableSet(hashSet6);
        HashSet hashSet7 = new HashSet();
        hashSet7.add(resultCodeEnum20);
        hashSet7.add(resultCodeEnum40);
        hashSet7.add(resultCodeEnum5);
        hashSet7.add(resultCodeEnum23);
        hashSet7.add(resultCodeEnum21);
        hashSet7.add(resultCodeEnum15);
        hashSet7.add(resultCodeEnum16);
        hashSet7.add(resultCodeEnum18);
        hashSet7.add(resultCodeEnum8);
        hashSet7.add(resultCodeEnum22);
        hashSet7.add(resultCodeEnum9);
        hashSet7.add(resultCodeEnum19);
        COMMON_CODES = Collections.unmodifiableSet(hashSet7);
        HashSet hashSet8 = new HashSet();
        hashSet8.add(resultCodeEnum20);
        hashSet8.add(resultCodeEnum40);
        hashSet8.add(resultCodeEnum2);
        hashSet8.add(resultCodeEnum5);
        hashSet8.add(resultCodeEnum23);
        hashSet8.add(resultCodeEnum21);
        hashSet8.add(resultCodeEnum15);
        hashSet8.add(resultCodeEnum32);
        hashSet8.add(resultCodeEnum16);
        hashSet8.add(resultCodeEnum18);
        hashSet8.add(resultCodeEnum22);
        hashSet8.add(resultCodeEnum6);
        hashSet8.add(resultCodeEnum8);
        hashSet8.add(resultCodeEnum12);
        hashSet8.add(resultCodeEnum7);
        hashSet8.add(resultCodeEnum9);
        hashSet8.add(resultCodeEnum11);
        hashSet8.add(resultCodeEnum19);
        BIND_CODES = Collections.unmodifiableSet(hashSet8);
        HashSet hashSet9 = new HashSet();
        hashSet9.add(resultCodeEnum20);
        hashSet9.add(resultCodeEnum40);
        hashSet9.add(resultCodeEnum2);
        hashSet9.add(resultCodeEnum5);
        hashSet9.add(resultCodeEnum23);
        hashSet9.add(resultCodeEnum21);
        hashSet9.add(resultCodeEnum30);
        hashSet9.add(resultCodeEnum31);
        hashSet9.add(resultCodeEnum15);
        hashSet9.add(resultCodeEnum32);
        hashSet9.add(resultCodeEnum17);
        hashSet9.add(resultCodeEnum16);
        hashSet9.add(resultCodeEnum18);
        hashSet9.add(resultCodeEnum8);
        hashSet9.add(resultCodeEnum22);
        hashSet9.add(resultCodeEnum26);
        hashSet9.add(resultCodeEnum9);
        hashSet9.add(resultCodeEnum13);
        hashSet9.add(resultCodeEnum10);
        hashSet9.add(resultCodeEnum19);
        SEARCH_CODES = Collections.unmodifiableSet(hashSet9);
        HashSet hashSet10 = new HashSet();
        hashSet10.add(resultCodeEnum20);
        hashSet10.add(resultCodeEnum40);
        hashSet10.add(resultCodeEnum2);
        hashSet10.add(resultCodeEnum5);
        hashSet10.add(resultCodeEnum23);
        hashSet10.add(resultCodeEnum21);
        hashSet10.add(resultCodeEnum30);
        hashSet10.add(resultCodeEnum15);
        hashSet10.add(resultCodeEnum32);
        hashSet10.add(resultCodeEnum36);
        hashSet10.add(resultCodeEnum24);
        hashSet10.add(resultCodeEnum16);
        hashSet10.add(resultCodeEnum18);
        hashSet10.add(resultCodeEnum8);
        hashSet10.add(resultCodeEnum22);
        hashSet10.add(resultCodeEnum27);
        hashSet10.add(resultCodeEnum34);
        hashSet10.add(resultCodeEnum29);
        hashSet10.add(resultCodeEnum25);
        hashSet10.add(resultCodeEnum28);
        hashSet10.add(resultCodeEnum9);
        hashSet10.add(resultCodeEnum13);
        hashSet10.add(resultCodeEnum38);
        hashSet10.add(resultCodeEnum19);
        MODIFY_CODES = Collections.unmodifiableSet(hashSet10);
        HashSet hashSet11 = new HashSet();
        hashSet11.add(resultCodeEnum20);
        hashSet11.add(resultCodeEnum40);
        hashSet11.add(resultCodeEnum2);
        hashSet11.add(resultCodeEnum5);
        hashSet11.add(resultCodeEnum23);
        hashSet11.add(resultCodeEnum21);
        hashSet11.add(resultCodeEnum30);
        hashSet11.add(resultCodeEnum15);
        hashSet11.add(resultCodeEnum33);
        hashSet11.add(resultCodeEnum32);
        hashSet11.add(resultCodeEnum16);
        hashSet11.add(resultCodeEnum18);
        hashSet11.add(resultCodeEnum8);
        hashSet11.add(resultCodeEnum22);
        hashSet11.add(resultCodeEnum37);
        hashSet11.add(resultCodeEnum27);
        hashSet11.add(resultCodeEnum34);
        hashSet11.add(resultCodeEnum29);
        hashSet11.add(resultCodeEnum28);
        hashSet11.add(resultCodeEnum25);
        hashSet11.add(resultCodeEnum9);
        hashSet11.add(resultCodeEnum13);
        hashSet11.add(resultCodeEnum19);
        ADD_CODES = Collections.unmodifiableSet(hashSet11);
        HashSet hashSet12 = new HashSet();
        hashSet12.add(resultCodeEnum20);
        hashSet12.add(resultCodeEnum40);
        hashSet12.add(resultCodeEnum2);
        hashSet12.add(resultCodeEnum5);
        hashSet12.add(resultCodeEnum23);
        hashSet12.add(resultCodeEnum21);
        hashSet12.add(resultCodeEnum30);
        hashSet12.add(resultCodeEnum15);
        hashSet12.add(resultCodeEnum32);
        hashSet12.add(resultCodeEnum16);
        hashSet12.add(resultCodeEnum18);
        hashSet12.add(resultCodeEnum8);
        hashSet12.add(resultCodeEnum22);
        hashSet12.add(resultCodeEnum35);
        hashSet12.add(resultCodeEnum9);
        hashSet12.add(resultCodeEnum13);
        hashSet12.add(resultCodeEnum19);
        DELETE_CODES = Collections.unmodifiableSet(hashSet12);
        HashSet hashSet13 = new HashSet();
        hashSet13.add(resultCodeEnum20);
        hashSet13.add(resultCodeEnum40);
        hashSet13.add(resultCodeEnum2);
        hashSet13.add(resultCodeEnum5);
        hashSet13.add(resultCodeEnum23);
        hashSet13.add(resultCodeEnum21);
        hashSet13.add(resultCodeEnum30);
        hashSet13.add(resultCodeEnum15);
        hashSet13.add(resultCodeEnum32);
        hashSet13.add(resultCodeEnum33);
        hashSet13.add(resultCodeEnum16);
        hashSet13.add(resultCodeEnum37);
        hashSet13.add(resultCodeEnum18);
        hashSet13.add(resultCodeEnum8);
        hashSet13.add(resultCodeEnum22);
        hashSet13.add(resultCodeEnum35);
        hashSet13.add(resultCodeEnum39);
        hashSet13.add(resultCodeEnum27);
        hashSet13.add(resultCodeEnum34);
        hashSet13.add(resultCodeEnum9);
        hashSet13.add(resultCodeEnum13);
        hashSet13.add(resultCodeEnum19);
        MODIFYDN_CODES = Collections.unmodifiableSet(hashSet13);
        HashSet hashSet14 = new HashSet();
        hashSet14.add(resultCodeEnum14);
        hashSet14.add(resultCodeEnum15);
        hashSet14.add(resultCodeEnum16);
        hashSet14.add(resultCodeEnum3);
        hashSet14.add(resultCodeEnum4);
        hashSet14.add(resultCodeEnum8);
        hashSet14.add(resultCodeEnum18);
        hashSet14.add(resultCodeEnum19);
        hashSet14.add(resultCodeEnum9);
        hashSet14.add(resultCodeEnum24);
        hashSet14.add(resultCodeEnum29);
        hashSet14.add(resultCodeEnum30);
        hashSet14.add(resultCodeEnum32);
        hashSet14.add(resultCodeEnum13);
        hashSet14.add(resultCodeEnum20);
        hashSet14.add(resultCodeEnum21);
        hashSet14.add(resultCodeEnum22);
        hashSet14.add(resultCodeEnum23);
        hashSet14.add(resultCodeEnum5);
        hashSet14.add(resultCodeEnum40);
        COMPARE_CODES = Collections.unmodifiableSet(hashSet14);
        HashSet hashSet15 = new HashSet();
        hashSet15.add(resultCodeEnum2);
        hashSet15.add(resultCodeEnum14);
        hashSet15.add(resultCodeEnum15);
        hashSet15.add(resultCodeEnum16);
        hashSet15.add(resultCodeEnum17);
        hashSet15.add(resultCodeEnum3);
        hashSet15.add(resultCodeEnum4);
        hashSet15.add(resultCodeEnum7);
        hashSet15.add(resultCodeEnum8);
        hashSet15.add(resultCodeEnum5);
        hashSet15.add(resultCodeEnum18);
        hashSet15.add(resultCodeEnum19);
        hashSet15.add(resultCodeEnum9);
        hashSet15.add(resultCodeEnum6);
        hashSet15.add(resultCodeEnum24);
        hashSet15.add(resultCodeEnum25);
        hashSet15.add(resultCodeEnum26);
        hashSet15.add(resultCodeEnum27);
        hashSet15.add(resultCodeEnum28);
        hashSet15.add(resultCodeEnum29);
        hashSet15.add(resultCodeEnum30);
        hashSet15.add(resultCodeEnum31);
        hashSet15.add(resultCodeEnum32);
        hashSet15.add(resultCodeEnum10);
        hashSet15.add(resultCodeEnum11);
        hashSet15.add(resultCodeEnum12);
        hashSet15.add(resultCodeEnum13);
        hashSet15.add(resultCodeEnum20);
        hashSet15.add(resultCodeEnum21);
        hashSet15.add(resultCodeEnum22);
        hashSet15.add(resultCodeEnum23);
        hashSet15.add(resultCodeEnum33);
        hashSet15.add(resultCodeEnum34);
        hashSet15.add(resultCodeEnum35);
        hashSet15.add(resultCodeEnum36);
        hashSet15.add(resultCodeEnum37);
        hashSet15.add(resultCodeEnum38);
        hashSet15.add(resultCodeEnum39);
        hashSet15.add(resultCodeEnum40);
        EXTENDED_CODES = Collections.unmodifiableSet(hashSet15);
        HashSet hashSet16 = new HashSet();
        hashSet16.add(resultCodeEnum2);
        hashSet16.add(resultCodeEnum14);
        hashSet16.add(resultCodeEnum15);
        hashSet16.add(resultCodeEnum16);
        hashSet16.add(resultCodeEnum17);
        hashSet16.add(resultCodeEnum3);
        hashSet16.add(resultCodeEnum4);
        hashSet16.add(resultCodeEnum7);
        hashSet16.add(resultCodeEnum8);
        hashSet16.add(resultCodeEnum);
        hashSet16.add(resultCodeEnum5);
        hashSet16.add(resultCodeEnum18);
        hashSet16.add(resultCodeEnum19);
        hashSet16.add(resultCodeEnum9);
        hashSet16.add(resultCodeEnum6);
        hashSet16.add(resultCodeEnum24);
        hashSet16.add(resultCodeEnum25);
        hashSet16.add(resultCodeEnum26);
        hashSet16.add(resultCodeEnum27);
        hashSet16.add(resultCodeEnum28);
        hashSet16.add(resultCodeEnum29);
        hashSet16.add(resultCodeEnum30);
        hashSet16.add(resultCodeEnum31);
        hashSet16.add(resultCodeEnum32);
        hashSet16.add(resultCodeEnum10);
        hashSet16.add(resultCodeEnum11);
        hashSet16.add(resultCodeEnum12);
        hashSet16.add(resultCodeEnum13);
        hashSet16.add(resultCodeEnum20);
        hashSet16.add(resultCodeEnum21);
        hashSet16.add(resultCodeEnum22);
        hashSet16.add(resultCodeEnum23);
        hashSet16.add(resultCodeEnum33);
        hashSet16.add(resultCodeEnum34);
        hashSet16.add(resultCodeEnum35);
        hashSet16.add(resultCodeEnum36);
        hashSet16.add(resultCodeEnum37);
        hashSet16.add(resultCodeEnum38);
        hashSet16.add(resultCodeEnum39);
        hashSet16.add(resultCodeEnum40);
        ALL_CODES = Collections.unmodifiableSet(hashSet16);
        HashSet hashSet17 = new HashSet();
        hashSet17.add(resultCodeEnum14);
        hashSet17.add(resultCodeEnum31);
        hashSet17.add(resultCodeEnum10);
        hashSet17.add(resultCodeEnum23);
        hashSet17.add(resultCodeEnum39);
        hashSet17.add(resultCodeEnum40);
        NAMINGEXCEPTION_CODES = Collections.unmodifiableSet(hashSet17);
        HashSet hashSet18 = new HashSet();
        hashSet18.add(resultCodeEnum7);
        hashSet18.add(resultCodeEnum8);
        hashSet18.add(resultCodeEnum9);
        hashSet18.add(resultCodeEnum11);
        AUTHENTICATIONNOTSUPPOERTEDEXCEPTION_CODES = Collections.unmodifiableSet(hashSet18);
        HashSet hashSet19 = new HashSet();
        hashSet19.add(resultCodeEnum20);
        hashSet19.add(resultCodeEnum21);
        SERVICEUNAVAILABLE_CODES = Collections.unmodifiableSet(hashSet19);
        HashSet hashSet20 = new HashSet();
        hashSet20.add(resultCodeEnum27);
        hashSet20.add(resultCodeEnum29);
        INVALIDATTRIBUTEVALUEEXCEPTION_CODES = Collections.unmodifiableSet(hashSet20);
        HashSet hashSet21 = new HashSet();
        hashSet21.add(resultCodeEnum);
        hashSet21.add(resultCodeEnum5);
        PARTIALRESULTSEXCEPTION_CODES = Collections.unmodifiableSet(hashSet21);
        HashSet hashSet22 = new HashSet();
        hashSet22.add(resultCodeEnum5);
        hashSet22.add(resultCodeEnum18);
        LIMITEXCEEDEDEXCEPTION_CODES = Collections.unmodifiableSet(hashSet22);
        HashSet hashSet23 = new HashSet();
        hashSet23.add(resultCodeEnum19);
        hashSet23.add(resultCodeEnum22);
        OPERATIONNOTSUPPOERTEXCEPTION_CODES = Collections.unmodifiableSet(hashSet23);
        HashSet hashSet24 = new HashSet();
        hashSet24.add(resultCodeEnum32);
        hashSet24.add(resultCodeEnum33);
        INVALIDNAMEEXCEPTION_CODES = Collections.unmodifiableSet(hashSet24);
        HashSet hashSet25 = new HashSet();
        hashSet25.add(resultCodeEnum34);
        hashSet25.add(resultCodeEnum36);
        hashSet25.add(resultCodeEnum38);
        SCHEMAVIOLATIONEXCEPTION_CODES = Collections.unmodifiableSet(hashSet25);
    }

    private ResultCodeEnum(String str, int i) {
        super(str, i);
    }

    public static Set getGeneralCodes() {
        return GENERAL_CODES;
    }

    public static Set getNonErroneousCodes() {
        return NON_ERRONEOUS_CODES;
    }

    public static Set getAttributeCodes() {
        return ATTRIBUTE_CODES;
    }

    public static Set getNameCodes() {
        return NAME_CODES;
    }

    public static Set getSecurityCodes() {
        return SECURITY_CODES;
    }

    public static Set getServiceCodes() {
        return SERVICE_CODES;
    }

    public static Set getUpdateCodes() {
        return UPDATE_CODES;
    }

    public static Set getCommonCodes() {
        return COMMON_CODES;
    }

    public static Set getBindCodes() {
        return BIND_CODES;
    }

    public static Set getSearchCodes() {
        return SEARCH_CODES;
    }

    public static Set getModifyCodes() {
        return MODIFY_CODES;
    }

    public static Set getAddCodes() {
        return ADD_CODES;
    }

    public static Set getDeleteCodes() {
        return DELETE_CODES;
    }

    public static Set getModifyDnCodes() {
        return MODIFYDN_CODES;
    }

    public static Set getCompareCodes() {
        return COMPARE_CODES;
    }

    public static Set getExtendedCodes() {
        return EXTENDED_CODES;
    }

    public static Set getAllCodes() {
        return ALL_CODES;
    }

    public static ResultCodeEnum getResultCodeEnum(int i) {
        if (i != 36) {
            if (i != 71) {
                if (i != 80) {
                    switch (i) {
                        case 0:
                            return SUCCESS;
                        case 1:
                            return OPERATIONSERROR;
                        case 2:
                            return PROTOCOLERROR;
                        case 3:
                            return TIMELIMITEXCEEDED;
                        case 4:
                            return SIZELIMITEXCEEDED;
                        case 5:
                            return COMPAREFALSE;
                        case 6:
                            return COMPARETRUE;
                        case 7:
                            return AUTHMETHODNOTSUPPORTED;
                        case 8:
                            return STRONGAUTHREQUIRED;
                        case 9:
                            return PARTIALRESULTS;
                        case 10:
                            return REFERRAL;
                        case 11:
                            return ADMINLIMITEXCEEDED;
                        case 12:
                            return UNAVAILABLECRITICALEXTENSION;
                        case 13:
                            return CONFIDENTIALITYREQUIRED;
                        case 14:
                            return SASLBINDINPROGRESS;
                        default:
                            switch (i) {
                                case 16:
                                    return NOSUCHATTRIBUTE;
                                case 17:
                                    return UNDEFINEDATTRIBUTETYPE;
                                case 18:
                                    return INAPPROPRIATEMATCHING;
                                case 19:
                                    return CONSTRAINTVIOLATION;
                                case 20:
                                    return ATTRIBUTEORVALUEEXISTS;
                                case 21:
                                    return INVALIDATTRIBUTESYNTAX;
                                default:
                                    switch (i) {
                                        case 32:
                                            return NOSUCHOBJECT;
                                        case 33:
                                            return ALIASPROBLEM;
                                        case 34:
                                            return INVALIDDNSYNTAX;
                                        default:
                                            switch (i) {
                                                case 48:
                                                    return INAPPROPRIATEAUTHENTICATION;
                                                case 49:
                                                    return INVALIDCREDENTIALS;
                                                case 50:
                                                    return INSUFFICIENTACCESSRIGHTS;
                                                case 51:
                                                    return BUSY;
                                                case 52:
                                                    return UNAVAILABLE;
                                                case 53:
                                                    return UNWILLINGTOPERFORM;
                                                case 54:
                                                    return LOOPDETECT;
                                                default:
                                                    switch (i) {
                                                        case 64:
                                                            return NAMINGVIOLATION;
                                                        case 65:
                                                            return OBJECTCLASSVIOLATION;
                                                        case 66:
                                                            return NOTALLOWEDONNONLEAF;
                                                        case 67:
                                                            return NOTALLOWEDONRDN;
                                                        case 68:
                                                            return ENTRYALREADYEXISTS;
                                                        case 69:
                                                            return OBJECTCLASSMODSPROHIBITED;
                                                        default:
                                                            return null;
                                                    }
                                            }
                                    }
                            }
                    }
                }
                return OTHER;
            }
            return AFFECTSMULTIPLEDSAS;
        }
        return ALIASDEREFERENCINGPROBLEM;
    }

    public static ResultCodeEnum getBestEstimate(Throwable th, MessageTypeEnum messageTypeEnum) {
        Set resultCodes = getResultCodes(th);
        if (resultCodes.isEmpty()) {
            return OTHER;
        }
        if (resultCodes.size() == 1) {
            return (ResultCodeEnum) resultCodes.iterator().next();
        }
        if (messageTypeEnum == null) {
            HashSet hashSet = new HashSet();
            hashSet.addAll(resultCodes);
            hashSet.removeAll(NON_ERRONEOUS_CODES);
            if (hashSet.isEmpty()) {
                return OTHER;
            }
            return (ResultCodeEnum) hashSet.iterator().next();
        }
        Set set = Collections.EMPTY_SET;
        switch (messageTypeEnum.getValue()) {
            case 1073741824:
                set = intersection(resultCodes, BIND_CODES);
                break;
            case MessageTypeEnum.BINDRESPONSE_VAL /* 1073741825 */:
                set = intersection(resultCodes, BIND_CODES);
                break;
            case MessageTypeEnum.UNBINDREQUEST_VAL /* 1073741826 */:
                return (ResultCodeEnum) resultCodes.iterator().next();
            case MessageTypeEnum.SEARCHREQUEST_VAL /* 1073741827 */:
                set = intersection(resultCodes, SEARCH_CODES);
                break;
            case MessageTypeEnum.SEARCHRESENTRY_VAL /* 1073741828 */:
                set = intersection(resultCodes, SEARCH_CODES);
                break;
            case MessageTypeEnum.SEARCHRESDONE_VAL /* 1073741829 */:
                set = intersection(resultCodes, SEARCH_CODES);
                break;
            case MessageTypeEnum.MODIFYREQUEST_VAL /* 1073741830 */:
                set = intersection(resultCodes, MODIFY_CODES);
                break;
            case MessageTypeEnum.MODIFYRESPONSE_VAL /* 1073741831 */:
                set = intersection(resultCodes, MODIFY_CODES);
                break;
            case MessageTypeEnum.ADDREQUEST_VAL /* 1073741832 */:
                set = intersection(resultCodes, ADD_CODES);
                break;
            case MessageTypeEnum.ADDRESPONSE_VAL /* 1073741833 */:
                set = intersection(resultCodes, ADD_CODES);
                break;
            case MessageTypeEnum.DELREQUEST_VAL /* 1073741834 */:
                set = intersection(resultCodes, DELETE_CODES);
                break;
            case MessageTypeEnum.DELRESPONSE_VAL /* 1073741835 */:
                set = intersection(resultCodes, DELETE_CODES);
                break;
            case MessageTypeEnum.MODDNREQUEST_VAL /* 1073741836 */:
                set = intersection(resultCodes, MODIFYDN_CODES);
                break;
            case MessageTypeEnum.MODDNRESPONSE_VAL /* 1073741837 */:
                set = intersection(resultCodes, MODIFYDN_CODES);
                break;
            case MessageTypeEnum.COMPAREREQUEST_VAL /* 1073741838 */:
                set = intersection(resultCodes, COMPARE_CODES);
                break;
            case MessageTypeEnum.COMPARERESPONSE_VAL /* 1073741839 */:
                set = intersection(resultCodes, COMPARE_CODES);
                break;
            case MessageTypeEnum.ABANDONREQUEST_VAL /* 1073741840 */:
                return (ResultCodeEnum) resultCodes.iterator().next();
            case MessageTypeEnum.SEARCHRESREF_VAL /* 1073741843 */:
                set = intersection(resultCodes, SEARCH_CODES);
                break;
            case MessageTypeEnum.EXTENDEDREQ_VAL /* 1073741847 */:
                set = intersection(resultCodes, EXTENDED_CODES);
                break;
            case MessageTypeEnum.EXTENDEDRESP_VAL /* 1073741848 */:
                set = intersection(resultCodes, EXTENDED_CODES);
                break;
        }
        set.removeAll(NON_ERRONEOUS_CODES);
        if (set.isEmpty()) {
            return OTHER;
        }
        return (ResultCodeEnum) set.iterator().next();
    }

    private static Set intersection(Set set, Set set2) {
        if (set.isEmpty() || set2.isEmpty()) {
            return Collections.EMPTY_SET;
        }
        HashSet hashSet = new HashSet();
        if (set.size() <= set2.size()) {
            for (Object obj : set) {
                if (set2.contains(obj)) {
                    hashSet.add(obj);
                }
            }
        } else {
            for (Object obj2 : set2) {
                if (set.contains(obj2)) {
                    hashSet.add(obj2);
                }
            }
        }
        return hashSet;
    }

    public static Set getResultCodes(Throwable th) {
        ResultCodeEnum resultCode = getResultCode(th);
        if (resultCode != null) {
            return Collections.singleton(resultCode);
        }
        if (th instanceof SchemaViolationException) {
            return SCHEMAVIOLATIONEXCEPTION_CODES;
        }
        if (th instanceof InvalidNameException) {
            return INVALIDNAMEEXCEPTION_CODES;
        }
        if (th instanceof OperationNotSupportedException) {
            return OPERATIONNOTSUPPOERTEXCEPTION_CODES;
        }
        if (th instanceof LimitExceededException) {
            return LIMITEXCEEDEDEXCEPTION_CODES;
        }
        if (th instanceof PartialResultException) {
            return PARTIALRESULTSEXCEPTION_CODES;
        }
        if (th instanceof InvalidAttributeValueException) {
            return INVALIDATTRIBUTEVALUEEXCEPTION_CODES;
        }
        if (th instanceof ServiceUnavailableException) {
            return SERVICEUNAVAILABLE_CODES;
        }
        if (th instanceof AuthenticationNotSupportedException) {
            return AUTHENTICATIONNOTSUPPOERTEDEXCEPTION_CODES;
        }
        if (th instanceof NamingException) {
            return NAMINGEXCEPTION_CODES;
        }
        return Collections.EMPTY_SET;
    }

    public static ResultCodeEnum getResultCode(Throwable th) {
        if (th instanceof LdapException) {
            return ((LdapException) th).getResultCode();
        }
        if (th instanceof CommunicationException) {
            return PROTOCOLERROR;
        }
        if (th instanceof TimeLimitExceededException) {
            return TIMELIMITEXCEEDED;
        }
        if (th instanceof SizeLimitExceededException) {
            return SIZELIMITEXCEEDED;
        }
        if (th instanceof AuthenticationException) {
            return INVALIDCREDENTIALS;
        }
        if (th instanceof NoPermissionException) {
            return INSUFFICIENTACCESSRIGHTS;
        }
        if (th instanceof NoSuchAttributeException) {
            return NOSUCHATTRIBUTE;
        }
        if (th instanceof InvalidAttributeIdentifierException) {
            return UNDEFINEDATTRIBUTETYPE;
        }
        if (th instanceof InvalidSearchFilterException) {
            return INAPPROPRIATEMATCHING;
        }
        if (th instanceof AttributeInUseException) {
            return ATTRIBUTEORVALUEEXISTS;
        }
        if (th instanceof NameNotFoundException) {
            return NOSUCHOBJECT;
        }
        if (th instanceof NameAlreadyBoundException) {
            return ENTRYALREADYEXISTS;
        }
        if (th instanceof ContextNotEmptyException) {
            return NOTALLOWEDONNONLEAF;
        }
        return null;
    }
}
