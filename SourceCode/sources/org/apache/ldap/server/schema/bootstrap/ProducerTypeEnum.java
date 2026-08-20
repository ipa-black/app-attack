package org.apache.ldap.server.schema.bootstrap;

import java.util.List;
import java.util.Map;
import org.apache.ldap.common.util.EnumUtils;
import org.apache.ldap.common.util.ValuedEnum;
/* loaded from: classes3.dex */
public class ProducerTypeEnum extends ValuedEnum {
    public static final ProducerTypeEnum ATTRIBUTE_TYPE_PRODUCER;
    public static final int ATTRIBUTE_TYPE_PRODUCER_VAL = 5;
    public static final ProducerTypeEnum COMPARATOR_PRODUCER;
    public static final int COMPARATOR_PRODUCER_VAL = 1;
    public static final ProducerTypeEnum DIT_CONTENT_RULE_PRODUCER;
    public static final int DIT_CONTENT_RULE_PRODUCER_VAL = 8;
    public static final ProducerTypeEnum DIT_STRUCTURE_RULE_PRODUCER;
    public static final int DIT_STRUCTURE_RULE_PRODUCER_VAL = 10;
    public static final ProducerTypeEnum MATCHING_RULE_PRODUCER;
    public static final int MATCHING_RULE_PRODUCER_VAL = 4;
    public static final ProducerTypeEnum MATCHING_RULE_USE_PRODUCER;
    public static final int MATCHING_RULE_USE_PRODUCER_VAL = 7;
    public static final ProducerTypeEnum NAME_FORM_PRODUCER;
    public static final int NAME_FORM_PRODUCER_VAL = 9;
    public static final ProducerTypeEnum NORMALIZER_PRODUCER = new ProducerTypeEnum("NormalizerProducer", 0);
    public static final int NORMALIZER_PRODUCER_VAL = 0;
    public static final ProducerTypeEnum OBJECT_CLASS_PRODUCER;
    public static final int OBJECT_CLASS_PRODUCER_VAL = 6;
    public static final ProducerTypeEnum OBJECT_FACTORY_PRODUCER;
    public static final int OBJECT_FACTORY_PRODUCER_VAL = 12;
    public static final ProducerTypeEnum STATE_FACTORY_PRODUCER;
    public static final int STATE_FACTORY_PRODUCER_VAL = 11;
    public static final ProducerTypeEnum SYNTAX_CHECKER_PRODUCER;
    public static final int SYNTAX_CHECKER_PRODUCER_VAL = 2;
    public static final ProducerTypeEnum SYNTAX_PRODUCER;
    public static final int SYNTAX_PRODUCER_VAL = 3;
    static /* synthetic */ Class class$org$apache$ldap$server$schema$bootstrap$ProducerTypeEnum = null;
    private static final String[] producers;
    private static final long serialVersionUID = 3257284725524475954L;

    static {
        String[] strArr = {"NormalizerProducer", "ComparatorProducer", "SyntaxCheckerProducer", "SyntaxProducer", "MatchingRuleProducer", "AttributeTypeProducer", "ObjectClassProducer", "MatchingRuleUseProducer", "DitContentRuleProducer", "NameFormProducer", "DitStructureRuleProducer", "StateFactoryProducer", "ObjectFactoryProducer"};
        producers = strArr;
        COMPARATOR_PRODUCER = new ProducerTypeEnum(strArr[1], 1);
        SYNTAX_CHECKER_PRODUCER = new ProducerTypeEnum(strArr[2], 2);
        SYNTAX_PRODUCER = new ProducerTypeEnum(strArr[3], 3);
        MATCHING_RULE_PRODUCER = new ProducerTypeEnum(strArr[4], 4);
        ATTRIBUTE_TYPE_PRODUCER = new ProducerTypeEnum(strArr[5], 5);
        OBJECT_CLASS_PRODUCER = new ProducerTypeEnum(strArr[6], 6);
        MATCHING_RULE_USE_PRODUCER = new ProducerTypeEnum(strArr[7], 7);
        DIT_CONTENT_RULE_PRODUCER = new ProducerTypeEnum(strArr[8], 8);
        NAME_FORM_PRODUCER = new ProducerTypeEnum(strArr[9], 9);
        DIT_STRUCTURE_RULE_PRODUCER = new ProducerTypeEnum(strArr[10], 10);
        STATE_FACTORY_PRODUCER = new ProducerTypeEnum(strArr[11], 11);
        OBJECT_FACTORY_PRODUCER = new ProducerTypeEnum(strArr[12], 12);
    }

    private ProducerTypeEnum(String str, int i) {
        super(str, i);
    }

    public static ProducerTypeEnum getProducerType(String str) {
        ProducerTypeEnum producerTypeEnum = NORMALIZER_PRODUCER;
        if (str.equalsIgnoreCase(producerTypeEnum.getName())) {
            return producerTypeEnum;
        }
        ProducerTypeEnum producerTypeEnum2 = COMPARATOR_PRODUCER;
        if (str.equalsIgnoreCase(producerTypeEnum2.getName())) {
            return producerTypeEnum2;
        }
        ProducerTypeEnum producerTypeEnum3 = SYNTAX_CHECKER_PRODUCER;
        if (str.equalsIgnoreCase(producerTypeEnum3.getName())) {
            return producerTypeEnum3;
        }
        ProducerTypeEnum producerTypeEnum4 = SYNTAX_PRODUCER;
        if (str.equalsIgnoreCase(producerTypeEnum4.getName())) {
            return producerTypeEnum4;
        }
        ProducerTypeEnum producerTypeEnum5 = MATCHING_RULE_PRODUCER;
        if (str.equalsIgnoreCase(producerTypeEnum5.getName())) {
            return producerTypeEnum5;
        }
        ProducerTypeEnum producerTypeEnum6 = ATTRIBUTE_TYPE_PRODUCER;
        if (str.equalsIgnoreCase(producerTypeEnum6.getName())) {
            return producerTypeEnum6;
        }
        ProducerTypeEnum producerTypeEnum7 = OBJECT_CLASS_PRODUCER;
        if (str.equalsIgnoreCase(producerTypeEnum7.getName())) {
            return producerTypeEnum7;
        }
        ProducerTypeEnum producerTypeEnum8 = MATCHING_RULE_USE_PRODUCER;
        if (str.equalsIgnoreCase(producerTypeEnum8.getName())) {
            return producerTypeEnum8;
        }
        ProducerTypeEnum producerTypeEnum9 = DIT_CONTENT_RULE_PRODUCER;
        if (str.equalsIgnoreCase(producerTypeEnum9.getName())) {
            return producerTypeEnum9;
        }
        ProducerTypeEnum producerTypeEnum10 = NAME_FORM_PRODUCER;
        if (str.equalsIgnoreCase(producerTypeEnum10.getName())) {
            return producerTypeEnum10;
        }
        ProducerTypeEnum producerTypeEnum11 = DIT_STRUCTURE_RULE_PRODUCER;
        if (str.equalsIgnoreCase(producerTypeEnum11.getName())) {
            return producerTypeEnum11;
        }
        ProducerTypeEnum producerTypeEnum12 = STATE_FACTORY_PRODUCER;
        if (str.equalsIgnoreCase(producerTypeEnum12.getName())) {
            return producerTypeEnum12;
        }
        ProducerTypeEnum producerTypeEnum13 = OBJECT_FACTORY_PRODUCER;
        if (str.equalsIgnoreCase(producerTypeEnum13.getName())) {
            return producerTypeEnum13;
        }
        throw new IllegalArgumentException(new StringBuffer("Unknown ProducerTypeEnum string").append(str).toString());
    }

    static /* synthetic */ Class class$(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e2) {
            throw new NoClassDefFoundError(e2.getMessage());
        }
    }

    public static List list() {
        Class cls = class$org$apache$ldap$server$schema$bootstrap$ProducerTypeEnum;
        if (cls == null) {
            cls = class$("org.apache.ldap.server.schema.bootstrap.ProducerTypeEnum");
            class$org$apache$ldap$server$schema$bootstrap$ProducerTypeEnum = cls;
        }
        return EnumUtils.getEnumList(cls);
    }

    public static Map map() {
        Class cls = class$org$apache$ldap$server$schema$bootstrap$ProducerTypeEnum;
        if (cls == null) {
            cls = class$("org.apache.ldap.server.schema.bootstrap.ProducerTypeEnum");
            class$org$apache$ldap$server$schema$bootstrap$ProducerTypeEnum = cls;
        }
        return EnumUtils.getEnumMap(cls);
    }
}
