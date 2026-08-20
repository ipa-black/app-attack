package org.apache.ldap.server.schema.bootstrap;

import java.util.Comparator;
import javax.naming.NamingException;
import org.apache.ldap.common.schema.AbstractAttributeType;
import org.apache.ldap.common.schema.AbstractMatchingRule;
import org.apache.ldap.common.schema.AbstractSchemaObject;
import org.apache.ldap.common.schema.AbstractSyntax;
import org.apache.ldap.common.schema.AttributeType;
import org.apache.ldap.common.schema.MatchingRule;
import org.apache.ldap.common.schema.Normalizer;
import org.apache.ldap.common.schema.ObjectClass;
import org.apache.ldap.common.schema.ObjectClassTypeEnum;
import org.apache.ldap.common.schema.Syntax;
import org.apache.ldap.common.schema.SyntaxChecker;
import org.apache.ldap.common.schema.UsageEnum;
import org.apache.ldap.server.schema.AttributeTypeRegistry;
import org.apache.ldap.server.schema.ComparatorRegistry;
import org.apache.ldap.server.schema.MatchingRuleRegistry;
import org.apache.ldap.server.schema.NormalizerRegistry;
import org.apache.ldap.server.schema.ObjectClassRegistry;
import org.apache.ldap.server.schema.SyntaxCheckerRegistry;
import org.apache.ldap.server.schema.SyntaxRegistry;
/* loaded from: classes3.dex */
public abstract class AbstractBootstrapProducer implements BootstrapProducer {
    protected static final String[] EMPTY = new String[0];
    private final ProducerTypeEnum type;

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractBootstrapProducer(ProducerTypeEnum producerTypeEnum) {
        this.type = producerTypeEnum;
    }

    @Override // org.apache.ldap.server.schema.bootstrap.BootstrapProducer
    public ProducerTypeEnum getType() {
        return this.type;
    }

    protected static BootstrapSyntax newSyntax(String str, BootstrapRegistries bootstrapRegistries) {
        return new BootstrapSyntax(str, bootstrapRegistries.getSyntaxCheckerRegistry());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static BootstrapAttributeType newAttributeType(String str, BootstrapRegistries bootstrapRegistries) {
        return new BootstrapAttributeType(str, bootstrapRegistries);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static BootstrapObjectClass newObjectClass(String str, BootstrapRegistries bootstrapRegistries) {
        return new BootstrapObjectClass(str, bootstrapRegistries);
    }

    /* loaded from: classes3.dex */
    public static class BootstrapSyntax extends AbstractSyntax {
        final SyntaxCheckerRegistry registry;

        @Override // org.apache.ldap.common.schema.AbstractSchemaObject, org.apache.ldap.common.schema.SchemaObject
        public boolean isObsolete() {
            return false;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public BootstrapSyntax(String str, SyntaxCheckerRegistry syntaxCheckerRegistry) {
            super(str);
            this.registry = syntaxCheckerRegistry;
        }

        @Override // org.apache.ldap.common.schema.AbstractSchemaObject
        public void setDescription(String str) {
            super.setDescription(str);
        }

        @Override // org.apache.ldap.common.schema.AbstractSyntax
        public void setHumanReadible(boolean z) {
            super.setHumanReadible(z);
        }

        @Override // org.apache.ldap.common.schema.AbstractSchemaObject
        public void setNames(String[] strArr) {
            super.setNames(strArr);
        }

        @Override // org.apache.ldap.common.schema.Syntax
        public SyntaxChecker getSyntaxChecker() throws NamingException {
            return this.registry.lookup(getOid());
        }
    }

    /* loaded from: classes3.dex */
    public static class BootstrapMatchingRule extends AbstractMatchingRule {
        final ComparatorRegistry comparatorRegistry;
        final NormalizerRegistry normalizerRegistry;
        String syntaxOid;
        final SyntaxRegistry syntaxRegistry;

        /* JADX INFO: Access modifiers changed from: protected */
        public BootstrapMatchingRule(String str, BootstrapRegistries bootstrapRegistries) {
            super(str);
            this.syntaxRegistry = bootstrapRegistries.getSyntaxRegistry();
            this.normalizerRegistry = bootstrapRegistries.getNormalizerRegistry();
            this.comparatorRegistry = bootstrapRegistries.getComparatorRegistry();
        }

        @Override // org.apache.ldap.common.schema.AbstractSchemaObject
        public void setNames(String[] strArr) {
            super.setNames(strArr);
        }

        public void setSyntaxOid(String str) {
            this.syntaxOid = str;
        }

        @Override // org.apache.ldap.common.schema.AbstractSchemaObject
        public void setDescription(String str) {
            super.setDescription(str);
        }

        @Override // org.apache.ldap.common.schema.AbstractSchemaObject
        public void setObsolete(boolean z) {
            super.setObsolete(z);
        }

        @Override // org.apache.ldap.common.schema.MatchingRule
        public Syntax getSyntax() throws NamingException {
            return this.syntaxRegistry.lookup(this.syntaxOid);
        }

        @Override // org.apache.ldap.common.schema.MatchingRule
        public Comparator getComparator() throws NamingException {
            return this.comparatorRegistry.lookup(getOid());
        }

        @Override // org.apache.ldap.common.schema.MatchingRule
        public Normalizer getNormalizer() throws NamingException {
            return this.normalizerRegistry.lookup(getOid());
        }
    }

    /* loaded from: classes3.dex */
    public static class BootstrapAttributeType extends AbstractAttributeType {
        private static final long serialVersionUID = 4050205236738471984L;
        private final AttributeTypeRegistry attributeTypeRegistry;
        private String equalityId;
        private final MatchingRuleRegistry matchingRuleRegistry;
        private String orderingId;
        private String substrId;
        private String superiorId;
        private String syntaxId;
        private final SyntaxRegistry syntaxRegistry;

        protected BootstrapAttributeType(String str, BootstrapRegistries bootstrapRegistries) {
            super(str);
            this.syntaxRegistry = bootstrapRegistries.getSyntaxRegistry();
            this.matchingRuleRegistry = bootstrapRegistries.getMatchingRuleRegistry();
            this.attributeTypeRegistry = bootstrapRegistries.getAttributeTypeRegistry();
        }

        public void setSuperiorId(String str) {
            this.superiorId = str;
        }

        @Override // org.apache.ldap.common.schema.AttributeType
        public AttributeType getSuperior() throws NamingException {
            String str = this.superiorId;
            if (str == null) {
                return null;
            }
            return this.attributeTypeRegistry.lookup(str);
        }

        @Override // org.apache.ldap.common.schema.AbstractSchemaObject
        public void setNames(String[] strArr) {
            super.setNames(strArr);
        }

        @Override // org.apache.ldap.common.schema.AttributeType
        public MatchingRule getEquality() throws NamingException {
            String str = this.equalityId;
            if (str != null) {
                return this.matchingRuleRegistry.lookup(str);
            }
            if (this.superiorId != null) {
                return getSuperior().getEquality();
            }
            return null;
        }

        public void setEqualityId(String str) {
            this.equalityId = str;
        }

        @Override // org.apache.ldap.common.schema.AttributeType
        public MatchingRule getSubstr() throws NamingException {
            String str = this.substrId;
            if (str != null) {
                return this.matchingRuleRegistry.lookup(str);
            }
            if (this.superiorId != null) {
                return getSuperior().getSubstr();
            }
            return null;
        }

        public void setSubstrId(String str) {
            this.substrId = str;
        }

        @Override // org.apache.ldap.common.schema.AttributeType
        public MatchingRule getOrdering() throws NamingException {
            String str = this.orderingId;
            if (str != null) {
                return this.matchingRuleRegistry.lookup(str);
            }
            if (this.superiorId != null) {
                return getSuperior().getOrdering();
            }
            return null;
        }

        public void setOrderingId(String str) {
            this.orderingId = str;
        }

        public void setSyntaxId(String str) {
            this.syntaxId = str;
        }

        @Override // org.apache.ldap.common.schema.AttributeType
        public Syntax getSyntax() throws NamingException {
            String str = this.syntaxId;
            if (str != null) {
                return this.syntaxRegistry.lookup(str);
            }
            if (this.superiorId != null) {
                return getSuperior().getSyntax();
            }
            return null;
        }

        @Override // org.apache.ldap.common.schema.AbstractAttributeType
        public void setSingleValue(boolean z) {
            super.setSingleValue(z);
        }

        @Override // org.apache.ldap.common.schema.AbstractAttributeType
        public void setCollective(boolean z) {
            super.setCollective(z);
        }

        @Override // org.apache.ldap.common.schema.AbstractAttributeType
        public void setCanUserModify(boolean z) {
            super.setCanUserModify(z);
        }

        @Override // org.apache.ldap.common.schema.AbstractSchemaObject
        public void setObsolete(boolean z) {
            super.setObsolete(z);
        }

        @Override // org.apache.ldap.common.schema.AbstractSchemaObject
        public void setDescription(String str) {
            super.setDescription(str);
        }

        @Override // org.apache.ldap.common.schema.AbstractAttributeType
        public void setUsage(UsageEnum usageEnum) {
            super.setUsage(usageEnum);
        }

        @Override // org.apache.ldap.common.schema.AbstractAttributeType
        public void setLength(int i) {
            super.setLength(i);
        }
    }

    /* loaded from: classes3.dex */
    public static class BootstrapObjectClass extends AbstractSchemaObject implements ObjectClass {
        private final AttributeTypeRegistry attributeTypeRegistry;
        private AttributeType[] mayList;
        private String[] mayListIds;
        private AttributeType[] mustList;
        private String[] mustListIds;
        private final ObjectClassRegistry objectClassRegistry;
        private String[] superClassIds;
        private ObjectClass[] superClasses;
        private ObjectClassTypeEnum type;

        protected BootstrapObjectClass(String str, BootstrapRegistries bootstrapRegistries) {
            super(str);
            this.superClassIds = AbstractBootstrapProducer.EMPTY;
            this.type = ObjectClassTypeEnum.STRUCTURAL;
            this.mayListIds = AbstractBootstrapProducer.EMPTY;
            this.mustListIds = AbstractBootstrapProducer.EMPTY;
            this.objectClassRegistry = bootstrapRegistries.getObjectClassRegistry();
            this.attributeTypeRegistry = bootstrapRegistries.getAttributeTypeRegistry();
        }

        @Override // org.apache.ldap.common.schema.ObjectClass
        public ObjectClass[] getSuperClasses() throws NamingException {
            if (this.superClasses == null) {
                this.superClasses = new ObjectClass[this.superClassIds.length];
            }
            int i = 0;
            while (true) {
                String[] strArr = this.superClassIds;
                if (i < strArr.length) {
                    this.superClasses[i] = this.objectClassRegistry.lookup(strArr[i]);
                    i++;
                } else {
                    return this.superClasses;
                }
            }
        }

        public void setSuperClassIds(String[] strArr) {
            this.superClassIds = strArr;
        }

        @Override // org.apache.ldap.common.schema.ObjectClass
        public ObjectClassTypeEnum getType() {
            return this.type;
        }

        public void setType(ObjectClassTypeEnum objectClassTypeEnum) {
            this.type = objectClassTypeEnum;
        }

        @Override // org.apache.ldap.common.schema.ObjectClass
        public AttributeType[] getMustList() throws NamingException {
            if (this.mustList == null) {
                this.mustList = new AttributeType[this.mustListIds.length];
            }
            int i = 0;
            while (true) {
                String[] strArr = this.mustListIds;
                if (i < strArr.length) {
                    this.mustList[i] = this.attributeTypeRegistry.lookup(strArr[i]);
                    i++;
                } else {
                    return this.mustList;
                }
            }
        }

        public void setMustListIds(String[] strArr) {
            this.mustListIds = strArr;
        }

        @Override // org.apache.ldap.common.schema.ObjectClass
        public AttributeType[] getMayList() throws NamingException {
            if (this.mayList == null) {
                this.mayList = new AttributeType[this.mayListIds.length];
            }
            int i = 0;
            while (true) {
                String[] strArr = this.mayListIds;
                if (i < strArr.length) {
                    this.mayList[i] = this.attributeTypeRegistry.lookup(strArr[i]);
                    i++;
                } else {
                    return this.mayList;
                }
            }
        }

        public void setMayListIds(String[] strArr) {
            this.mayListIds = strArr;
        }

        @Override // org.apache.ldap.common.schema.AbstractSchemaObject
        public void setObsolete(boolean z) {
            super.setObsolete(z);
        }

        @Override // org.apache.ldap.common.schema.AbstractSchemaObject
        public void setNames(String[] strArr) {
            super.setNames(strArr);
        }

        @Override // org.apache.ldap.common.schema.AbstractSchemaObject
        public void setDescription(String str) {
            super.setDescription(str);
        }
    }
}
