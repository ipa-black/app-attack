package org.apache.ldap.common.message;

import org.apache.ldap.common.util.ValuedEnum;
/* loaded from: classes3.dex */
public class MessageTypeEnum extends ValuedEnum {
    public static final int BINDREQUEST_VAL = 1073741824;
    public static final MessageTypeEnum BINDREQUEST = new MessageTypeEnum("BINDREQUEST", 1073741824);
    public static final int BINDRESPONSE_VAL = 1073741825;
    public static final MessageTypeEnum BINDRESPONSE = new MessageTypeEnum("BINDRESPONSE", BINDRESPONSE_VAL);
    public static final int UNBINDREQUEST_VAL = 1073741826;
    public static final MessageTypeEnum UNBINDREQUEST = new MessageTypeEnum("UNBINDREQUEST", UNBINDREQUEST_VAL);
    public static final int SEARCHREQUEST_VAL = 1073741827;
    public static final MessageTypeEnum SEARCHREQUEST = new MessageTypeEnum("SEARCHREQUEST", SEARCHREQUEST_VAL);
    public static final int SEARCHRESENTRY_VAL = 1073741828;
    public static final MessageTypeEnum SEARCHRESENTRY = new MessageTypeEnum("SEARCHRESENTRY", SEARCHRESENTRY_VAL);
    public static final int SEARCHRESDONE_VAL = 1073741829;
    public static final MessageTypeEnum SEARCHRESDONE = new MessageTypeEnum("SEARCHRESDONE", SEARCHRESDONE_VAL);
    public static final int SEARCHRESREF_VAL = 1073741843;
    public static final MessageTypeEnum SEARCHRESREF = new MessageTypeEnum("SEARCHRESREF", SEARCHRESREF_VAL);
    public static final int MODIFYREQUEST_VAL = 1073741830;
    public static final MessageTypeEnum MODIFYREQUEST = new MessageTypeEnum("MODIFYREQUEST", MODIFYREQUEST_VAL);
    public static final int MODIFYRESPONSE_VAL = 1073741831;
    public static final MessageTypeEnum MODIFYRESPONSE = new MessageTypeEnum("MODIFYRESPONSE", MODIFYRESPONSE_VAL);
    public static final int ADDREQUEST_VAL = 1073741832;
    public static final MessageTypeEnum ADDREQUEST = new MessageTypeEnum("ADDREQUEST", ADDREQUEST_VAL);
    public static final int ADDRESPONSE_VAL = 1073741833;
    public static final MessageTypeEnum ADDRESPONSE = new MessageTypeEnum("ADDRESPONSE", ADDRESPONSE_VAL);
    public static final int DELREQUEST_VAL = 1073741834;
    public static final MessageTypeEnum DELREQUEST = new MessageTypeEnum("DELREQUEST", DELREQUEST_VAL);
    public static final int DELRESPONSE_VAL = 1073741835;
    public static final MessageTypeEnum DELRESPONSE = new MessageTypeEnum("DELRESPONSE", DELRESPONSE_VAL);
    public static final int MODDNREQUEST_VAL = 1073741836;
    public static final MessageTypeEnum MODDNREQUEST = new MessageTypeEnum("MODDNREQUEST", MODDNREQUEST_VAL);
    public static final int MODDNRESPONSE_VAL = 1073741837;
    public static final MessageTypeEnum MODDNRESPONSE = new MessageTypeEnum("MODDNRESPONSE", MODDNRESPONSE_VAL);
    public static final int COMPAREREQUEST_VAL = 1073741838;
    public static final MessageTypeEnum COMPAREREQUEST = new MessageTypeEnum("COMPAREREQUEST", COMPAREREQUEST_VAL);
    public static final int COMPARERESPONSE_VAL = 1073741839;
    public static final MessageTypeEnum COMPARERESPONSE = new MessageTypeEnum("COMPARERESPONSE", COMPARERESPONSE_VAL);
    public static final int ABANDONREQUEST_VAL = 1073741840;
    public static final MessageTypeEnum ABANDONREQUEST = new MessageTypeEnum("ABANDONREQUEST", ABANDONREQUEST_VAL);
    public static final int EXTENDEDREQ_VAL = 1073741847;
    public static final MessageTypeEnum EXTENDEDREQ = new MessageTypeEnum("EXTENDEDREQ", EXTENDEDREQ_VAL);
    public static final int EXTENDEDRESP_VAL = 1073741848;
    public static final MessageTypeEnum EXTENDEDRESP = new MessageTypeEnum("EXTENDEDRESP", EXTENDEDRESP_VAL);

    private MessageTypeEnum(String str, int i) {
        super(str, i);
    }
}
