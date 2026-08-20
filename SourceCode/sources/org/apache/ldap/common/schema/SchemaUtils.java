package org.apache.ldap.common.schema;

import javax.naming.NamingException;
/* loaded from: classes3.dex */
public class SchemaUtils {
    public static StringBuffer render(StringBuffer stringBuffer, String[] strArr) {
        if (strArr != null && strArr.length != 0) {
            if (strArr.length == 1) {
                stringBuffer.append("'").append(strArr[0]).append("'");
            } else {
                stringBuffer.append("( ");
                for (String str : strArr) {
                    stringBuffer.append("'").append(str).append("' ");
                }
                stringBuffer.append(")");
            }
        }
        return stringBuffer;
    }

    public static StringBuffer render(String[] strArr) {
        return render(new StringBuffer(), strArr);
    }

    public static StringBuffer render(ObjectClass[] objectClassArr) {
        return render(new StringBuffer(), objectClassArr);
    }

    public static StringBuffer render(StringBuffer stringBuffer, ObjectClass[] objectClassArr) {
        if (objectClassArr != null && objectClassArr.length != 0) {
            int i = 0;
            if (objectClassArr.length == 1) {
                stringBuffer.append(objectClassArr[0].getName());
            } else {
                stringBuffer.append("( ");
                while (i < objectClassArr.length) {
                    int i2 = i + 1;
                    if (i2 < objectClassArr.length) {
                        stringBuffer.append(objectClassArr[i].getName()).append(" $ ");
                    } else {
                        stringBuffer.append(objectClassArr[i].getName());
                    }
                    i = i2;
                }
                stringBuffer.append(" )");
            }
        }
        return stringBuffer;
    }

    public static StringBuffer render(AttributeType[] attributeTypeArr) {
        return render(new StringBuffer(), attributeTypeArr);
    }

    public static StringBuffer render(StringBuffer stringBuffer, AttributeType[] attributeTypeArr) {
        if (attributeTypeArr != null && attributeTypeArr.length != 0) {
            int i = 0;
            if (attributeTypeArr.length == 1) {
                stringBuffer.append(attributeTypeArr[0].getName());
            } else {
                stringBuffer.append("( ");
                while (i < attributeTypeArr.length) {
                    int i2 = i + 1;
                    if (i2 < attributeTypeArr.length) {
                        stringBuffer.append(attributeTypeArr[i].getName()).append(" $ ");
                    } else {
                        stringBuffer.append(attributeTypeArr[i].getName());
                    }
                    i = i2;
                }
                stringBuffer.append(" )");
            }
        }
        return stringBuffer;
    }

    public static StringBuffer render(ObjectClass objectClass) throws NamingException {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("( ").append(objectClass.getOid()).append(" NAME ");
        render(stringBuffer, objectClass.getNames()).append(" ");
        if (objectClass.getDescription() != null) {
            stringBuffer.append("DESC ").append("'").append(objectClass.getDescription()).append("' ");
        }
        if (objectClass.isObsolete()) {
            stringBuffer.append(" OBSOLETE ");
        }
        if (objectClass.getSuperClasses() != null && objectClass.getSuperClasses().length > 0) {
            stringBuffer.append("SUP ");
            render(stringBuffer, objectClass.getSuperClasses());
        }
        if (objectClass.getType() != null) {
            stringBuffer.append(" ").append(objectClass.getType().getName());
        }
        if (objectClass.getMustList() != null) {
            stringBuffer.append(" MUST ");
            render(stringBuffer, objectClass.getMustList());
        }
        if (objectClass.getMayList() != null) {
            stringBuffer.append(" MAY ");
            render(stringBuffer, objectClass.getMayList());
        }
        stringBuffer.append(" )");
        return stringBuffer;
    }

    public static StringBuffer render(AttributeType attributeType) throws NamingException {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("( ").append(attributeType.getOid()).append(" NAME ");
        render(stringBuffer, attributeType.getNames()).append(" ");
        if (attributeType.getDescription() != null) {
            stringBuffer.append("DESC ").append("'").append(attributeType.getDescription()).append("' ");
        }
        if (attributeType.isObsolete()) {
            stringBuffer.append(" OBSOLETE");
        }
        if (attributeType.getSuperior() != null) {
            stringBuffer.append(" SUP ").append(attributeType.getSuperior().getName());
        }
        if (attributeType.getEquality() != null) {
            stringBuffer.append(" EQUALITY ").append(attributeType.getEquality().getName());
        }
        if (attributeType.getOrdering() != null) {
            stringBuffer.append(" ORDERING ").append(attributeType.getOrdering().getName());
        }
        if (attributeType.getSubstr() != null) {
            stringBuffer.append(" SUBSTR ").append(attributeType.getSubstr().getName());
        }
        if (attributeType.getSyntax() != null) {
            stringBuffer.append(" SYNTAX ").append(attributeType.getSyntax().getOid());
            if (attributeType.getLength() > 0) {
                stringBuffer.append("{").append(attributeType.getLength()).append("}");
            }
        }
        if (attributeType.isSingleValue()) {
            stringBuffer.append(" SINGLE-VALUE");
        }
        if (attributeType.isCollective()) {
            stringBuffer.append(" COLLECTIVE");
        }
        if (!attributeType.isCanUserModify()) {
            stringBuffer.append(" NO-USER-MODIFICATION");
        }
        if (attributeType.getUsage() != null) {
            stringBuffer.append(" USAGE ").append(attributeType.getUsage().getName());
        }
        stringBuffer.append(" )");
        return stringBuffer;
    }

    public static StringBuffer render(MatchingRule matchingRule) throws NamingException {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("( ").append(matchingRule.getOid()).append(" NAME ");
        render(stringBuffer, matchingRule.getNames()).append(" ");
        if (matchingRule.getDescription() != null) {
            stringBuffer.append("DESC ").append("'").append(matchingRule.getDescription()).append("' ");
        }
        if (matchingRule.isObsolete()) {
            stringBuffer.append(" OBSOLETE");
        }
        if (matchingRule.getSyntax() != null) {
            stringBuffer.append(" SYNTAX ").append(matchingRule.getSyntax().getOid());
        }
        stringBuffer.append(" )");
        return stringBuffer;
    }

    public static StringBuffer render(Syntax syntax) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("( ").append(syntax.getOid()).append(" NAME ");
        render(stringBuffer, syntax.getNames()).append(" ");
        if (syntax.getDescription() != null) {
            stringBuffer.append("DESC ").append("'").append(syntax.getDescription()).append("' ");
        }
        stringBuffer.append(" )");
        return stringBuffer;
    }

    public static StringBuffer render(MatchingRuleUse matchingRuleUse) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("( ").append(matchingRuleUse.getOid()).append(" NAME ");
        render(stringBuffer, matchingRuleUse.getNames()).append(" ");
        if (matchingRuleUse.getDescription() != null) {
            stringBuffer.append("DESC ").append("'").append(matchingRuleUse.getDescription()).append("' ");
        }
        stringBuffer.append(" )");
        return stringBuffer;
    }

    public static StringBuffer render(DITContentRule dITContentRule) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("( ").append(dITContentRule.getOid()).append(" NAME ");
        render(stringBuffer, dITContentRule.getNames()).append(" ");
        if (dITContentRule.getDescription() != null) {
            stringBuffer.append("DESC ").append("'").append(dITContentRule.getDescription()).append("' ");
        }
        stringBuffer.append(" )");
        return stringBuffer;
    }

    public static StringBuffer render(DITStructureRule dITStructureRule) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("( ").append(dITStructureRule.getOid()).append(" NAME ");
        render(stringBuffer, dITStructureRule.getNames()).append(" ");
        if (dITStructureRule.getDescription() != null) {
            stringBuffer.append("DESC ").append("'").append(dITStructureRule.getDescription()).append("' ");
        }
        stringBuffer.append(" )");
        return stringBuffer;
    }

    public static StringBuffer render(NameForm nameForm) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("( ").append(nameForm.getOid()).append(" NAME ");
        render(stringBuffer, nameForm.getNames()).append(" ");
        if (nameForm.getDescription() != null) {
            stringBuffer.append("DESC ").append("'").append(nameForm.getDescription()).append("' ");
        }
        stringBuffer.append(" )");
        return stringBuffer;
    }
}
