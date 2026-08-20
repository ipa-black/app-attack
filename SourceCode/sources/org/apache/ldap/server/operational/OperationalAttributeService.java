package org.apache.ldap.server.operational;

import java.util.HashSet;
import javax.naming.Context;
import javax.naming.Name;
import javax.naming.NamingEnumeration;
import javax.naming.NamingException;
import javax.naming.directory.Attributes;
import javax.naming.directory.BasicAttribute;
import javax.naming.directory.BasicAttributes;
import javax.naming.directory.SearchControls;
import javax.naming.directory.SearchResult;
import javax.naming.ldap.LdapContext;
import org.apache.ldap.common.schema.AttributeType;
import org.apache.ldap.common.schema.UsageEnum;
import org.apache.ldap.common.util.DateUtils;
import org.apache.ldap.server.ContextPartition;
import org.apache.ldap.server.RootNexus;
import org.apache.ldap.server.db.Database;
import org.apache.ldap.server.db.ResultFilteringEnumeration;
import org.apache.ldap.server.db.SearchResultFilter;
import org.apache.ldap.server.interceptor.BaseInterceptor;
import org.apache.ldap.server.interceptor.InterceptorContext;
import org.apache.ldap.server.interceptor.NextInterceptor;
import org.apache.ldap.server.invocation.Add;
import org.apache.ldap.server.invocation.List;
import org.apache.ldap.server.invocation.Lookup;
import org.apache.ldap.server.invocation.LookupWithAttrIds;
import org.apache.ldap.server.invocation.Modify;
import org.apache.ldap.server.invocation.ModifyMany;
import org.apache.ldap.server.invocation.ModifyRN;
import org.apache.ldap.server.invocation.Move;
import org.apache.ldap.server.invocation.MoveAndModifyRN;
import org.apache.ldap.server.invocation.Search;
import org.apache.ldap.server.jndi.ProviderNexusAspect;
import org.apache.ldap.server.schema.AttributeTypeRegistry;
/* loaded from: classes3.dex */
public class OperationalAttributeService extends BaseInterceptor {
    private final SearchResultFilter SEARCH_FILTER = new SearchResultFilter() { // from class: org.apache.ldap.server.operational.OperationalAttributeService.1
        @Override // org.apache.ldap.server.db.SearchResultFilter
        public boolean accept(LdapContext ldapContext, SearchResult searchResult, SearchControls searchControls) throws NamingException {
            if (searchControls.getReturningAttributes() == null) {
                return OperationalAttributeService.this.filter(searchResult.getAttributes());
            }
            return true;
        }
    };
    private RootNexus nexus;
    private AttributeTypeRegistry registry;

    @Override // org.apache.ldap.server.interceptor.Interceptor
    public void destroy() {
    }

    @Override // org.apache.ldap.server.interceptor.Interceptor
    public void init(InterceptorContext interceptorContext) throws NamingException {
        this.nexus = interceptorContext.getRootNexus();
        this.registry = interceptorContext.getGlobalRegistries().getAttributeTypeRegistry();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.apache.ldap.server.interceptor.BaseInterceptor
    public void process(NextInterceptor nextInterceptor, Add add) throws NamingException {
        String name = BaseInterceptor.getPrincipal(add).getName();
        Attributes attributes = add.getAttributes();
        BasicAttribute basicAttribute = new BasicAttribute("creatorsName");
        basicAttribute.add(name);
        attributes.put(basicAttribute);
        BasicAttribute basicAttribute2 = new BasicAttribute("createTimestamp");
        basicAttribute2.add(DateUtils.getGeneralizedTime());
        attributes.put(basicAttribute2);
        nextInterceptor.process(add);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.apache.ldap.server.interceptor.BaseInterceptor
    public void process(NextInterceptor nextInterceptor, Modify modify) throws NamingException {
        boolean z;
        boolean z2;
        nextInterceptor.process(modify);
        Attributes basicAttributes = new BasicAttributes();
        BasicAttribute basicAttribute = new BasicAttribute("modifiersName");
        basicAttribute.add(BaseInterceptor.getPrincipal(modify).getName());
        basicAttributes.put(basicAttribute);
        BasicAttribute basicAttribute2 = new BasicAttribute("modifyTimestamp");
        basicAttribute2.add(DateUtils.getGeneralizedTime());
        basicAttributes.put(basicAttribute2);
        RootNexus rootNexus = this.nexus;
        Name name = modify.getName();
        try {
            if ((this instanceof Context) && !(this instanceof ContextPartition) && !(rootNexus instanceof Database)) {
                ProviderNexusAspect.aspectOf().ajc$before$org_apache_ldap_server_jndi_ProviderNexusAspect$1$1ba52095((Context) this);
            }
            rootNexus.modify(name, 2, basicAttributes);
            if (z) {
                if (z2) {
                    return;
                }
            }
        } finally {
            if ((this instanceof Context) && !(this instanceof ContextPartition) && !(rootNexus instanceof Database)) {
                ProviderNexusAspect.aspectOf().ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095((Context) this);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.apache.ldap.server.interceptor.BaseInterceptor
    public void process(NextInterceptor nextInterceptor, ModifyMany modifyMany) throws NamingException {
        boolean z;
        boolean z2;
        nextInterceptor.process(modifyMany);
        Attributes basicAttributes = new BasicAttributes();
        BasicAttribute basicAttribute = new BasicAttribute("modifiersName");
        basicAttribute.add(BaseInterceptor.getPrincipal(modifyMany).getName());
        basicAttributes.put(basicAttribute);
        BasicAttribute basicAttribute2 = new BasicAttribute("modifyTimestamp");
        basicAttribute2.add(DateUtils.getGeneralizedTime());
        basicAttributes.put(basicAttribute2);
        RootNexus rootNexus = this.nexus;
        Name name = modifyMany.getName();
        try {
            if ((this instanceof Context) && !(this instanceof ContextPartition) && !(rootNexus instanceof Database)) {
                ProviderNexusAspect.aspectOf().ajc$before$org_apache_ldap_server_jndi_ProviderNexusAspect$1$1ba52095((Context) this);
            }
            rootNexus.modify(name, 2, basicAttributes);
            if (z) {
                if (z2) {
                    return;
                }
            }
        } finally {
            if ((this instanceof Context) && !(this instanceof ContextPartition) && !(rootNexus instanceof Database)) {
                ProviderNexusAspect.aspectOf().ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095((Context) this);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.apache.ldap.server.interceptor.BaseInterceptor
    public void process(NextInterceptor nextInterceptor, ModifyRN modifyRN) throws NamingException {
        boolean z;
        boolean z2;
        nextInterceptor.process(modifyRN);
        Attributes basicAttributes = new BasicAttributes();
        BasicAttribute basicAttribute = new BasicAttribute("modifiersName");
        basicAttribute.add(BaseInterceptor.getPrincipal(modifyRN).getName());
        basicAttributes.put(basicAttribute);
        BasicAttribute basicAttribute2 = new BasicAttribute("modifyTimestamp");
        basicAttribute2.add(DateUtils.getGeneralizedTime());
        basicAttributes.put(basicAttribute2);
        Name add = modifyRN.getName().getSuffix(1).add(modifyRN.getNewRelativeName());
        RootNexus rootNexus = this.nexus;
        try {
            if ((this instanceof Context) && !(this instanceof ContextPartition) && !(rootNexus instanceof Database)) {
                ProviderNexusAspect.aspectOf().ajc$before$org_apache_ldap_server_jndi_ProviderNexusAspect$1$1ba52095((Context) this);
            }
            rootNexus.modify(add, 2, basicAttributes);
            if (z) {
                if (z2) {
                    return;
                }
            }
        } finally {
            if ((this instanceof Context) && !(this instanceof ContextPartition) && !(rootNexus instanceof Database)) {
                ProviderNexusAspect.aspectOf().ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095((Context) this);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.apache.ldap.server.interceptor.BaseInterceptor
    public void process(NextInterceptor nextInterceptor, Move move) throws NamingException {
        boolean z;
        boolean z2;
        nextInterceptor.process(move);
        Attributes basicAttributes = new BasicAttributes();
        BasicAttribute basicAttribute = new BasicAttribute("modifiersName");
        basicAttribute.add(BaseInterceptor.getPrincipal(move).getName());
        basicAttributes.put(basicAttribute);
        BasicAttribute basicAttribute2 = new BasicAttribute("modifyTimestamp");
        basicAttribute2.add(DateUtils.getGeneralizedTime());
        basicAttributes.put(basicAttribute2);
        RootNexus rootNexus = this.nexus;
        Name newParentName = move.getNewParentName();
        try {
            if ((this instanceof Context) && !(this instanceof ContextPartition) && !(rootNexus instanceof Database)) {
                ProviderNexusAspect.aspectOf().ajc$before$org_apache_ldap_server_jndi_ProviderNexusAspect$1$1ba52095((Context) this);
            }
            rootNexus.modify(newParentName, 2, basicAttributes);
            if (z) {
                if (z2) {
                    return;
                }
            }
        } finally {
            if ((this instanceof Context) && !(this instanceof ContextPartition) && !(rootNexus instanceof Database)) {
                ProviderNexusAspect.aspectOf().ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095((Context) this);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.apache.ldap.server.interceptor.BaseInterceptor
    public void process(NextInterceptor nextInterceptor, MoveAndModifyRN moveAndModifyRN) throws NamingException {
        boolean z;
        boolean z2;
        nextInterceptor.process(moveAndModifyRN);
        Attributes basicAttributes = new BasicAttributes();
        BasicAttribute basicAttribute = new BasicAttribute("modifiersName");
        basicAttribute.add(BaseInterceptor.getPrincipal(moveAndModifyRN).getName());
        basicAttributes.put(basicAttribute);
        BasicAttribute basicAttribute2 = new BasicAttribute("modifyTimestamp");
        basicAttribute2.add(DateUtils.getGeneralizedTime());
        basicAttributes.put(basicAttribute2);
        RootNexus rootNexus = this.nexus;
        Name newParentName = moveAndModifyRN.getNewParentName();
        try {
            if ((this instanceof Context) && !(this instanceof ContextPartition) && !(rootNexus instanceof Database)) {
                ProviderNexusAspect.aspectOf().ajc$before$org_apache_ldap_server_jndi_ProviderNexusAspect$1$1ba52095((Context) this);
            }
            rootNexus.modify(newParentName, 2, basicAttributes);
            if (z) {
                if (z2) {
                    return;
                }
            }
        } finally {
            if ((this instanceof Context) && !(this instanceof ContextPartition) && !(rootNexus instanceof Database)) {
                ProviderNexusAspect.aspectOf().ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095((Context) this);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.apache.ldap.server.interceptor.BaseInterceptor
    public void process(NextInterceptor nextInterceptor, Lookup lookup) throws NamingException {
        nextInterceptor.process(lookup);
        Attributes attributes = (Attributes) ((Attributes) lookup.getReturnValue()).clone();
        filter(attributes);
        lookup.setReturnValue(attributes);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.apache.ldap.server.interceptor.BaseInterceptor
    public void process(NextInterceptor nextInterceptor, LookupWithAttrIds lookupWithAttrIds) throws NamingException {
        nextInterceptor.process(lookupWithAttrIds);
        Attributes attributes = (Attributes) lookupWithAttrIds.getReturnValue();
        if (attributes == null) {
            return;
        }
        Attributes attributes2 = (Attributes) attributes.clone();
        filter(lookupWithAttrIds.getName(), attributes2, lookupWithAttrIds.getAttributeIds());
        lookupWithAttrIds.setReturnValue(attributes2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.apache.ldap.server.interceptor.BaseInterceptor
    public void process(NextInterceptor nextInterceptor, List list) throws NamingException {
        nextInterceptor.process(list);
        list.setReturnValue(new ResultFilteringEnumeration((NamingEnumeration) list.getReturnValue(), new SearchControls(), (LdapContext) list.getContextStack().peek(), this.SEARCH_FILTER));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.apache.ldap.server.interceptor.BaseInterceptor
    public void process(NextInterceptor nextInterceptor, Search search) throws NamingException {
        nextInterceptor.process(search);
        SearchControls controls = search.getControls();
        if (controls.getReturningAttributes() != null) {
            return;
        }
        search.setReturnValue(new ResultFilteringEnumeration((NamingEnumeration) search.getReturnValue(), controls, (LdapContext) search.getContextStack().peek(), this.SEARCH_FILTER));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean filter(Attributes attributes) throws NamingException {
        NamingEnumeration iDs = attributes.getIDs();
        while (iDs.hasMore()) {
            String str = (String) iDs.next();
            AttributeType lookup = this.registry.hasAttributeType(str) ? this.registry.lookup(str) : null;
            if (lookup != null && lookup.getUsage() != UsageEnum.USERAPPLICATIONS) {
                attributes.remove(str);
            }
        }
        return true;
    }

    private void filter(Name name, Attributes attributes, String[] strArr) throws NamingException {
        if (strArr == null) {
            filter(attributes);
        } else if (name.size() == 0) {
            HashSet hashSet = new HashSet(strArr.length);
            for (String str : strArr) {
                hashSet.add(str.toLowerCase());
            }
            NamingEnumeration iDs = attributes.getIDs();
            while (iDs.hasMore()) {
                String lowerCase = ((String) iDs.nextElement()).toLowerCase();
                if (!hashSet.contains(lowerCase)) {
                    attributes.remove(lowerCase);
                }
            }
        }
    }
}
