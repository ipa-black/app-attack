package org.apache.ldap.server.schema;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.naming.NamingException;
import org.apache.ldap.common.schema.AttributeType;
import org.apache.ldap.common.schema.MatchingRule;
import org.apache.ldap.common.schema.ObjectClass;
import org.apache.ldap.common.schema.Syntax;
import org.apache.ldap.server.SystemPartition;
import org.apache.ldap.server.schema.bootstrap.BootstrapAttributeTypeRegistry;
import org.apache.ldap.server.schema.bootstrap.BootstrapComparatorRegistry;
import org.apache.ldap.server.schema.bootstrap.BootstrapDitContentRuleRegistry;
import org.apache.ldap.server.schema.bootstrap.BootstrapDitStructureRuleRegistry;
import org.apache.ldap.server.schema.bootstrap.BootstrapMatchingRuleRegistry;
import org.apache.ldap.server.schema.bootstrap.BootstrapMatchingRuleUseRegistry;
import org.apache.ldap.server.schema.bootstrap.BootstrapNameFormRegistry;
import org.apache.ldap.server.schema.bootstrap.BootstrapNormalizerRegistry;
import org.apache.ldap.server.schema.bootstrap.BootstrapObjectClassRegistry;
import org.apache.ldap.server.schema.bootstrap.BootstrapOidRegistry;
import org.apache.ldap.server.schema.bootstrap.BootstrapRegistries;
import org.apache.ldap.server.schema.bootstrap.BootstrapSyntaxCheckerRegistry;
import org.apache.ldap.server.schema.bootstrap.BootstrapSyntaxRegistry;
/* loaded from: classes3.dex */
public class GlobalRegistries implements Registries {
    private GlobalAttributeTypeRegistry attributeTypeRegistry;
    private GlobalComparatorRegistry comparatorRegistry;
    private GlobalDitContentRuleRegistry ditContentRuleRegistry;
    private GlobalDitStructureRuleRegistry ditStructureRuleRegistry;
    private GlobalMatchingRuleRegistry matchingRuleRegistry;
    private GlobalMatchingRuleUseRegistry matchingRuleUseRegistry;
    private GlobalNameFormRegistry nameFormRegistry;
    private GlobalNormalizerRegistry normalizerRegistry;
    private GlobalObjectClassRegistry objectClassRegistry;
    private GlobalOidRegistry oidRegistry;
    private GlobalSyntaxCheckerRegistry syntaxCheckerRegistry;
    private GlobalSyntaxRegistry syntaxRegistry;

    public GlobalRegistries(SystemPartition systemPartition, BootstrapRegistries bootstrapRegistries) {
        this.oidRegistry = new GlobalOidRegistry(systemPartition, (BootstrapOidRegistry) bootstrapRegistries.getOidRegistry());
        this.normalizerRegistry = new GlobalNormalizerRegistry(systemPartition, (BootstrapNormalizerRegistry) bootstrapRegistries.getNormalizerRegistry());
        this.comparatorRegistry = new GlobalComparatorRegistry(systemPartition, (BootstrapComparatorRegistry) bootstrapRegistries.getComparatorRegistry());
        this.syntaxCheckerRegistry = new GlobalSyntaxCheckerRegistry(systemPartition, (BootstrapSyntaxCheckerRegistry) bootstrapRegistries.getSyntaxCheckerRegistry());
        this.syntaxRegistry = new GlobalSyntaxRegistry(systemPartition, (BootstrapSyntaxRegistry) bootstrapRegistries.getSyntaxRegistry(), this.oidRegistry);
        this.matchingRuleRegistry = new GlobalMatchingRuleRegistry(systemPartition, (BootstrapMatchingRuleRegistry) bootstrapRegistries.getMatchingRuleRegistry(), this.oidRegistry);
        this.attributeTypeRegistry = new GlobalAttributeTypeRegistry(systemPartition, (BootstrapAttributeTypeRegistry) bootstrapRegistries.getAttributeTypeRegistry(), this.oidRegistry);
        this.objectClassRegistry = new GlobalObjectClassRegistry(systemPartition, (BootstrapObjectClassRegistry) bootstrapRegistries.getObjectClassRegistry(), this.oidRegistry);
        this.ditContentRuleRegistry = new GlobalDitContentRuleRegistry(systemPartition, (BootstrapDitContentRuleRegistry) bootstrapRegistries.getDitContentRuleRegistry(), this.oidRegistry);
        this.ditStructureRuleRegistry = new GlobalDitStructureRuleRegistry(systemPartition, (BootstrapDitStructureRuleRegistry) bootstrapRegistries.getDitStructureRuleRegistry(), this.oidRegistry);
        this.matchingRuleUseRegistry = new GlobalMatchingRuleUseRegistry(systemPartition, (BootstrapMatchingRuleUseRegistry) bootstrapRegistries.getMatchingRuleUseRegistry(), this.oidRegistry);
        this.nameFormRegistry = new GlobalNameFormRegistry(systemPartition, (BootstrapNameFormRegistry) bootstrapRegistries.getNameFormRegistry(), this.oidRegistry);
    }

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
