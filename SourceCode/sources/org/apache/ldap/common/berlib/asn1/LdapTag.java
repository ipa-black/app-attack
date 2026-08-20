package org.apache.ldap.common.berlib.asn1;

import org.apache.asn1.ber.TagEnum;
import org.apache.asn1.ber.primitives.ContextSpecificTag;
/* loaded from: classes3.dex */
public class LdapTag extends TagEnum {
    static final int ABANDON_REQUEST_ID = 16;
    static final int ADD_REQUEST_ID = 8;
    static final int ADD_RESPONSE_ID = 9;
    static final int BIND_REQUEST_ID = 0;
    static final int BIND_RESPONSE_ID = 1;
    static final int COMPARE_REQUEST_ID = 14;
    static final int COMPARE_RESPONSE_ID = 15;
    public static final ContextSpecificTag CONTEXT_SPECIFIC_TAG_0;
    public static final ContextSpecificTag CONTEXT_SPECIFIC_TAG_1;
    public static final ContextSpecificTag CONTEXT_SPECIFIC_TAG_2;
    public static final ContextSpecificTag CONTEXT_SPECIFIC_TAG_3;
    public static final ContextSpecificTag CONTEXT_SPECIFIC_TAG_4;
    public static final ContextSpecificTag CONTEXT_SPECIFIC_TAG_5;
    public static final ContextSpecificTag CONTEXT_SPECIFIC_TAG_6;
    public static final ContextSpecificTag CONTEXT_SPECIFIC_TAG_7;
    public static final ContextSpecificTag CONTEXT_SPECIFIC_TAG_9;
    static final int DEL_REQUEST_ID = 10;
    static final int DEL_RESPONSE_ID = 11;
    static final int EXTENDED_REQUEST_ID = 23;
    public static final ContextSpecificTag EXTENDED_REQUEST_NAME_TAG;
    public static final ContextSpecificTag EXTENDED_REQUEST_VALUE_TAG;
    static final int EXTENDED_RESPONSE_ID = 24;
    public static final ContextSpecificTag EXTENDED_RESPONSE_NAME_TAG;
    public static final ContextSpecificTag EXTENDED_RESPONSE_VALUE_TAG;
    public static final ContextSpecificTag GREATER_OR_EQUAL_TAG;
    static final int MODIFYDN_REQUEST_ID = 12;
    public static final ContextSpecificTag MODIFYDN_REQUEST_NEWSUP_TAG;
    static final int MODIFYDN_RESPONSE_ID = 13;
    static final int MODIFY_REQUEST_ID = 6;
    static final int MODIFY_RESPONSE_ID = 7;
    public static final ContextSpecificTag REFERRAL_TAG;
    public static final ContextSpecificTag SEARCH_REQUEST_EQUALITY_MATH_TAG;
    static final int SEARCH_REQUEST_ID = 3;
    static final int SEARCH_RESULT_DONE_ID = 5;
    static final int SEARCH_RESULT_ENTRY_ID = 4;
    static final int SEARCH_RESULT_REFERENCE_ID = 19;
    public static final ContextSpecificTag SERVER_SASL_CREDS_TAG;
    static final int UNBIND_REQUEST_ID = 2;
    private static final int BIND_REQUEST_TAG = 1610612736;
    public static final LdapTag BIND_REQUEST = new LdapTag("BIND_REQUEST", BIND_REQUEST_TAG, 0);
    private static final int BIND_RESPONSE_TAG = 1090519040;
    public static final LdapTag BIND_RESPONSE = new LdapTag("BIND_RESPONSE", BIND_RESPONSE_TAG, 1);
    private static final int UNBIND_REQUEST_TAG = 1107296256;
    public static final LdapTag UNBIND_REQUEST = new LdapTag("UNBIND_REQUEST", UNBIND_REQUEST_TAG, 2);
    private static final int SEARCH_REQUEST_TAG = 1660944384;
    public static final LdapTag SEARCH_REQUEST = new LdapTag("SEARCH_REQUEST", SEARCH_REQUEST_TAG, 3);
    private static final int SEARCH_RESULT_DONE_TAG = 1694498816;
    public static final LdapTag SEARCH_RESULT_DONE = new LdapTag("SEARCH_RESULT_DONE", SEARCH_RESULT_DONE_TAG, 5);
    private static final int SEARCH_RESULT_ENTRY_TAG = 1677721600;
    public static final LdapTag SEARCH_RESULT_ENTRY = new LdapTag("SEARCH_RESULT_ENTRY", SEARCH_RESULT_ENTRY_TAG, 4);
    private static final int SEARCH_RESULT_REFERENCE_TAG = 1929379840;
    public static final LdapTag SEARCH_RESULT_REFERENCE = new LdapTag("SEARCH_RESULT_REFERENCE", SEARCH_RESULT_REFERENCE_TAG, 19);
    private static final int MODIFY_REQUEST_TAG = 1711276032;
    public static final LdapTag MODIFY_REQUEST = new LdapTag("MODIFY_REQUEST", MODIFY_REQUEST_TAG, 6);
    private static final int MODIFY_RESPONSE_TAG = 1728053248;
    public static final LdapTag MODIFY_RESPONSE = new LdapTag("MODIFY_RESPONSE", MODIFY_RESPONSE_TAG, 7);
    private static final int ADD_REQUEST_TAG = 1744830464;
    public static final LdapTag ADD_REQUEST = new LdapTag("ADD_REQUEST", ADD_REQUEST_TAG, 8);
    private static final int ADD_RESPONSE_TAG = 1761607680;
    public static final LdapTag ADD_RESPONSE = new LdapTag("ADD_RESPONSE", ADD_RESPONSE_TAG, 9);
    private static final int DEL_REQUEST_TAG = 1241513984;
    public static final LdapTag DEL_REQUEST = new LdapTag("DEL_REQUEST", DEL_REQUEST_TAG, 10);
    private static final int DEL_RESPONSE_TAG = 1795162112;
    public static final LdapTag DEL_RESPONSE = new LdapTag("DEL_RESPONSE", DEL_RESPONSE_TAG, 11);
    private static final int MODIFYDN_REQUEST_TAG = 1811939328;
    public static final LdapTag MODIFYDN_REQUEST = new LdapTag("MODIFYDN_REQUEST", MODIFYDN_REQUEST_TAG, 12);
    private static final int MODIFYDN_RESPONSE_TAG = 1828716544;
    public static final LdapTag MODIFYDN_RESPONSE = new LdapTag("MODIFYDN_RESPONSE", MODIFYDN_RESPONSE_TAG, 13);
    private static final int COMPARE_REQUEST_TAG = 1845493760;
    public static final LdapTag COMPARE_REQUEST = new LdapTag("COMPARE_REQUEST", COMPARE_REQUEST_TAG, 14);
    private static final int COMPARE_RESPONSE_TAG = 1862270976;
    public static final LdapTag COMPARE_RESPONSE = new LdapTag("COMPARE_RESPONSE", COMPARE_RESPONSE_TAG, 15);
    private static final int ABANDON_REQUEST_TAG = 1342177280;
    public static final LdapTag ABANDON_REQUEST = new LdapTag("ABANDON_REQUEST", ABANDON_REQUEST_TAG, 16);
    private static final int EXTENDED_REQUEST_TAG = 1996488704;
    public static final LdapTag EXTENDED_REQUEST = new LdapTag("EXTENDED_REQUEST", EXTENDED_REQUEST_TAG, 23);
    private static final int EXTENDED_RESPONSE_TAG = 2013265920;
    public static final LdapTag EXTENDED_RESPONSE = new LdapTag("EXTENDED_RESPONSE", EXTENDED_RESPONSE_TAG, 24);
    public static final ContextSpecificTag CONTEXT_SPECIFIC_TAG_11 = new ContextSpecificTag(11, true);
    public static final ContextSpecificTag CONTEXT_SPECIFIC_TAG_10 = new ContextSpecificTag(10, true);
    public static final ContextSpecificTag CONTEXT_SPECIFIC_TAG_8 = new ContextSpecificTag(8, true);

    static {
        ContextSpecificTag contextSpecificTag = new ContextSpecificTag(7, true);
        CONTEXT_SPECIFIC_TAG_7 = contextSpecificTag;
        CONTEXT_SPECIFIC_TAG_6 = new ContextSpecificTag(6, true);
        ContextSpecificTag contextSpecificTag2 = new ContextSpecificTag(5, true);
        CONTEXT_SPECIFIC_TAG_5 = contextSpecificTag2;
        GREATER_OR_EQUAL_TAG = contextSpecificTag2;
        ContextSpecificTag contextSpecificTag3 = new ContextSpecificTag(3, true);
        CONTEXT_SPECIFIC_TAG_3 = contextSpecificTag3;
        REFERRAL_TAG = contextSpecificTag3;
        SERVER_SASL_CREDS_TAG = contextSpecificTag;
        ContextSpecificTag contextSpecificTag4 = new ContextSpecificTag(0, false);
        CONTEXT_SPECIFIC_TAG_0 = contextSpecificTag4;
        EXTENDED_REQUEST_NAME_TAG = contextSpecificTag4;
        EXTENDED_RESPONSE_NAME_TAG = new ContextSpecificTag(10, false);
        EXTENDED_RESPONSE_VALUE_TAG = new ContextSpecificTag(11, false);
        MODIFYDN_REQUEST_NEWSUP_TAG = contextSpecificTag4;
        SEARCH_REQUEST_EQUALITY_MATH_TAG = contextSpecificTag3;
        CONTEXT_SPECIFIC_TAG_4 = new ContextSpecificTag(4, true);
        ContextSpecificTag contextSpecificTag5 = new ContextSpecificTag(1, true);
        CONTEXT_SPECIFIC_TAG_1 = contextSpecificTag5;
        EXTENDED_REQUEST_VALUE_TAG = contextSpecificTag5;
        CONTEXT_SPECIFIC_TAG_2 = new ContextSpecificTag(2, true);
        CONTEXT_SPECIFIC_TAG_9 = new ContextSpecificTag(9, true);
    }

    private LdapTag(String str, int i, int i2) {
        super(str, i, i2);
    }

    public static LdapTag getLdapTag(int i) {
        String stringBuffer;
        switch (i) {
            case BIND_RESPONSE_TAG /* 1090519040 */:
                return BIND_RESPONSE;
            case UNBIND_REQUEST_TAG /* 1107296256 */:
                return UNBIND_REQUEST;
            case DEL_REQUEST_TAG /* 1241513984 */:
                return DEL_REQUEST;
            case ABANDON_REQUEST_TAG /* 1342177280 */:
                return ABANDON_REQUEST;
            case BIND_REQUEST_TAG /* 1610612736 */:
                return BIND_REQUEST;
            case SEARCH_REQUEST_TAG /* 1660944384 */:
                return SEARCH_REQUEST;
            case SEARCH_RESULT_ENTRY_TAG /* 1677721600 */:
                return SEARCH_RESULT_ENTRY;
            case SEARCH_RESULT_DONE_TAG /* 1694498816 */:
                return SEARCH_RESULT_DONE;
            case MODIFY_REQUEST_TAG /* 1711276032 */:
                return MODIFY_REQUEST;
            case MODIFY_RESPONSE_TAG /* 1728053248 */:
                return MODIFY_RESPONSE;
            case ADD_REQUEST_TAG /* 1744830464 */:
                return ADD_REQUEST;
            case ADD_RESPONSE_TAG /* 1761607680 */:
                return ADD_RESPONSE;
            case DEL_RESPONSE_TAG /* 1795162112 */:
                return DEL_RESPONSE;
            case MODIFYDN_REQUEST_TAG /* 1811939328 */:
                return MODIFYDN_REQUEST;
            case MODIFYDN_RESPONSE_TAG /* 1828716544 */:
                return MODIFYDN_RESPONSE;
            case COMPARE_REQUEST_TAG /* 1845493760 */:
                return COMPARE_REQUEST;
            case COMPARE_RESPONSE_TAG /* 1862270976 */:
                return COMPARE_RESPONSE;
            case SEARCH_RESULT_REFERENCE_TAG /* 1929379840 */:
                return SEARCH_RESULT_REFERENCE;
            case EXTENDED_REQUEST_TAG /* 1996488704 */:
                return EXTENDED_REQUEST;
            case EXTENDED_RESPONSE_TAG /* 2013265920 */:
                return EXTENDED_RESPONSE;
            default:
                if (i < 10000 && i > -1) {
                    stringBuffer = "Looks like you're using an id instead of a tag";
                } else {
                    stringBuffer = new StringBuffer("Tag value of ").append(i).append(" not recognized").toString();
                }
                throw new IllegalArgumentException(stringBuffer);
        }
    }

    public static LdapTag getLdapTagById(int i) {
        String str;
        if (i != 19) {
            if (i != 23) {
                if (i != 24) {
                    switch (i) {
                        case 0:
                            return BIND_REQUEST;
                        case 1:
                            return BIND_RESPONSE;
                        case 2:
                            return UNBIND_REQUEST;
                        case 3:
                            return SEARCH_REQUEST;
                        case 4:
                            return SEARCH_RESULT_ENTRY;
                        case 5:
                            return SEARCH_RESULT_DONE;
                        case 6:
                            return MODIFY_REQUEST;
                        case 7:
                            return MODIFY_RESPONSE;
                        case 8:
                            return ADD_REQUEST;
                        case 9:
                            return ADD_RESPONSE;
                        case 10:
                            return DEL_REQUEST;
                        case 11:
                            return DEL_RESPONSE;
                        case 12:
                            return MODIFYDN_REQUEST;
                        case 13:
                            return MODIFYDN_RESPONSE;
                        case 14:
                            return COMPARE_REQUEST;
                        case 15:
                            return COMPARE_RESPONSE;
                        case 16:
                            return ABANDON_REQUEST;
                        default:
                            if (i > 10000 || i < 0) {
                                str = "Looks like you're using a tag instead of an id";
                            } else {
                                str = new StringBuffer("Id of ").append(i).append(" not recognized as a LDAPv3 id").toString();
                            }
                            throw new IllegalArgumentException(str);
                    }
                }
                return EXTENDED_RESPONSE;
            }
            return EXTENDED_REQUEST;
        }
        return SEARCH_RESULT_REFERENCE;
    }
}
