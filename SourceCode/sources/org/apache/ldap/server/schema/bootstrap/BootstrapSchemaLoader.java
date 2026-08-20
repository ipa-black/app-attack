package org.apache.ldap.server.schema.bootstrap;

import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Stack;
import javax.naming.NamingException;
import org.apache.ldap.common.schema.AttributeType;
import org.apache.ldap.common.schema.DITContentRule;
import org.apache.ldap.common.schema.DITStructureRule;
import org.apache.ldap.common.schema.MatchingRule;
import org.apache.ldap.common.schema.MatchingRuleUse;
import org.apache.ldap.common.schema.NameForm;
import org.apache.ldap.common.schema.Normalizer;
import org.apache.ldap.common.schema.ObjectClass;
import org.apache.ldap.common.schema.Syntax;
import org.apache.ldap.common.schema.SyntaxChecker;
import org.apache.ldap.server.jndi.ServerDirObjectFactory;
import org.apache.ldap.server.jndi.ServerDirStateFactory;
/* loaded from: classes3.dex */
public class BootstrapSchemaLoader {
    private final ProducerCallback cb = new ProducerCallback() { // from class: org.apache.ldap.server.schema.bootstrap.BootstrapSchemaLoader.1
        @Override // org.apache.ldap.server.schema.bootstrap.ProducerCallback
        public void schemaObjectProduced(BootstrapProducer bootstrapProducer, String str, Object obj) throws NamingException {
            BootstrapSchemaLoader.this.register(bootstrapProducer.getType(), str, obj);
        }
    };
    private ThreadLocal schemas = new ThreadLocal();
    private ThreadLocal registries = new ThreadLocal();

    public final void load(String[] strArr, BootstrapRegistries bootstrapRegistries) throws NamingException {
        int length = strArr.length;
        BootstrapSchema[] bootstrapSchemaArr = new BootstrapSchema[length];
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = new HashMap();
        for (int i = 0; i < length; i++) {
            try {
                BootstrapSchema bootstrapSchema = (BootstrapSchema) Class.forName(strArr[i]).newInstance();
                bootstrapSchemaArr[i] = bootstrapSchema;
                hashMap2.put(bootstrapSchema.getSchemaName(), bootstrapSchemaArr[i]);
            } catch (Exception e2) {
                NamingException namingException = new NamingException(new StringBuffer("problem loading/creating ").append(strArr[i]).toString());
                namingException.setRootCause(e2);
                throw namingException;
            }
        }
        BootstrapSchema bootstrapSchema2 = (BootstrapSchema) hashMap2.get("system");
        load(bootstrapSchema2, bootstrapRegistries);
        hashMap2.remove("system");
        hashMap.put(bootstrapSchema2.getSchemaName(), bootstrapSchema2);
        for (Iterator it = hashMap2.values().iterator(); it.hasNext(); it = hashMap2.values().iterator()) {
            loadDepsFirst(new Stack(), hashMap2, (BootstrapSchema) it.next(), bootstrapRegistries);
        }
    }

    public final void loadDepsFirst(Stack stack, HashMap hashMap, BootstrapSchema bootstrapSchema, BootstrapRegistries bootstrapRegistries) throws NamingException {
        stack.push(bootstrapSchema.getSchemaName());
        String[] dependencies = bootstrapSchema.getDependencies();
        if (dependencies == null || dependencies.length == 0) {
            load(bootstrapSchema, bootstrapRegistries);
            hashMap.remove(bootstrapSchema.getSchemaName());
            stack.pop();
            return;
        }
        for (int i = 0; i < dependencies.length; i++) {
            if (hashMap.containsKey(dependencies[i])) {
                BootstrapSchema bootstrapSchema2 = (BootstrapSchema) hashMap.get(dependencies[i]);
                if (stack.contains(bootstrapSchema2.getSchemaName())) {
                    stack.push(bootstrapSchema2.getSchemaName());
                    throw new NamingException(new StringBuffer("schema dependency cycle detected: ").append(stack).toString());
                }
                loadDepsFirst(stack, hashMap, bootstrapSchema2, bootstrapRegistries);
            }
        }
        load(bootstrapSchema, bootstrapRegistries);
        hashMap.remove(bootstrapSchema.getSchemaName());
        stack.pop();
    }

    public final void load(BootstrapSchema bootstrapSchema, BootstrapRegistries bootstrapRegistries) throws NamingException {
        this.registries.set(bootstrapRegistries);
        this.schemas.set(bootstrapSchema);
        List list = ProducerTypeEnum.list();
        for (int i = 0; i < list.size(); i++) {
            getProducer(bootstrapSchema, ((ProducerTypeEnum) list.get(i)).getName()).produce(bootstrapRegistries, this.cb);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void register(ProducerTypeEnum producerTypeEnum, String str, Object obj) throws NamingException {
        BootstrapSchema bootstrapSchema = (BootstrapSchema) this.schemas.get();
        BootstrapRegistries bootstrapRegistries = (BootstrapRegistries) this.registries.get();
        switch (producerTypeEnum.getValue()) {
            case 0:
                bootstrapRegistries.getNormalizerRegistry().register(bootstrapSchema.getSchemaName(), str, (Normalizer) obj);
                return;
            case 1:
                bootstrapRegistries.getComparatorRegistry().register(bootstrapSchema.getSchemaName(), str, (Comparator) obj);
                return;
            case 2:
                bootstrapRegistries.getSyntaxCheckerRegistry().register(bootstrapSchema.getSchemaName(), str, (SyntaxChecker) obj);
                return;
            case 3:
                bootstrapRegistries.getSyntaxRegistry().register(bootstrapSchema.getSchemaName(), (Syntax) obj);
                return;
            case 4:
                bootstrapRegistries.getMatchingRuleRegistry().register(bootstrapSchema.getSchemaName(), (MatchingRule) obj);
                return;
            case 5:
                bootstrapRegistries.getAttributeTypeRegistry().register(bootstrapSchema.getSchemaName(), (AttributeType) obj);
                return;
            case 6:
                bootstrapRegistries.getObjectClassRegistry().register(bootstrapSchema.getSchemaName(), (ObjectClass) obj);
                return;
            case 7:
                bootstrapRegistries.getMatchingRuleUseRegistry().register(bootstrapSchema.getSchemaName(), (MatchingRuleUse) obj);
                return;
            case 8:
                bootstrapRegistries.getDitContentRuleRegistry().register(bootstrapSchema.getSchemaName(), (DITContentRule) obj);
                return;
            case 9:
                bootstrapRegistries.getNameFormRegistry().register(bootstrapSchema.getSchemaName(), (NameForm) obj);
                return;
            case 10:
                bootstrapRegistries.getDitStructureRuleRegistry().register(bootstrapSchema.getSchemaName(), (DITStructureRule) obj);
                return;
            case 11:
                bootstrapRegistries.getStateFactoryRegistry().register((ServerDirStateFactory) obj);
                return;
            case 12:
                bootstrapRegistries.getObjectFactoryRegistry().register((ServerDirObjectFactory) obj);
                return;
            default:
                throw new IllegalStateException("ProducerTypeEnum is broke!");
        }
    }

    private BootstrapProducer getProducer(BootstrapSchema bootstrapSchema, String str) throws NamingException {
        Class<?> cls;
        boolean z;
        String stringBuffer = new StringBuffer(String.valueOf(bootstrapSchema.getBaseClassName())).append(str).toString();
        try {
            cls = Class.forName(stringBuffer);
            z = false;
        } catch (ClassNotFoundException e2) {
            e2.printStackTrace();
            cls = null;
            z = true;
        }
        if (z) {
            String stringBuffer2 = new StringBuffer(String.valueOf(bootstrapSchema.getDefaultBaseClassName())).append(str).toString();
            try {
                cls = Class.forName(stringBuffer2);
            } catch (ClassNotFoundException e3) {
                NamingException namingException = new NamingException(new StringBuffer("Failed to load ").append(str).append(" for ").append(bootstrapSchema.getSchemaName()).append(" schema using following classes: ").append(stringBuffer).append(", ").append(stringBuffer2).toString());
                namingException.setRootCause(e3);
                throw namingException;
            }
        }
        try {
            return (BootstrapProducer) cls.newInstance();
        } catch (IllegalAccessException e4) {
            NamingException namingException2 = new NamingException(new StringBuffer("Failed to create ").append(cls).toString());
            namingException2.setRootCause(e4);
            throw namingException2;
        } catch (InstantiationException e5) {
            NamingException namingException3 = new NamingException(new StringBuffer("Failed to create ").append(cls).toString());
            namingException3.setRootCause(e5);
            throw namingException3;
        }
    }
}
