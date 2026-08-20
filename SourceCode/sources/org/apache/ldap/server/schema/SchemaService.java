package org.apache.ldap.server.schema;

import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import javax.naming.NamingEnumeration;
import javax.naming.NamingException;
import javax.naming.directory.Attribute;
import javax.naming.directory.Attributes;
import javax.naming.directory.SearchControls;
import javax.naming.directory.SearchResult;
import javax.naming.ldap.LdapContext;
import org.apache.ldap.common.filter.ExprNode;
import org.apache.ldap.common.filter.PresenceNode;
import org.apache.ldap.common.filter.SimpleNode;
import org.apache.ldap.common.message.LockableAttributeImpl;
import org.apache.ldap.common.message.LockableAttributesImpl;
import org.apache.ldap.common.name.LdapName;
import org.apache.ldap.common.schema.AttributeType;
import org.apache.ldap.common.schema.DITContentRule;
import org.apache.ldap.common.schema.DITStructureRule;
import org.apache.ldap.common.schema.MatchingRule;
import org.apache.ldap.common.schema.MatchingRuleUse;
import org.apache.ldap.common.schema.NameForm;
import org.apache.ldap.common.schema.ObjectClass;
import org.apache.ldap.common.schema.SchemaUtils;
import org.apache.ldap.common.schema.Syntax;
import org.apache.ldap.common.util.SingletonEnumeration;
import org.apache.ldap.server.RootNexus;
import org.apache.ldap.server.db.ResultFilteringEnumeration;
import org.apache.ldap.server.db.SearchResultFilter;
import org.apache.ldap.server.interceptor.BaseInterceptor;
import org.apache.ldap.server.interceptor.InterceptorContext;
import org.apache.ldap.server.interceptor.NextInterceptor;
import org.apache.ldap.server.invocation.List;
import org.apache.ldap.server.invocation.Lookup;
import org.apache.ldap.server.invocation.LookupWithAttrIds;
import org.apache.ldap.server.invocation.Search;
import org.apache.ldap.server.jndi.JavaLdapSupport;
import org.apache.ldap.server.jndi.ServerLdapContext;
/* loaded from: classes3.dex */
public class SchemaService extends BaseInterceptor {
    private static final String BINARY_KEY = "java.naming.ldap.attributes.binary";
    private AttributeTypeRegistry attributeRegistry;
    private BinaryAttributeFilter binaryAttributeFilter;
    private GlobalRegistries globalRegistries;
    private RootNexus nexus;
    private String subentryDn;

    @Override // org.apache.ldap.server.interceptor.Interceptor
    public void destroy() {
    }

    @Override // org.apache.ldap.server.interceptor.Interceptor
    public void init(InterceptorContext interceptorContext) throws NamingException {
        this.nexus = interceptorContext.getRootNexus();
        GlobalRegistries globalRegistries = interceptorContext.getGlobalRegistries();
        this.globalRegistries = globalRegistries;
        this.attributeRegistry = globalRegistries.getAttributeTypeRegistry();
        this.binaryAttributeFilter = new BinaryAttributeFilter();
        this.subentryDn = new LdapName((String) this.nexus.getRootDSE().get("subschemaSubentry").get()).toString().toLowerCase();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.apache.ldap.server.interceptor.BaseInterceptor
    public void process(NextInterceptor nextInterceptor, List list) throws NamingException {
        nextInterceptor.process(list);
        list.setReturnValue(new ResultFilteringEnumeration((NamingEnumeration) list.getReturnValue(), new SearchControls(), (LdapContext) list.getContextStack().peek(), this.binaryAttributeFilter));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.apache.ldap.server.interceptor.BaseInterceptor
    public void process(NextInterceptor nextInterceptor, Search search) throws NamingException {
        if (!this.subentryDn.equals(search.getBaseName().toString())) {
            nextInterceptor.process(search);
            return;
        }
        SearchControls controls = search.getControls();
        ExprNode filter = search.getFilter();
        if (controls.getSearchScope() == 0 && (filter instanceof SimpleNode)) {
            SimpleNode simpleNode = (SimpleNode) filter;
            if (simpleNode.getAttribute().equalsIgnoreCase(JavaLdapSupport.OBJECTCLASS_ATTR) && simpleNode.getValue().equalsIgnoreCase("subschema") && simpleNode.getAssertionType() == 0) {
                search.setReturnValue(new SingletonEnumeration(new SearchResult(search.getBaseName().toString(), (Object) null, getSubschemaEntry(controls.getReturningAttributes()))));
            }
            nextInterceptor.process(search);
        } else {
            if (controls.getSearchScope() == 0 && (filter instanceof PresenceNode) && ((PresenceNode) filter).getAttribute().equalsIgnoreCase(JavaLdapSupport.OBJECTCLASS_ATTR)) {
                search.setReturnValue(new SingletonEnumeration(new SearchResult(search.getBaseName().toString(), (Object) null, getSubschemaEntry(controls.getReturningAttributes()))));
            }
            nextInterceptor.process(search);
        }
        if (controls.getReturningAttributes() != null) {
            return;
        }
        search.setReturnValue(new ResultFilteringEnumeration((NamingEnumeration) search.getReturnValue(), controls, (LdapContext) search.getContextStack().peek(), this.binaryAttributeFilter));
    }

    private Attributes getSubschemaEntry(String[] strArr) throws NamingException {
        if (strArr == null) {
            return new LockableAttributesImpl();
        }
        HashSet hashSet = new HashSet(strArr.length);
        LockableAttributesImpl lockableAttributesImpl = new LockableAttributesImpl();
        for (String str : strArr) {
            hashSet.add(str.toLowerCase());
        }
        if (hashSet.contains("objectclasses")) {
            LockableAttributeImpl lockableAttributeImpl = new LockableAttributeImpl(lockableAttributesImpl, "objectClasses");
            Iterator list = this.globalRegistries.getObjectClassRegistry().list();
            while (list.hasNext()) {
                lockableAttributeImpl.add(SchemaUtils.render((ObjectClass) list.next()).toString());
            }
            lockableAttributesImpl.put(lockableAttributeImpl);
        }
        if (hashSet.contains("attributetypes")) {
            LockableAttributeImpl lockableAttributeImpl2 = new LockableAttributeImpl(lockableAttributesImpl, "attributeTypes");
            Iterator list2 = this.globalRegistries.getAttributeTypeRegistry().list();
            while (list2.hasNext()) {
                lockableAttributeImpl2.add(SchemaUtils.render((AttributeType) list2.next()).toString());
            }
            lockableAttributesImpl.put(lockableAttributeImpl2);
        }
        if (hashSet.contains("matchingrules")) {
            LockableAttributeImpl lockableAttributeImpl3 = new LockableAttributeImpl(lockableAttributesImpl, "matchingRules");
            Iterator list3 = this.globalRegistries.getMatchingRuleRegistry().list();
            while (list3.hasNext()) {
                lockableAttributeImpl3.add(SchemaUtils.render((MatchingRule) list3.next()).toString());
            }
            lockableAttributesImpl.put(lockableAttributeImpl3);
        }
        if (hashSet.contains("matchingruleuse")) {
            LockableAttributeImpl lockableAttributeImpl4 = new LockableAttributeImpl(lockableAttributesImpl, "matchingRuleUse");
            Iterator list4 = this.globalRegistries.getMatchingRuleUseRegistry().list();
            while (list4.hasNext()) {
                lockableAttributeImpl4.add(SchemaUtils.render((MatchingRuleUse) list4.next()).toString());
            }
            lockableAttributesImpl.put(lockableAttributeImpl4);
        }
        if (hashSet.contains("ldapsyntaxes")) {
            LockableAttributeImpl lockableAttributeImpl5 = new LockableAttributeImpl(lockableAttributesImpl, "ldapSyntaxes");
            Iterator list5 = this.globalRegistries.getSyntaxRegistry().list();
            while (list5.hasNext()) {
                lockableAttributeImpl5.add(SchemaUtils.render((Syntax) list5.next()).toString());
            }
            lockableAttributesImpl.put(lockableAttributeImpl5);
        }
        if (hashSet.contains("ditcontentrules")) {
            LockableAttributeImpl lockableAttributeImpl6 = new LockableAttributeImpl(lockableAttributesImpl, "dITContentRules");
            Iterator list6 = this.globalRegistries.getDitContentRuleRegistry().list();
            while (list6.hasNext()) {
                lockableAttributeImpl6.add(SchemaUtils.render((DITContentRule) list6.next()).toString());
            }
            lockableAttributesImpl.put(lockableAttributeImpl6);
        }
        if (hashSet.contains("ditstructurerules")) {
            LockableAttributeImpl lockableAttributeImpl7 = new LockableAttributeImpl(lockableAttributesImpl, "dITStructureRules");
            Iterator list7 = this.globalRegistries.getDitStructureRuleRegistry().list();
            while (list7.hasNext()) {
                lockableAttributeImpl7.add(SchemaUtils.render((DITStructureRule) list7.next()).toString());
            }
            lockableAttributesImpl.put(lockableAttributeImpl7);
        }
        if (hashSet.contains("nameforms")) {
            LockableAttributeImpl lockableAttributeImpl8 = new LockableAttributeImpl(lockableAttributesImpl, "nameForms");
            Iterator list8 = this.globalRegistries.getNameFormRegistry().list();
            while (list8.hasNext()) {
                lockableAttributeImpl8.add(SchemaUtils.render((NameForm) list8.next()).toString());
            }
            lockableAttributesImpl.put(lockableAttributeImpl8);
        }
        LockableAttributeImpl lockableAttributeImpl9 = new LockableAttributeImpl(lockableAttributesImpl, JavaLdapSupport.OBJECTCLASS_ATTR);
        lockableAttributeImpl9.add(JavaLdapSupport.TOP_ATTR);
        lockableAttributeImpl9.add("subschema");
        lockableAttributesImpl.put(lockableAttributeImpl9);
        lockableAttributesImpl.put("cn", "schema");
        return lockableAttributesImpl;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.apache.ldap.server.interceptor.BaseInterceptor
    public void process(NextInterceptor nextInterceptor, Lookup lookup) throws NamingException {
        nextInterceptor.process(lookup);
        Attributes attributes = (Attributes) ((Attributes) lookup.getReturnValue()).clone();
        doFilter((ServerLdapContext) lookup.getContextStack().peek(), attributes);
        lookup.setReturnValue(attributes);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.apache.ldap.server.interceptor.BaseInterceptor
    public void process(NextInterceptor nextInterceptor, LookupWithAttrIds lookupWithAttrIds) throws NamingException {
        nextInterceptor.process(lookupWithAttrIds);
        ServerLdapContext serverLdapContext = (ServerLdapContext) lookupWithAttrIds.getContextStack().peek();
        Attributes attributes = (Attributes) lookupWithAttrIds.getReturnValue();
        if (attributes == null) {
            return;
        }
        Attributes attributes2 = (Attributes) attributes.clone();
        doFilter(serverLdapContext, attributes2);
        lookupWithAttrIds.setReturnValue(attributes2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v4, types: [java.util.Set] */
    /* JADX WARN: Type inference failed for: r9v8, types: [java.util.Set] */
    public void doFilter(LdapContext ldapContext, Attributes attributes) throws NamingException {
        HashSet hashSet;
        String str = (String) ldapContext.getEnvironment().get(BINARY_KEY);
        if (str == null) {
            hashSet = Collections.EMPTY_SET;
        } else {
            String[] split = str.split(" ");
            HashSet hashSet2 = new HashSet(split.length);
            for (String str2 : split) {
                hashSet2.add(this.attributeRegistry.lookup(str2));
            }
            hashSet = hashSet2;
        }
        NamingEnumeration iDs = attributes.getIDs();
        while (iDs.hasMore()) {
            String str3 = (String) iDs.next();
            AttributeType lookup = this.attributeRegistry.hasAttributeType(str3) ? this.attributeRegistry.lookup(str3) : null;
            if (lookup != null && ((!lookup.getSyntax().isHumanReadible()) || hashSet.contains(lookup))) {
                Attribute attribute = attributes.get(str3);
                LockableAttributeImpl lockableAttributeImpl = new LockableAttributeImpl(str3);
                for (int i = 0; i < attribute.size(); i++) {
                    Object obj = attribute.get(i);
                    if (obj instanceof String) {
                        lockableAttributeImpl.add(i, ((String) obj).getBytes());
                    } else {
                        lockableAttributeImpl.add(i, obj);
                    }
                }
                attributes.remove(str3);
                attributes.put(lockableAttributeImpl);
            }
        }
    }

    /* loaded from: classes3.dex */
    private class BinaryAttributeFilter implements SearchResultFilter {
        public BinaryAttributeFilter() {
        }

        @Override // org.apache.ldap.server.db.SearchResultFilter
        public boolean accept(LdapContext ldapContext, SearchResult searchResult, SearchControls searchControls) throws NamingException {
            SchemaService.this.doFilter(ldapContext, searchResult.getAttributes());
            return true;
        }
    }
}
