package org.apache.ldap.server.schema;

import java.util.List;
/* loaded from: classes3.dex */
public interface Registries {
    List checkRefInteg();

    AttributeTypeRegistry getAttributeTypeRegistry();

    ComparatorRegistry getComparatorRegistry();

    DITContentRuleRegistry getDitContentRuleRegistry();

    DITStructureRuleRegistry getDitStructureRuleRegistry();

    MatchingRuleRegistry getMatchingRuleRegistry();

    MatchingRuleUseRegistry getMatchingRuleUseRegistry();

    NameFormRegistry getNameFormRegistry();

    NormalizerRegistry getNormalizerRegistry();

    ObjectClassRegistry getObjectClassRegistry();

    OidRegistry getOidRegistry();

    SyntaxCheckerRegistry getSyntaxCheckerRegistry();

    SyntaxRegistry getSyntaxRegistry();
}
