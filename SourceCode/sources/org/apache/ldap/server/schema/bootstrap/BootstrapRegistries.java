package org.apache.ldap.server.schema.bootstrap;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.naming.NamingException;
import org.apache.ldap.common.schema.AttributeType;
import org.apache.ldap.common.schema.MatchingRule;
import org.apache.ldap.common.schema.ObjectClass;
import org.apache.ldap.common.schema.Syntax;
import org.apache.ldap.server.schema.AttributeTypeRegistry;
import org.apache.ldap.server.schema.ComparatorRegistry;
import org.apache.ldap.server.schema.DITContentRuleRegistry;
import org.apache.ldap.server.schema.DITStructureRuleRegistry;
import org.apache.ldap.server.schema.MatchingRuleRegistry;
import org.apache.ldap.server.schema.MatchingRuleUseRegistry;
import org.apache.ldap.server.schema.NameFormRegistry;
import org.apache.ldap.server.schema.NormalizerRegistry;
import org.apache.ldap.server.schema.ObjectClassRegistry;
import org.apache.ldap.server.schema.ObjectFactoryRegistry;
import org.apache.ldap.server.schema.OidRegistry;
import org.apache.ldap.server.schema.Registries;
import org.apache.ldap.server.schema.StateFactoryRegistry;
import org.apache.ldap.server.schema.SyntaxCheckerRegistry;
import org.apache.ldap.server.schema.SyntaxRegistry;
/* loaded from: classes3.dex */
public class BootstrapRegistries implements Registries {
    private BootstrapOidRegistry oidRegistry = new BootstrapOidRegistry();
    private BootstrapNormalizerRegistry normalizerRegistry = new BootstrapNormalizerRegistry();
    private BootstrapComparatorRegistry comparatorRegistry = new BootstrapComparatorRegistry();
    private BootstrapSyntaxCheckerRegistry syntaxCheckerRegistry = new BootstrapSyntaxCheckerRegistry();
    private BootstrapSyntaxRegistry syntaxRegistry = new BootstrapSyntaxRegistry(getOidRegistry());
    private BootstrapMatchingRuleRegistry matchingRuleRegistry = new BootstrapMatchingRuleRegistry(getOidRegistry());
    private BootstrapAttributeTypeRegistry attributeTypeRegistry = new BootstrapAttributeTypeRegistry(getOidRegistry());
    private BootstrapObjectClassRegistry objectClassRegistry = new BootstrapObjectClassRegistry(getOidRegistry());
    private BootstrapDitContentRuleRegistry ditContentRuleRegistry = new BootstrapDitContentRuleRegistry(getOidRegistry());
    private BootstrapDitStructureRuleRegistry ditStructureRuleRegistry = new BootstrapDitStructureRuleRegistry(getOidRegistry());
    private BootstrapMatchingRuleUseRegistry matchingRuleUseRegistry = new BootstrapMatchingRuleUseRegistry();
    private BootstrapNameFormRegistry nameFormRegistry = new BootstrapNameFormRegistry(getOidRegistry());
    private BootstrapObjectFactoryRegistry objectFactoryRegistry = new BootstrapObjectFactoryRegistry(getOidRegistry());
    private BootstrapStateFactoryRegistry stateFactoryRegistry = new BootstrapStateFactoryRegistry();

    @Override // org.apache.ldap.server.schema.Registries
    public AttributeTypeRegistry getAttributeTypeRegistry() {
        return this.attributeTypeRegistry;
    }

    @Override // org.apache.ldap.server.schema.Registries
    public ComparatorRegistry getComparatorRegistry() {
        return this.comparatorRegistry;
    }

    @Override // org.apache.ldap.server.schema.Registries
    public DITContentRuleRegistry getDitContentRuleRegistry() {
        return this.ditContentRuleRegistry;
    }

    @Override // org.apache.ldap.server.schema.Registries
    public DITStructureRuleRegistry getDitStructureRuleRegistry() {
        return this.ditStructureRuleRegistry;
    }

    @Override // org.apache.ldap.server.schema.Registries
    public MatchingRuleRegistry getMatchingRuleRegistry() {
        return this.matchingRuleRegistry;
    }

    @Override // org.apache.ldap.server.schema.Registries
    public MatchingRuleUseRegistry getMatchingRuleUseRegistry() {
        return this.matchingRuleUseRegistry;
    }

    @Override // org.apache.ldap.server.schema.Registries
    public NameFormRegistry getNameFormRegistry() {
        return this.nameFormRegistry;
    }

    @Override // org.apache.ldap.server.schema.Registries
    public NormalizerRegistry getNormalizerRegistry() {
        return this.normalizerRegistry;
    }

    @Override // org.apache.ldap.server.schema.Registries
    public ObjectClassRegistry getObjectClassRegistry() {
        return this.objectClassRegistry;
    }

    @Override // org.apache.ldap.server.schema.Registries
    public OidRegistry getOidRegistry() {
        return this.oidRegistry;
    }

    @Override // org.apache.ldap.server.schema.Registries
    public SyntaxCheckerRegistry getSyntaxCheckerRegistry() {
        return this.syntaxCheckerRegistry;
    }

    @Override // org.apache.ldap.server.schema.Registries
    public SyntaxRegistry getSyntaxRegistry() {
        return this.syntaxRegistry;
    }

    public ObjectFactoryRegistry getObjectFactoryRegistry() {
        return this.objectFactoryRegistry;
    }

    public StateFactoryRegistry getStateFactoryRegistry() {
        return this.stateFactoryRegistry;
    }

    @Override // org.apache.ldap.server.schema.Registries
    public List checkRefInteg() {
        ArrayList arrayList = new ArrayList();
        Iterator list = this.objectClassRegistry.list();
        while (list.hasNext()) {
            resolve((ObjectClass) list.next(), arrayList);
        }
        Iterator list2 = this.attributeTypeRegistry.list();
        while (list2.hasNext()) {
            resolve((AttributeType) list2.next(), arrayList);
        }
        Iterator list3 = this.matchingRuleRegistry.list();
        while (list3.hasNext()) {
            resolve((MatchingRule) list3.next(), arrayList);
        }
        Iterator list4 = this.syntaxRegistry.list();
        while (list4.hasNext()) {
            resolve((Syntax) list4.next(), arrayList);
        }
        return arrayList;
    }

    private boolean resolve(Syntax syntax, List list) {
        if (syntax == null) {
            return true;
        }
        try {
            syntax.getSyntaxChecker();
            return true;
        } catch (NamingException e2) {
            list.add(e2);
            return false;
        }
    }

    private boolean resolve(MatchingRule matchingRule, List list) {
        boolean z = true;
        if (matchingRule == null) {
            return true;
        }
        try {
        } catch (NamingException e2) {
            list.add(e2);
        }
        if (matchingRule.getComparator() == null) {
            list.add(new NullPointerException(new StringBuffer("matchingRule ").append(matchingRule.getName()).append(" in schema ").append(this.matchingRuleRegistry.getSchemaName(matchingRule.getOid())).append(" with OID ").append(matchingRule.getOid()).append(" has a null comparator").toString()));
            z = false;
        }
        try {
        } catch (NamingException e3) {
            list.add(e3);
        }
        if (matchingRule.getNormalizer() == null) {
            list.add(new NullPointerException(new StringBuffer("matchingRule ").append(matchingRule.getName()).append(" in schema ").append(this.matchingRuleRegistry.getSchemaName(matchingRule.getOid())).append(" with OID ").append(matchingRule.getOid()).append(" has a null normalizer").toString()));
            z = false;
        }
        try {
            boolean resolve = z & resolve(matchingRule.getSyntax(), list);
            if (matchingRule.getSyntax() == null) {
                list.add(new NullPointerException(new StringBuffer("matchingRule ").append(matchingRule.getName()).append(" in schema ").append(this.matchingRuleRegistry.getSchemaName(matchingRule.getOid())).append(" with OID ").append(matchingRule.getOid()).append(" has a null Syntax").toString()));
                return false;
            }
            return resolve;
        } catch (NamingException e4) {
            list.add(e4);
            return false;
        }
    }

    private boolean resolve(AttributeType attributeType, List list) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        if (attributeType == null) {
            return true;
        }
        try {
            z = true & resolve(attributeType.getSuperior(), list);
        } catch (NamingException e2) {
            list.add(e2);
            z = false;
        }
        try {
            z2 = z & resolve(attributeType.getEquality(), list);
            attributeType.getEquality();
        } catch (NamingException e3) {
            list.add(e3);
            z2 = false;
        }
        try {
            z3 = z2 & resolve(attributeType.getOrdering(), list);
            attributeType.getOrdering();
        } catch (NamingException e4) {
            list.add(e4);
            z3 = false;
        }
        try {
            z4 = z3 & resolve(attributeType.getSubstr(), list);
            attributeType.getSubstr();
        } catch (NamingException e5) {
            list.add(e5);
            z4 = false;
        }
        try {
            boolean resolve = z4 & resolve(attributeType.getSyntax(), list);
            if (attributeType.getSyntax() == null) {
                list.add(new NullPointerException(new StringBuffer("attributeType ").append(attributeType.getName()).append(" in schema ").append(this.attributeTypeRegistry.getSchemaName(attributeType.getOid())).append(" with OID ").append(attributeType.getOid()).append(" has a null Syntax").toString()));
                return false;
            }
            return resolve;
        } catch (NamingException e6) {
            list.add(e6);
            return false;
        }
    }

    private boolean resolve(ObjectClass objectClass, List list) {
        ObjectClass[] objectClassArr;
        AttributeType[] attributeTypeArr;
        AttributeType[] attributeTypeArr2;
        boolean z = true;
        if (objectClass == null) {
            return true;
        }
        ObjectClass[] objectClassArr2 = new ObjectClass[0];
        try {
            objectClassArr = objectClass.getSuperClasses();
        } catch (NamingException e2) {
            objectClassArr = new ObjectClass[0];
            list.add(e2);
            z = false;
        }
        for (ObjectClass objectClass2 : objectClassArr) {
            z &= resolve(objectClass2, list);
        }
        AttributeType[] attributeTypeArr3 = new AttributeType[0];
        try {
            attributeTypeArr = objectClass.getMayList();
        } catch (NamingException e3) {
            attributeTypeArr = new AttributeType[0];
            list.add(e3);
            z = false;
        }
        AttributeType[] attributeTypeArr4 = attributeTypeArr;
        for (AttributeType attributeType : attributeTypeArr4) {
            z &= resolve(attributeType, list);
        }
        AttributeType[] attributeTypeArr5 = new AttributeType[0];
        try {
            attributeTypeArr2 = objectClass.getMustList();
        } catch (NamingException e4) {
            list.add(e4);
            attributeTypeArr2 = new AttributeType[0];
            z = false;
        }
        for (AttributeType attributeType2 : attributeTypeArr2) {
            z &= resolve(attributeType2, list);
        }
        return z;
    }
}
