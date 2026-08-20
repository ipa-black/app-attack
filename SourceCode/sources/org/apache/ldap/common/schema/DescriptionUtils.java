package org.apache.ldap.common.schema;

import javax.naming.NamingException;
/* loaded from: classes3.dex */
public class DescriptionUtils {
    public static String getDescription(AttributeType attributeType) throws NamingException {
        StringBuffer stringBuffer = new StringBuffer("( ");
        stringBuffer.append(attributeType.getOid());
        stringBuffer.append("\nNAME ");
        stringBuffer.append(attributeType.getName());
        stringBuffer.append('\n');
        if (attributeType.getDescription() != null) {
            stringBuffer.append("DESC ");
            stringBuffer.append(attributeType.getDescription());
            stringBuffer.append('\n');
        }
        if (attributeType.isObsolete()) {
            stringBuffer.append("OBSOLETE\n");
        }
        stringBuffer.append(attributeType.getSuperior().getOid());
        if (attributeType.getEquality() != null) {
            stringBuffer.append("EQUALITY ");
            stringBuffer.append(attributeType.getEquality().getOid());
            stringBuffer.append('\n');
        }
        if (attributeType.getOrdering() != null) {
            stringBuffer.append("ORDERING ");
            stringBuffer.append(attributeType.getOrdering().getOid());
            stringBuffer.append('\n');
        }
        if (attributeType.getSubstr() != null) {
            stringBuffer.append("SUBSTR ");
            stringBuffer.append(attributeType.getSubstr().getOid());
            stringBuffer.append('\n');
        }
        stringBuffer.append("SYNTAX ");
        stringBuffer.append(attributeType.getSyntax().getOid());
        stringBuffer.append('\n');
        if (attributeType.isSingleValue()) {
            stringBuffer.append("SINGLE-VALUE\n");
        }
        if (attributeType.isCollective()) {
            stringBuffer.append("COLLECTIVE\n");
        }
        if (attributeType.isCanUserModify()) {
            stringBuffer.append("NO-USER-MODIFICATION\n");
        }
        stringBuffer.append("USAGE ");
        stringBuffer.append(attributeType.getUsage().getName());
        stringBuffer.append(" ) ");
        return stringBuffer.toString();
    }

    public static String getDescription(DITContentRule dITContentRule) throws NamingException {
        StringBuffer stringBuffer = new StringBuffer("( ");
        stringBuffer.append(dITContentRule.getOid());
        stringBuffer.append("\nNAME ");
        stringBuffer.append(dITContentRule.getName());
        stringBuffer.append('\n');
        if (dITContentRule.getDescription() != null) {
            stringBuffer.append("DESC ");
            stringBuffer.append(dITContentRule.getDescription());
            stringBuffer.append('\n');
        }
        if (dITContentRule.isObsolete()) {
            stringBuffer.append("OBSOLETE\n");
        }
        ObjectClass[] auxObjectClasses = dITContentRule.getAuxObjectClasses();
        if (auxObjectClasses != null && auxObjectClasses.length > 0) {
            stringBuffer.append("AUX\n");
            for (ObjectClass objectClass : auxObjectClasses) {
                stringBuffer.append('\t');
                stringBuffer.append(objectClass.getOid());
                stringBuffer.append('\n');
            }
        }
        AttributeType[] mustNames = dITContentRule.getMustNames();
        if (mustNames != null && mustNames.length > 0) {
            stringBuffer.append("MUST\n");
            for (AttributeType attributeType : mustNames) {
                stringBuffer.append('\t');
                stringBuffer.append(attributeType.getOid());
                stringBuffer.append('\n');
            }
        }
        AttributeType[] mayNames = dITContentRule.getMayNames();
        if (mayNames != null && mayNames.length > 0) {
            stringBuffer.append("MAY\n");
            for (AttributeType attributeType2 : mayNames) {
                stringBuffer.append('\t');
                stringBuffer.append(attributeType2.getOid());
                stringBuffer.append('\n');
            }
        }
        AttributeType[] notNames = dITContentRule.getNotNames();
        if (notNames != null && notNames.length > 0) {
            stringBuffer.append("NOT\n");
            for (AttributeType attributeType3 : notNames) {
                stringBuffer.append('\t');
                stringBuffer.append(attributeType3.getOid());
                stringBuffer.append('\n');
            }
        }
        stringBuffer.append(" )");
        return stringBuffer.toString();
    }

    public static String getDescription(MatchingRule matchingRule) throws NamingException {
        StringBuffer stringBuffer = new StringBuffer("( ");
        stringBuffer.append(matchingRule.getOid());
        stringBuffer.append("\nNAME ");
        stringBuffer.append(matchingRule.getName());
        stringBuffer.append('\n');
        if (matchingRule.getDescription() != null) {
            stringBuffer.append("DESC ");
            stringBuffer.append(matchingRule.getDescription());
            stringBuffer.append('\n');
        }
        if (matchingRule.isObsolete()) {
            stringBuffer.append("OBSOLETE\n");
        }
        stringBuffer.append("SYNTAX ");
        stringBuffer.append(matchingRule.getSyntax().getOid());
        stringBuffer.append(" ) ");
        return stringBuffer.toString();
    }

    public static String getDescription(MatchingRuleUse matchingRuleUse) throws NamingException {
        StringBuffer stringBuffer = new StringBuffer("( ");
        stringBuffer.append(matchingRuleUse.getMatchingRule().getOid());
        stringBuffer.append("\nNAME ");
        stringBuffer.append(matchingRuleUse.getName());
        stringBuffer.append('\n');
        if (matchingRuleUse.getDescription() != null) {
            stringBuffer.append("DESC ");
            stringBuffer.append(matchingRuleUse.getDescription());
            stringBuffer.append('\n');
        }
        if (matchingRuleUse.isObsolete()) {
            stringBuffer.append("OBSOLETE\n");
        }
        stringBuffer.append("APPLIES ");
        AttributeType[] applicableAttributes = matchingRuleUse.getApplicableAttributes();
        if (applicableAttributes.length == 1) {
            stringBuffer.append(applicableAttributes[0].getOid());
        } else {
            stringBuffer.append("( ");
            stringBuffer.append(applicableAttributes[0]);
            for (int i = 1; i < applicableAttributes.length; i++) {
                stringBuffer.append(" $ ");
                stringBuffer.append(applicableAttributes[i]);
            }
            stringBuffer.append(" ) ");
        }
        stringBuffer.append('\n');
        return stringBuffer.toString();
    }

    public static String getDescription(NameForm nameForm) throws NamingException {
        StringBuffer stringBuffer = new StringBuffer("( ");
        stringBuffer.append(nameForm.getOid());
        stringBuffer.append("\nNAME ");
        stringBuffer.append(nameForm.getName());
        stringBuffer.append('\n');
        if (nameForm.getDescription() != null) {
            stringBuffer.append("DESC ");
            stringBuffer.append(nameForm.getDescription());
            stringBuffer.append('\n');
        }
        if (nameForm.isObsolete()) {
            stringBuffer.append("OBSOLETE\n");
        }
        stringBuffer.append("OC ");
        stringBuffer.append(nameForm.getObjectClass().getOid());
        stringBuffer.append("\nMUST\n");
        AttributeType[] mustUse = nameForm.getMustUse();
        for (AttributeType attributeType : mustUse) {
            stringBuffer.append('\t');
            stringBuffer.append(attributeType.getOid());
            stringBuffer.append('\n');
        }
        AttributeType[] maytUse = nameForm.getMaytUse();
        if (maytUse != null && maytUse.length > 0) {
            stringBuffer.append("MAY\n");
            for (int i = 0; i < mustUse.length; i++) {
                stringBuffer.append('\t');
                stringBuffer.append(maytUse[i].getOid());
                stringBuffer.append('\n');
            }
        }
        stringBuffer.append(" )");
        return stringBuffer.toString();
    }

    public static String getDescription(ObjectClass objectClass) throws NamingException {
        StringBuffer stringBuffer = new StringBuffer("( ");
        stringBuffer.append(objectClass.getOid());
        stringBuffer.append("\nNAME ");
        stringBuffer.append(objectClass.getName());
        stringBuffer.append('\n');
        if (objectClass.getDescription() != null) {
            stringBuffer.append("DESC ");
            stringBuffer.append(objectClass.getDescription());
            stringBuffer.append('\n');
        }
        if (objectClass.isObsolete()) {
            stringBuffer.append("OBSOLETE\n");
        }
        ObjectClass[] superClasses = objectClass.getSuperClasses();
        if (superClasses != null && superClasses.length > 0) {
            stringBuffer.append("SUP\n");
            for (ObjectClass objectClass2 : superClasses) {
                stringBuffer.append('\t');
                stringBuffer.append(objectClass2.getOid());
                stringBuffer.append('\n');
            }
        }
        if (objectClass.getType() != null) {
            stringBuffer.append(objectClass.getType().getName());
            stringBuffer.append('\n');
        }
        AttributeType[] mustList = objectClass.getMustList();
        if (mustList != null && mustList.length > 0) {
            stringBuffer.append("MUST\n");
            for (AttributeType attributeType : mustList) {
                stringBuffer.append('\t');
                stringBuffer.append(attributeType.getOid());
                stringBuffer.append('\n');
            }
        }
        AttributeType[] mayList = objectClass.getMayList();
        if (mayList != null && mayList.length > 0) {
            stringBuffer.append("MAY\n");
            for (AttributeType attributeType2 : mayList) {
                stringBuffer.append('\t');
                stringBuffer.append(attributeType2.getOid());
                stringBuffer.append('\n');
            }
        }
        stringBuffer.append(" )");
        return stringBuffer.toString();
    }

    public static String getDescription(DITStructureRule dITStructureRule) throws NamingException {
        StringBuffer stringBuffer = new StringBuffer("( ");
        stringBuffer.append(dITStructureRule.getOid());
        stringBuffer.append("\nNAME ");
        stringBuffer.append(dITStructureRule.getName());
        stringBuffer.append('\n');
        if (dITStructureRule.getDescription() != null) {
            stringBuffer.append("DESC ");
            stringBuffer.append(dITStructureRule.getDescription());
            stringBuffer.append('\n');
        }
        if (dITStructureRule.isObsolete()) {
            stringBuffer.append("OBSOLETE\n");
        }
        stringBuffer.append("FORM ");
        stringBuffer.append(dITStructureRule.getNameForm().getOid());
        stringBuffer.append('\n');
        DITStructureRule[] superClasses = dITStructureRule.getSuperClasses();
        if (superClasses != null && superClasses.length > 0) {
            stringBuffer.append("SUP\n");
            for (DITStructureRule dITStructureRule2 : superClasses) {
                stringBuffer.append('\t');
                stringBuffer.append(dITStructureRule2.getOid());
                stringBuffer.append('\n');
            }
        }
        stringBuffer.append(" )");
        return stringBuffer.toString();
    }

    public static String getDescription(Syntax syntax) {
        StringBuffer stringBuffer = new StringBuffer("( ");
        stringBuffer.append(syntax.getOid());
        stringBuffer.append('\n');
        if (syntax.getDescription() != null) {
            stringBuffer.append("DESC ");
            stringBuffer.append(syntax.getDescription());
            stringBuffer.append('\n');
        }
        stringBuffer.append(" )");
        return stringBuffer.toString();
    }
}
